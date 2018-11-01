package com.csw.controller;

import com.csw.dao.MCategoryMapper;
import com.csw.entity.MCategory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/cat")
public class MCategoryController {

    @Autowired
    private MCategoryMapper mCategoryMapper;

    @RequestMapping(method = RequestMethod.GET)
    public String selectAll(Model model){
        List<MCategory> mCategories = mCategoryMapper.selectAll();
        model.addAttribute(mCategories);
        return "/index";
    }
}
