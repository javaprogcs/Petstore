package com.csw.controller;

import com.csw.dao.MOrderMapper;
import com.csw.entity.MOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class MOrderController {

    @Autowired
    private MOrderMapper mOrderMapper;

    @RequestMapping(value="/mOrder",method = RequestMethod.GET)
    public String selectAll(Model model){
        List<MOrder> mOrders = mOrderMapper.selectAll();
        model.addAttribute(mOrders);
        return "/index";
     }
}
