package com.csw.dao;

import com.csw.entity.ApiResponse;
import com.csw.entity.MPet;
import java.util.List;

public interface MPetMapper {
    int insert(List<MPet> list); //将宠物添加到商店

    List<MPet> selectAll(); // 查询宠物信息

    int updateByPrimaryKey(int id); // 更新宠物信息

    int deleteByPrimaryKey(int id); // 删除宠物

    List<MPet> selectId(int id);


}