package org.edu.service;
/**
 * MemberServiceImpl는  DAO메서드 호출을 구현
 * @author gmlxk
 *
 */

import java.util.List;

import javax.inject.Inject;

import org.edu.dao.IF_MemberDAO;
import org.edu.vo.MemberVO;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements IF_MemberService {
	
	@Inject
	IF_MemberDAO memberDAO;
	
	
	@Override
	public List<MemberVO> selectMember() throws Exception {
		// 회원정보 조회 DAO클래스의 메서드호출(아래)
		return memberDAO.selectMember();
	}


	@Override
	public void insertMember(MemberVO memberVO) throws Exception {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void deleteMember(String user_id) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
