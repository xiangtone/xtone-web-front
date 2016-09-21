package com.mxjh2.info;

public class Orderinfo {
private long phoneNum;
private int codeNum;
private long invitePhoneNum;
private long addTime;
private String gift;
private String openId;
private String qq;
public String getOpenId() {
	return openId;
}
public void setOpenId(String openId) {
	this.openId = openId;
}
public String getGift() {
	return gift;
}
public void setGift(String gift) {
	this.gift = gift;
}
public long getPhoneNum() {
	return phoneNum;
}
public void setPhoneNum(long phoneNum) {
	this.phoneNum = phoneNum;
}
public int getCodeNum() {
	return codeNum;
}
public long getAddTime() {
	return addTime;
}
public void setAddTime(long addTime) {
	this.addTime = addTime;
}
public void setCodeNum(int codeNum) {
	this.codeNum = codeNum;
}
public long getInvitePhoneNum() {
	return invitePhoneNum;
}
public void setInvitePhoneNum(long invitePhoneNum) {
	this.invitePhoneNum = invitePhoneNum;
}
public String getQq() {
	return qq;
}
public void setQq(String qq) {
	this.qq = qq;
}
}
