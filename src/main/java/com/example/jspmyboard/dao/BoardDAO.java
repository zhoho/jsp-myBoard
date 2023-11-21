package com.example.jspmyboard.dao;

import com.example.jspmyboard.util.JDBCUtil;
import com.example.jspmyboard.vo.BoardVO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.script.Invocable;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

public class BoardDAO {
	
	static Connection conn = null;
	static PreparedStatement stmt = null;
	static ResultSet rs = null;

	private static final String BOARD_INSERT = "insert into BOARD (title, writer, mbti, content, photo) values (?,?,?,?,?)";
	private static final String BOARD_UPDATE = "update BOARD set title=?, writer=?, mbti=?, content=?, photo=? where seq=?";
	private static final String BOARD_DELETE = "delete from BOARD  where seq=?";
	private static final String BOARD_GET = "select * from BOARD  where seq=?";
	private static final String BOARD_LIST = "select * from BOARD order by seq desc";
	private static final String BOARD_SELECT_BY_ID = "select * from BOARD where seq=?";

	private static final String JS_FILE_PATH = "src/main/webapp/handongBTI/js/start.js";



	public int insertBoard(BoardVO vo) {
		System.out.println("===> JDBC로 insertBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_INSERT);
			stmt.setString(1, vo.getTitle());
			stmt.setString(2, vo.getWriter());
			stmt.setString(3, vo.getMbti());
			stmt.setString(4, vo.getContent());
			stmt.setString(5, vo.getPhoto());
			stmt.executeUpdate();
			callJavaScriptFunction();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	// 글 삭제
	public void deleteBoard(int vo) {
		System.out.println("===> JDBC로 deleteBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_DELETE);
			stmt.setInt(1, vo);
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static String getPhotoFilename(int sid) {
		String filename = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_SELECT_BY_ID);
			stmt.setInt(1, sid);
			rs = stmt.executeQuery();
			if(rs.next()) {
				filename = rs.getString("photo");
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("기능처리");
		return filename;
	}
	public static int updateBoard(BoardVO vo) {
		System.out.println("===> JDBC로 updateBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_UPDATE);
			stmt.setString(1, vo.getTitle());
			stmt.setString(2, vo.getWriter());
			stmt.setString(3, vo.getMbti());
			stmt.setString(4, vo.getContent());
			stmt.setString(5, vo.getPhoto());
			stmt.setInt(6, vo.getSeq());
			
			
//			System.out.println(vo.getTitle() + "-" + vo.getWriter() + "-" + vo.getMbti() + "-" + vo.getContent() + "-" + vo.getSeq());
			stmt.executeUpdate();
			return 1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}	
	
	public BoardVO getBoard(int seq) {
		BoardVO one = new BoardVO();
		System.out.println("===> JDBC로 getBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_GET);
			stmt.setInt(1, seq);
			rs = stmt.executeQuery();
			if(rs.next()) {
				one.setSeq(rs.getInt("seq"));
				one.setTitle(rs.getString("title"));
				one.setWriter(rs.getString("writer"));
				one.setMbti(rs.getString("mbti"));
				one.setContent(rs.getString("content"));
				one.setPhoto(rs.getString("photo"));
				one.setCnt(rs.getInt("cnt"));
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return one;
	}
	
	public List<BoardVO> getBoardList(){
		List<BoardVO> list = new ArrayList<BoardVO>();
		System.out.println("===> JDBC로 getBoardList() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_LIST);
			rs = stmt.executeQuery();
			while(rs.next()) {
				BoardVO one = new BoardVO();
				one.setSeq(rs.getInt("seq"));
				one.setTitle(rs.getString("title"));
				one.setWriter(rs.getString("writer"));
				one.setContent(rs.getString("content"));
				one.setRegdate(rs.getDate("regdate"));
				one.setCnt(rs.getInt("cnt"));
				one.setMbti(rs.getString("mbti"));
				one.setPhoto(rs.getString("photo"));
				list.add(one);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return list;
	}
	private void callJavaScriptFunction() {
		try {
			ScriptEngineManager manager = new ScriptEngineManager();
			ScriptEngine engine = manager.getEngineByName("javascript");

			// Load the JavaScript file
			engine.eval("load('" + JS_FILE_PATH + "')");

			if (engine instanceof Invocable) {
				Invocable invocable = (Invocable) engine;

				invocable.invokeFunction("getTheImageUrl");
			} else {
				System.out.println("This engine does not support function invocation.");
			}
		} catch (ScriptException | NoSuchMethodException e) {
			e.printStackTrace();
		}
	}
}
