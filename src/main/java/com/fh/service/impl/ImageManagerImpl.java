package com.fh.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fh.dao.ImageMapper;
import com.fh.entity.Image;
import com.fh.service.ImageManager;

/**
 * 
 * Application: 万事屋后台管理系统<br/>
 * Description: <br/>
 * Copyright: Copyright (c) 2016 万事屋工作室<br/>
 * Create Date：2017年7月27日<br/>
 * 
 * @Author zhangpingan
 * @Version 1.0
 *
 */
@Service
public class ImageManagerImpl implements ImageManager{
	
	@Autowired
	private ImageMapper imageMapper;
	
	public int insert(Image image){
		return imageMapper.insert(image);
	}
	
}
