package com.ph.message.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.ph.message.model.dao.MessageDAO;
import com.ph.message.model.vo.Message;

public class MessageService {
	
	public List<Message> receiverMessageList(String userId, int cPage, int numPerPage) {
		Connection conn=getConnection();
		List<Message> list=new MessageDAO().receiverMessageList(conn, userId, cPage, numPerPage);
		close(conn);
		return list;
	}
	
	public int selectMessageCount() {
		Connection conn=getConnection();
		int result=new MessageDAO().selectBoardCount(conn);
		close(conn);
		return result;
	}

}
