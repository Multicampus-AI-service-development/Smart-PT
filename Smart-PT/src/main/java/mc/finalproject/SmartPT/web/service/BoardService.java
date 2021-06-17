package mc.finalproject.SmartPT.web.service;

import java.awt.List;
import java.util.ArrayList;
import java.util.zip.DataFormatException;

import mc.finalproject.SmartPT.board.vo.BoardVO;
import mc.finalproject.SmartPT.user.vo.UserVO;

public interface BoardService {

	//게시판
	public void boardInsert(BoardVO vo)throws DataFormatException; //C
	public ArrayList<BoardVO> boardList()throws DataFormatException; //R(게시판 목록)
	public BoardVO boardSelect(int number)throws DataFormatException; //R(특정 게시판 내용 가져오기)
	public void boardUpdate(BoardVO vo)throws DataFormatException; //U
	public void boardDelete(int number)throws DataFormatException;//D
	
	//각 게시글 별 댓글 CRUD
}
