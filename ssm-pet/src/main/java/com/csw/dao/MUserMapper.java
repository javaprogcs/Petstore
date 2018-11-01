package com.csw.dao;

import com.csw.entity.MUser;
import java.util.List;

public interface MUserMapper {
    int insert(MUser record);

    List<MUser> selectAll();
}