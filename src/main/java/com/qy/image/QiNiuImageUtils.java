package com.qy.image;

import com.google.gson.Gson;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;

/**
 * 
 * Application: 万事屋后台管理系统<br/>
 * Description: 七牛图片处理工具类<br/>
 * Copyright: Copyright (c) 2016 万事屋工作室<br/>
 * Create Date：2017年7月27日<br/>
 * 
 * @Author zhangpingan
 * @Version 1.0
 *
 */
public class QiNiuImageUtils {
	
	public static void main(String[] args) {
		uploadImage();
	}

	public static void uploadImage() {
		// 构造一个带指定Zone对象的配置类
		Configuration cfg = new Configuration(Zone.zone0());
		// ...其他参数参考类注释

		UploadManager uploadManager = new UploadManager(cfg);
		// ...生成上传凭证，然后准备上传

		String accessKey = "NpQuKcWLAqkh5sIbiAu3eVfczjXKJj5OM7k_Vp6d";
		String secretKey = "0M3efST6V6QEbFxOjtDLuZ4u1rlZxT2XyhKiyl7N";
		String bucket = "sh-wsw";
		// 如果是Windows情况下，格式是 D:\\qiniu\\test.png
		String localFilePath = "/Users/jiaqiang/java/WechatIMG18.jpeg";
		// 默认不指定key的情况下，以文件内容的hash值作为文件名
		String key = null;
		Auth auth = Auth.create(accessKey, secretKey);
		String upToken = auth.uploadToken(bucket);
		try {
			Response response = uploadManager.put(localFilePath, key, upToken);
			// 解析上传成功的结果
			DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
			System.out.println(putRet.key);
			System.out.println(putRet.hash);
		} catch (QiniuException ex) {
			Response r = ex.response;
			System.err.println(r.toString());
			try {
				System.err.println(r.bodyString());
			} catch (QiniuException ex2) {
				// ignore
			}

		}
	}

}
