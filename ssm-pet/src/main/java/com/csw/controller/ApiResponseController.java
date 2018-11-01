package com.csw.controller;

import com.csw.dao.ApiResponseMapper;
import com.csw.entity.ApiResponse;
import com.csw.entity.MPet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/pet")
public class ApiResponseController {

    @Autowired
    private ApiResponseMapper apiResponseMapper;

    @RequestMapping(method = RequestMethod.GET)
    public String selectAll(Model model){
        List<ApiResponse> apiResponses = apiResponseMapper.selectAll();
        model.addAttribute("apiResponses",apiResponses);
        return  "index";
    }
}
