package com.csw.dao;

import com.csw.entity.MTag;
import java.util.List;

public interface MTagMapper {
    int insert(MTag record);

    List<MTag> selectAll();
}