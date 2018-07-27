package com.ph.infoBoard.model.service;

import java.sql.Connection;
import java.util.List;

import com.ph.infoBoard.model.dao.InfoBoardDAO;
import com.ph.infoBoard.model.vo.InfoBoard;
import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

public class InfoBoardService {

	public int insertInfoBoard(InfoBoard ib) {
		Connection conn = getConnection();
		int result = new InfoBoardDAO().insertInfoBoard(ib,conn);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		return result;
	}

	public List<InfoBoard> selectInfoBoardList(int cPage, int numPerPage) {
		Connection conn = getConnection();
		List<InfoBoard> list = new InfoBoardDAO().selectInfoBoardList(conn, cPage, numPerPage);
		close(conn);
		return list;
	}

	public int selectInfoBoardCount() {
		Connection conn = getConnection();
		int result = new InfoBoardDAO().selectInfoBoardCount(conn);
		close(conn);
		return result;
	}

}
