package com.fh.dao;

import org.springframework.stereotype.Repository;

import com.fh.entity.Image;

@Repository
public interface ImageMapper {
    int deleteByPrimaryKey(String imageId);

    int insert(Image record);

    int insertSelective(Image record);

    Image selectByPrimaryKey(String imageId);

    int updateByPrimaryKeySelective(Image record);

    int updateByPrimaryKey(Image record);
}