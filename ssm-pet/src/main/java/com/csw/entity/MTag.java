package com.csw.entity;

public class MTag {
    private Integer id;

    private Integer tags_id;

    private String name;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTags_id() {
        return tags_id;
    }

    public void setTags_id(Integer tags_id) {
        this.tags_id = tags_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }
}