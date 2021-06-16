package mc.finalproject.SmartPT.web.service;

import java.util.ArrayList;
import java.util.zip.DataFormatException;

import org.springframework.stereotype.Service;

import mc.finalproject.SmartPT.board.vo.BoardVO;

@Service
public class WEBServiceImpl implements WEBService {

	@Override
	public void login() {
		// TODO Auto-generated method stub
		System.out.println("로그인 완료");
		
	}

	
	//게시판 서비스
	//Create
	@Override
	public void boardInsert(BoardVO vo) throws DataFormatException {
		// TODO Auto-generated method stub
		
	}
	//Read(게사판 목록) 
	@Override
	public ArrayList<BoardVO> boardList() throws DataFormatException {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	//Read(게시글) 
	@Override
	public BoardVO boardSelect(int number) throws DataFormatException {
		// TODO Auto-generated method stub
		return null;
	}
	//Update
	@Override
	public void boardUpdate(BoardVO vo) throws DataFormatException {
		// TODO Auto-generated method stub
		
	}
	//Delete
	@Override
	public void boardDelete(int number) throws DataFormatException {
		// TODO Auto-generated method stub
		
	}


	
	
	

}
