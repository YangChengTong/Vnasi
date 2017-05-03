package com.vnasi.pojo;

public class VnasiReview {
    private Integer rOid;

    private String epName;

    private String epFileName;

    private Integer rReview;

    private String rContent;

    public Integer getrOid() {
        return rOid;
    }

    public void setrOid(Integer rOid) {
        this.rOid = rOid;
    }

    public String getEpName() {
        return epName;
    }

    public void setEpName(String epName) {
        this.epName = epName == null ? null : epName.trim();
    }

    public String getEpFileName() {
        return epFileName;
    }

    public void setEpFileName(String epFileName) {
        this.epFileName = epFileName == null ? null : epFileName.trim();
    }

    public Integer getrReview() {
        return rReview;
    }

    public void setrReview(Integer rReview) {
        this.rReview = rReview;
    }

    public String getrContent() {
        return rContent;
    }

    public void setrContent(String rContent) {
        this.rContent = rContent == null ? null : rContent.trim();
    }
}