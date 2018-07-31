package com.ph.board.lost.model.vo;

import java.sql.Date;

public class LostBoard {
	
	private int lostBoardNum;
	private String lostBoardTitle;
	private String lostBoardContent;
	private String lostBoardId;
	private Date lostBoardDate;
	private int lostBoardHits;
	private int lostBoardGood;
	/*private String lostBoardImageOrigin;
	private String lostBoardImageRename;*/
	private String lostBoardArea;
	private String lostBoardPhone;
	private String lostBoardType;
	private String thumbnail;
	
	public LostBoard() {}
	public LostBoard(String lostBoardTitle, String lostBoardContent, String lostBoardId, 
			String lostBoardArea, String lostBoardPhone, String lostBoardType) {
		this.lostBoardTitle = lostBoardTitle;
		this.lostBoardContent = lostBoardContent;
		this.lostBoardId = lostBoardId;
		this.lostBoardArea = lostBoardArea;
		this.lostBoardPhone = lostBoardPhone;
		this.lostBoardType = lostBoardType;
	}

	public LostBoard(int lostBoardNum, String lostBoardTitle, String lostBoardContent, String lostBoardId,
			Date lostBoardDate, int lostBoardHits, int lostBoardGood,
			String lostBoardArea, String lostBoardPhone, String lostBoardType, String thumbnail) {
		super();
		this.lostBoardNum = lostBoardNum;
		this.lostBoardTitle = lostBoardTitle;
		this.lostBoardContent = lostBoardContent;
		this.lostBoardId = lostBoardId;
		this.lostBoardDate = lostBoardDate;
		this.lostBoardHits = lostBoardHits;
		this.lostBoardGood = lostBoardGood;
		this.lostBoardArea = lostBoardArea;
		this.lostBoardPhone = lostBoardPhone;
		this.lostBoardType = lostBoardType;
		this.thumbnail = thumbnail;
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

	public String getLostBoardId() {
		return lostBoardId;
	}

	public void setLostBoardId(String lostBoardNick) {
		this.lostBoardId = lostBoardNick;
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
	
	public String getThumbnail() {
		return thumbnail;
	}
	
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	@Override
	public String toString() {
		return "LostBoard [lostBoardNum=" + lostBoardNum + ", lostBoardTitle=" + lostBoardTitle + ", lostBoardContent="
				+ lostBoardContent + ", lostBoardNick=" + lostBoardId + ", lostBoardDate=" + lostBoardDate
				+ ", lostBoardHits=" + lostBoardHits + ", lostBoardGood=" + lostBoardGood + ", lostBoardArea="
				+ lostBoardArea + ", lostBoardPhone=" + lostBoardPhone + ", lostBoardType=" + lostBoardType 
				+ ", thumbnail=" + thumbnail + "]";
	}
	
	

}
