package com.csw.controller;

import com.csw.dao.MUserMapper;
import com.csw.entity.MUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;


@Controller
@RequestMapping("/User")
public class MUserController {

    @Autowired
    private MUserMapper mUserMapper;

    @RequestMapping(method = RequestMethod.GET)
    public String selectAll(Model model){
        List<MUser> mUsers = mUserMapper.selectAll();
        model.addAttribute(mUsers);
        return "/index";
    }
}
