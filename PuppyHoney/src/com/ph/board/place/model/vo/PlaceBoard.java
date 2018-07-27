package com.ph.board.place.model.vo;

import java.sql.Date;

public class PlaceBoard {
	private int plBoardNum;
	private String plBoardTitle;
	private String plBoardContent;
	private String plBoardId;
	private Date plBoardDate;
	private int plBoardHits;
	private int plBoardGood;
	private String plBoardImgOrigin;
	private String plBoardImgRename;
	private String plBoardArea;
	private String plBoardDogSize;
	private String plBoardBusinessType;
	private String plBoardStoreName;
	private String plBoardTime;
	private String plBoardPhone;
	private String plBoardAddr;
	
	public PlaceBoard() {}

	public PlaceBoard(int plBoardNum, String plBoardTitle, String plBoardContent, String plBoardId, Date plBoardDate,
			int plBoardHits, int plBoardGood, String plBoardImgOrigin, String plBoardImgRename, String plBoardArea,
			String plBoardDogSize, String plBoardBusinessType, String plBoardStoreName, String plBoardTime,
			String plBoardPhone, String plBoardAddr) {
		super();
		this.plBoardNum = plBoardNum;
		this.plBoardTitle = plBoardTitle;
		this.plBoardContent = plBoardContent;
		this.plBoardId = plBoardId;
		this.plBoardDate = plBoardDate;
		this.plBoardHits = plBoardHits;
		this.plBoardGood = plBoardGood;
		this.plBoardImgOrigin = plBoardImgOrigin;
		this.plBoardImgRename = plBoardImgRename;
		this.plBoardArea = plBoardArea;
		this.plBoardDogSize = plBoardDogSize;
		this.plBoardBusinessType = plBoardBusinessType;
		this.plBoardStoreName = plBoardStoreName;
		this.plBoardTime = plBoardTime;
		this.plBoardPhone = plBoardPhone;
		this.plBoardAddr = plBoardAddr;
	}

	public int getPlBoardNum() {
		return plBoardNum;
	}

	public void setPlBoardNum(int plBoardNum) {
		this.plBoardNum = plBoardNum;
	}

	public String getPlBoardTitle() {
		return plBoardTitle;
	}

	public void setPlBoardTitle(String plBoardTitle) {
		this.plBoardTitle = plBoardTitle;
	}

	public String getPlBoardContent() {
		return plBoardContent;
	}

	public void setPlBoardContent(String plBoardContent) {
		this.plBoardContent = plBoardContent;
	}

	public String getPlBoardId() {
		return plBoardId;
	}

	public void setPlBoardId(String plBoardId) {
		this.plBoardId = plBoardId;
	}

	public Date getPlBoardDate() {
		return plBoardDate;
	}

	public void setPlBoardDate(Date plBoardDate) {
		this.plBoardDate = plBoardDate;
	}

	public int getPlBoardHits() {
		return plBoardHits;
	}

	public void setPlBoardHits(int plBoardHits) {
		this.plBoardHits = plBoardHits;
	}

	public int getPlBoardGood() {
		return plBoardGood;
	}

	public void setPlBoardGood(int plBoardGood) {
		this.plBoardGood = plBoardGood;
	}

	public String getPlBoardImgOrigin() {
		return plBoardImgOrigin;
	}

	public void setPlBoardImgOrigin(String plBoardImgOrigin) {
		this.plBoardImgOrigin = plBoardImgOrigin;
	}

	public String getPlBoardImgRename() {
		return plBoardImgRename;
	}

	public void setPlBoardImgRename(String plBoardImgRename) {
		this.plBoardImgRename = plBoardImgRename;
	}

	public String getPlBoardArea() {
		return plBoardArea;
	}

	public void setPlBoardArea(String plBoardArea) {
		this.plBoardArea = plBoardArea;
	}

	public String getPlBoardDogSize() {
		return plBoardDogSize;
	}

	public void setPlBoardDogSize(String plBoardDogSize) {
		this.plBoardDogSize = plBoardDogSize;
	}

	public String getPlBoardBusinessType() {
		return plBoardBusinessType;
	}

	public void setPlBoardBusinessType(String plBoardBusinessType) {
		this.plBoardBusinessType = plBoardBusinessType;
	}

	public String getPlBoardStoreName() {
		return plBoardStoreName;
	}

	public void setPlBoardStoreName(String plBoardStoreName) {
		this.plBoardStoreName = plBoardStoreName;
	}

	public String getPlBoardTime() {
		return plBoardTime;
	}

	public void setPlBoardTime(String plBoardTime) {
		this.plBoardTime = plBoardTime;
	}

	public String getPlBoardPhone() {
		return plBoardPhone;
	}

	public void setPlBoardPhone(String plBoardPhone) {
		this.plBoardPhone = plBoardPhone;
	}

	public String getPlBoardAddr() {
		return plBoardAddr;
	}

	public void setPlBoardAddr(String plBoardAddr) {
		this.plBoardAddr = plBoardAddr;
	}
	
}
