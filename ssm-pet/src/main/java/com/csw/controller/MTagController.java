package com.csw.controller;

import com.csw.dao.MTagMapper;
import com.csw.entity.MTag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class MTagController {

    @Autowired
    private MTagMapper mTagMapper;

    @RequestMapping(method = RequestMethod.GET)
    public String selectAll(Model model){
        List<MTag> mTags = mTagMapper.selectAll();
        model.addAttribute(mTags);
        return  "/index";
    }
}
