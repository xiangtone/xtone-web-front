package org.mxkl.bean;

public class Newsbean {
	private int id;
	private String catalog;
	private String title;
	private String content;
	private int status;
	private long authorId;
	private long addTime;
	private long lastModifyId;
	private long lastModifyTime;
	private String subTitle;
	private int priority;
	public String getSubTitle() {
		return subTitle;
	}
	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}
	public int getPriority() {
		return priority;
	}
	public void setPriority(int priority) {
		this.priority = priority;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCatalog() {
		return catalog;
	}
	public void setCatalog(String catalog) {
		this.catalog = catalog;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public long getAuthorId() {
		return authorId;
	}
	public void setAuthorId(long authorId) {
		this.authorId = authorId;
	}
	public long getAddTime() {
		return addTime;
	}
	public void setAddTime(long addTime) {
		this.addTime = addTime;
	}
	public long getLastModifyId() {
		return lastModifyId;
	}
	public void setLastModifyId(long lastModifyId) {
		this.lastModifyId = lastModifyId;
	}
	public long getLastModifyTime() {
		return lastModifyTime;
	}
	public void setLastModifyTime(long lastModifyTime) {
		this.lastModifyTime = lastModifyTime;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	private int count;
}
