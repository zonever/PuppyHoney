package com.ph.board.place.model.vo;

import java.sql.Date;

public class PlaceBoardComment {
	private int plBoardReplyNo;	//�뙎湲�踰덊샇
	private int plBoardRef;	//遺�紐④쾶�떆臾� 踰덊샇
	private String plBoardReplyId;
	private Date plBoardReplyDate;
	private String plBoardReplyContent;
	private String plBoardReplyGood;
	private String plBoardReplyLevel; 
	private String plBoardReplyRef;	//遺�紐⑤뙎湲�踰덊샇 
	private String plBoardReplyImgOrigin;
	private String plBoardReplyImgRename;
	
	public PlaceBoardComment() {}

	public PlaceBoardComment(int plBoardReplyNo, int plBoardRef, String plBoardReplyId, Date plBoardReplyDate,
			String plBoardReplyContent, String plBoardReplyGood, String plBoardReplyLevel, String plBoardReplyRef,
			String plBoardReplyImgOrigin, String plBoardReplyImgRename) {
		super();
		this.plBoardReplyNo = plBoardReplyNo;
		this.plBoardRef = plBoardRef;
		this.plBoardReplyId = plBoardReplyId;
		this.plBoardReplyDate = plBoardReplyDate;
		this.plBoardReplyContent = plBoardReplyContent;
		this.plBoardReplyGood = plBoardReplyGood;
		this.plBoardReplyLevel = plBoardReplyLevel;
		this.plBoardReplyRef = plBoardReplyRef;
		this.plBoardReplyImgOrigin = plBoardReplyImgOrigin;
		this.plBoardReplyImgRename = plBoardReplyImgRename;
	}

	public int getPlBoardReplyNo() {
		return plBoardReplyNo;
	}

	public void setPlBoardReplyNo(int plBoardReplyNo) {
		this.plBoardReplyNo = plBoardReplyNo;
	}

	public int getPlBoardRef() {
		return plBoardRef;
	}

	public void setPlBoardRef(int plBoardRef) {
		this.plBoardRef = plBoardRef;
	}

	public String getPlBoardReplyId() {
		return plBoardReplyId;
	}

	public void setPlBoardReplyId(String plBoardReplyId) {
		this.plBoardReplyId = plBoardReplyId;
	}

	public Date getPlBoardReplyDate() {
		return plBoardReplyDate;
	}

	public void setPlBoardReplyDate(Date plBoardReplyDate) {
		this.plBoardReplyDate = plBoardReplyDate;
	}

	public String getPlBoardReplyContent() {
		return plBoardReplyContent;
	}

	public void setPlBoardReplyContent(String plBoardReplyContent) {
		this.plBoardReplyContent = plBoardReplyContent;
	}

	public String getPlBoardReplyGood() {
		return plBoardReplyGood;
	}

	public void setPlBoardReplyGood(String plBoardReplyGood) {
		this.plBoardReplyGood = plBoardReplyGood;
	}

	public String getPlBoardReplyLevel() {
		return plBoardReplyLevel;
	}

	public void setPlBoardReplyLevel(String plBoardReplyLevel) {
		this.plBoardReplyLevel = plBoardReplyLevel;
	}

	public String getPlBoardReplyRef() {
		return plBoardReplyRef;
	}

	public void setPlBoardReplyRef(String plBoardReplyRef) {
		this.plBoardReplyRef = plBoardReplyRef;
	}

	public String getPlBoardReplyImgOrigin() {
		return plBoardReplyImgOrigin;
	}

	public void setPlBoardReplyImgOrigin(String plBoardReplyImgOrigin) {
		this.plBoardReplyImgOrigin = plBoardReplyImgOrigin;
	}

	public String getPlBoardReplyImgRename() {
		return plBoardReplyImgRename;
	}

	public void setPlBoardReplyImgRename(String plBoardReplyImgRename) {
		this.plBoardReplyImgRename = plBoardReplyImgRename;
	}
	
}
