package com.csw.controller;

import com.csw.dao.MPetMapper;
import com.csw.entity.MPet;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
        return "pet";
    }

    @RequestMapping(value="/del/{id}",method = RequestMethod.GET)
    public String delete(@PathVariable("id")int id){
        mPetMapper.deleteByPrimaryKey(id);
        return "redirect:/pet";
    }

    @RequestMapping(value = "/update/{id}",method = RequestMethod.GET)
    public String update(@PathVariable("id")int id){
        mPetMapper.updateByPrimaryKey(1);
        return "pet_insert_and_update";
    }

    //上传图片
    @PostMapping("/pet")
    public String image(@RequestPart("xxx") MultipartFile ufile, Model model, HttpServletRequest request){
        if (ufile.isEmpty()) {
            model.addAttribute("err","文件为空错误");
            return  "pet";
        }
        if (ufile.getSize() > 1024 * 1024 * 5) {
            model.addAttribute("err","文件大小不能超过5M");
            return  "pet";
        }
        if (!ufile.getContentType().contains("image/")) {
            model.addAttribute("err","只允许上传图片文件!");
            return  "pet";
        }

        try {
            String basePath = request.getServletContext().getRealPath("/img");
            File target = new File(makeImagePath(basePath, ufile.getOriginalFilename()));
            target.getParentFile().mkdir();
            ufile.transferTo(target);
        } catch (IOException e) {
            e.printStackTrace();
        }

        System.out.println("正常业务。。。。");
        return "pet";
    }

    public String makeImagePath(String basePath, String fileName) {
        Date now = new Date();
        String[] fileNames = splitFileString(fileName);
        return String.format("%s/%s/upload_%s_%s.%s",
                basePath,
                new SimpleDateFormat("yyyyMMdd").format(now),
                fileNames[0],
                new SimpleDateFormat("hhmmss").format(now),
                fileNames[1]
        );
    }

    public String[] splitFileString(String fileName) {
        int dotPos = fileName.lastIndexOf(".");
        String ext = fileName.substring(dotPos + 1);
        String name = fileName.substring(0, dotPos);
        return new String[]{name, ext};
    }


    /*---------------------------------------*/

    @RequestMapping(value="/pet/add",method = RequestMethod.POST )
    public String insert(@Valid List<MPet> list){
        int c = mPetMapper.insert(list);

        if(c > 0)
            return "{\"msg\":\"ok\"}";
        return "{\"msg\":\"no\"}";

    }




    //根据id查询
    @RequestMapping(path = "/pet1",method = RequestMethod.GET)
    public String selectId(@Param("id") int id, HttpSession session){
        List<MPet> mPets = mPetMapper.selectId(id);
        session.setAttribute("mPets",mPets);
        return "pet";
    }

}
