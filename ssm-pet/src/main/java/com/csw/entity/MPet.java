package com.csw.entity;

public class MPet {
    private Integer id;

    private Integer category_id;

    private String name;

    private String photo_urls;

    private Integer tags;

    private String status;

    public MPet(Integer id, Integer category_id, String name, String photo_urls, Integer tags, String status) {
        this.id = id;
        this.category_id = category_id;
        this.name = name;
        this.photo_urls = photo_urls;
        this.tags = tags;
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCategory_id() {
        return category_id;
    }

    public void setCategory_id(Integer category_id) {
        this.category_id = category_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPhoto_urls() {
        return photo_urls;
    }

    public void setPhoto_urls(String photo_urls) {
        this.photo_urls = photo_urls == null ? null : photo_urls.trim();
    }

    public Integer getTags() {
        return tags;
    }

    public void setTags(Integer tags) {
        this.tags = tags;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }
}