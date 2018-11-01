package com.csw.dao;

import com.csw.entity.ApiResponse;
import java.util.List;

public interface ApiResponseMapper {
    int deleteByPrimaryKey(Integer code);

    int insert(ApiResponse record);

    ApiResponse selectByPrimaryKey(Integer code);

    List<ApiResponse> selectAll();

    int updateByPrimaryKey(ApiResponse record);
}