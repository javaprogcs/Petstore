package com.csw.entity;

import java.util.Date;

public class MOrder {
    private Integer id;

    private Integer pet_id;

    private Integer quan_tity;

    private Date ship_Date;

    private String status;

    private byte[] complter;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPet_id() {
        return pet_id;
    }

    public void setPet_id(Integer pet_id) {
        this.pet_id = pet_id;
    }

    public Integer getQuan_tity() {
        return quan_tity;
    }

    public void setQuan_tity(Integer quan_tity) {
        this.quan_tity = quan_tity;
    }

    public Date getShip_Date() {
        return ship_Date;
    }

    public void setShip_Date(Date ship_Date) {
        this.ship_Date = ship_Date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public byte[] getComplter() {
        return complter;
    }

    public void setComplter(byte[] complter) {
        this.complter = complter;
    }
}