package com.sexking.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sexking.www.dao.BoardDAO;
import com.sexking.www.logic.Board;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDAO boardDAO;
	
	public List<Board> getBoardList() {
		
		return boardDAO.getBoardList();
	}

	@Override
	public int boardwrite(Board board) {
		return boardDAO.boardwrite(board);
	}

	@Override
	public int boardwrite2(Board board) {
		return boardDAO.boardwrite2(board);
	}

	@Override
	public Board getBoardDetail(int bbsID) {
		
		return boardDAO.getBoardDetail(bbsID);
	}
	@Override
	public Board getBoardDetail2(int bbsID) {
		
		return boardDAO.getBoardDetail2(bbsID);
	}
}
