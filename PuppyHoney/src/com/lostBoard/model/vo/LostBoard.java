package com.lostBoard.model.vo;

import java.sql.Date;

public class LostBoard {
	
	private int lostBoardNum;
	private String lostBoardTitle;
	private String lostBoardContent;
	private String lostBoardNick;
	private Date lostBoardDate;
	private int lostBoardHits;
	private int lostBoardGood;
	private String lostBoardImageOrigin;
	private String lostBoardImageRename;
	private String lostBoardArea;
	private String lostBoardPhone;
	private String lostBoardType;
	
	public LostBoard() {}

	public LostBoard(int lostBoardNum, String lostBoardTitle, String lostBoardContent, String lostBoardNick,
			Date lostBoardDate, int lostBoardHits, int lostBoardGood, String lostBoardImageOrigin,
			String lostBoardImageRename, String lostBoardArea, String lostBoardPhone, String lostBoardType) {
		super();
		this.lostBoardNum = lostBoardNum;
		this.lostBoardTitle = lostBoardTitle;
		this.lostBoardContent = lostBoardContent;
		this.lostBoardNick = lostBoardNick;
		this.lostBoardDate = lostBoardDate;
		this.lostBoardHits = lostBoardHits;
		this.lostBoardGood = lostBoardGood;
		this.lostBoardImageOrigin = lostBoardImageOrigin;
		this.lostBoardImageRename = lostBoardImageRename;
		this.lostBoardArea = lostBoardArea;
		this.lostBoardPhone = lostBoardPhone;
		this.lostBoardType = lostBoardType;
	}

	public int getLostBoardNum() {
		return lostBoardNum;
	}

	public void setLostBoardNum(int lostBoardNum) {
		this.lostBoardNum = lostBoardNum;
	}

	public String getLostBoardTitle() {
		return lostBoardTitle;
	}

	public void setLostBoardTitle(String lostBoardTitle) {
		this.lostBoardTitle = lostBoardTitle;
	}

	public String getLostBoardContent() {
		return lostBoardContent;
	}

	public void setLostBoardContent(String lostBoardContent) {
		this.lostBoardContent = lostBoardContent;
	}

	public String getLostBoardNick() {
		return lostBoardNick;
	}

	public void setLostBoardNick(String lostBoardNick) {
		this.lostBoardNick = lostBoardNick;
	}

	public Date getLostBoardDate() {
		return lostBoardDate;
	}

	public void setLostBoardDate(Date lostBoardDate) {
		this.lostBoardDate = lostBoardDate;
	}

	public int getLostBoardHits() {
		return lostBoardHits;
	}

	public void setLostBoardHits(int lostBoardHits) {
		this.lostBoardHits = lostBoardHits;
	}

	public int getLostBoardGood() {
		return lostBoardGood;
	}

	public void setLostBoardGood(int lostBoardGood) {
		this.lostBoardGood = lostBoardGood;
	}

	public String getLostBoardImageOrigin() {
		return lostBoardImageOrigin;
	}

	public void setLostBoardImageOrigin(String lostBoardImageOrigin) {
		this.lostBoardImageOrigin = lostBoardImageOrigin;
	}

	public String getLostBoardImageRename() {
		return lostBoardImageRename;
	}

	public void setLostBoardImageRename(String lostBoardImageRename) {
		this.lostBoardImageRename = lostBoardImageRename;
	}

	public String getLostBoardArea() {
		return lostBoardArea;
	}

	public void setLostBoardArea(String lostBoardArea) {
		this.lostBoardArea = lostBoardArea;
	}

	public String getLostBoardPhone() {
		return lostBoardPhone;
	}

	public void setLostBoardPhone(String lostBoardPhone) {
		this.lostBoardPhone = lostBoardPhone;
	}

	public String getLostBoardType() {
		return lostBoardType;
	}

	public void setLostBoardType(String lostBoardType) {
		this.lostBoardType = lostBoardType;
	}

	@Override
	public String toString() {
		return "LostBoard [lostBoardNum=" + lostBoardNum + ", lostBoardTitle=" + lostBoardTitle + ", lostBoardContent="
				+ lostBoardContent + ", lostBoardNick=" + lostBoardNick + ", lostBoardDate=" + lostBoardDate
				+ ", lostBoardHits=" + lostBoardHits + ", lostBoardGood=" + lostBoardGood + ", lostBoardImageOrigin="
				+ lostBoardImageOrigin + ", lostBoardImageRename=" + lostBoardImageRename + ", lostBoardArea="
				+ lostBoardArea + ", lostBoardPhone=" + lostBoardPhone + ", lostBoardType=" + lostBoardType + "]";
	}
	
	

}
