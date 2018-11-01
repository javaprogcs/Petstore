package com.csw.controller;

import com.csw.dao.MPetMapper;
import com.csw.entity.MPet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/pet")
public class PetController {

    @Autowired
    private MPetMapper mPetMapper;

    @RequestMapping(method = RequestMethod.GET)
    public String selectAll(Model model){
        List<MPet> mPets = mPetMapper.selectAll();
        model.addAttribute("mPets",mPets);
        return  "index";
    }

    @RequestMapping(method = RequestMethod.POST,produces = "application/json" )
    @ResponseBody
    public String add(@RequestBody List<MPet> list){
        int c = mPetMapper.insert(new MPet());

        if(c > 0)
            return "{\"msg\":\"ok\"}";
        return "{\"msg\":\"no\"}";

    }

    @RequestMapping(value = "/update/{id}",method = RequestMethod.GET)
    public String updatepet(@PathVariable("id")int id){
        mPetMapper.updateByPrimaryKey(id);
        return "redirect:/";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String delete(@PathVariable("id")int id){
        mPetMapper.deleteByPrimaryKey(id);
        return "redirect:/";
    }

    @RequestMapping(method = RequestMethod.GET)
    public String selectId(@PathVariable("id")int id){
        mPetMapper.selectId(id);
        return "redirect:/";
    }

}
