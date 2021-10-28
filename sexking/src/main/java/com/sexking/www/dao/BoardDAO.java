package com.sexking.www.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sexking.www.logic.Board;

@Repository
public class BoardDAO {
	
	@Autowired
	public SqlSession sqlSession;
	
	public List<Board> getBoardList() {
		
		return sqlSession.selectList("getBoardList");
	}
	public List<Board> getBoardList2() {
		
		return sqlSession.selectList("getBoardList");
		
	}

	public int boardwrite(Board board) {
		return sqlSession.insert("boardwrite",board);
	}
	public int boardwrite2(Board board) {
		return sqlSession.insert("boardwrite",board);
	}

	public Board getBoardDetail(int bbsID) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("bbsID", bbsID);
		return sqlSession.selectOne("getBoardDetail",map);
	}
	public Board getBoardDetail2(int bbsID) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("bbsID", bbsID);
		return sqlSession.selectOne("getBoardDetail",map);
	}
	
	public int boardDelete (int bbsID) {
		
		return sqlSession.delete("boardDelete", bbsID);
	}
	public int boardUpdate (Board board) {
		return sqlSession.update("boardUpdate", board);
	}
}
