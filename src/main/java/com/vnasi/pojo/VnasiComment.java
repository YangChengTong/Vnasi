package com.vnasi.pojo;

public class VnasiComment {
    private Integer ecId;

    private String ecContent;

    private String ecCreateTime;

    private String ecReply;

    private String ecReplyTime;

    private String ecNickName;

    public Integer getEcId() {
        return ecId;
    }

    public void setEcId(Integer ecId) {
        this.ecId = ecId;
    }

    public String getEcContent() {
        return ecContent;
    }

    public void setEcContent(String ecContent) {
        this.ecContent = ecContent == null ? null : ecContent.trim();
    }

    public String getEcCreateTime() {
        return ecCreateTime;
    }

    public void setEcCreateTime(String ecCreateTime) {
        this.ecCreateTime = ecCreateTime == null ? null : ecCreateTime.trim();
    }

    public String getEcReply() {
        return ecReply;
    }

    public void setEcReply(String ecReply) {
        this.ecReply = ecReply == null ? null : ecReply.trim();
    }

    public String getEcReplyTime() {
        return ecReplyTime;
    }

    public void setEcReplyTime(String ecReplyTime) {
        this.ecReplyTime = ecReplyTime == null ? null : ecReplyTime.trim();
    }

    public String getEcNickName() {
        return ecNickName;
    }

    public void setEcNickName(String ecNickName) {
        this.ecNickName = ecNickName == null ? null : ecNickName.trim();
    }
}