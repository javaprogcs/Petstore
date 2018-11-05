package com.csw.controller;

import com.csw.dao.MPetMapper;
import com.csw.entity.MPet;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@ContextConfiguration(locations = "classpath:spring/spring-dao.xml")
public class PetControllerTest {

    @Autowired
    private MPetMapper mPetMapper;
    private List<MPet> list;

    @Test
    public void selectAll() {
        list= mPetMapper.selectAll();
        for (MPet mPet : list) {
            System.out.println(mPet.getName());
        }
    }

    @Test
    public void add() {
          int num =  mPetMapper.insert((List<MPet>) new MPet(1,1,"金毛","xxx",1,"待定"));
          System.out.println(num);
    }

    @Test
    public void updatepet() {


    }

    @Test
    public void delete() {
    }

    @Test
    public void selectId() {

    }
}