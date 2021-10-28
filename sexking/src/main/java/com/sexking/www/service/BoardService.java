package com.sexking.www.service;

import java.util.List;
import com.sexking.www.logic.Board;

public interface BoardService {
	List<Board> getBoardList();

	int boardwrite(Board board);
	int boardwrite2(Board board);

	Board getBoardDetail(int bbsID);
	Board getBoardDetail2(int bbsID);
}
