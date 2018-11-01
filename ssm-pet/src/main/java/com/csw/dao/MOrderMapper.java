package com.csw.dao;

import com.csw.entity.MOrder;
import java.util.List;

public interface MOrderMapper {
    int insert(MOrder record);

    int selectId(int orderId);

    int deleteId(int orderId);

    List<MOrder> selectAll();
}