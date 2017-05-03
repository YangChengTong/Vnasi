package com.vnasi.pojo;

public class VnasiNews {
    private Integer enId;

    private String enTitle;

    private String enContent;

    private String enCreateTime;

    public Integer getEnId() {
        return enId;
    }

    public void setEnId(Integer enId) {
        this.enId = enId;
    }

    public String getEnTitle() {
        return enTitle;
    }

    public void setEnTitle(String enTitle) {
        this.enTitle = enTitle == null ? null : enTitle.trim();
    }

    public String getEnContent() {
        return enContent;
    }

    public void setEnContent(String enContent) {
        this.enContent = enContent == null ? null : enContent.trim();
    }

    public String getEnCreateTime() {
        return enCreateTime;
    }

    public void setEnCreateTime(String enCreateTime) {
        this.enCreateTime = enCreateTime == null ? null : enCreateTime.trim();
    }
}