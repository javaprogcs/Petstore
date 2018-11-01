package com.csw.dao;

import com.csw.entity.MCategory;
import java.util.List;

public interface MCategoryMapper {
    int insert(MCategory record);

    List<MCategory> selectAll();
}