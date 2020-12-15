package org.edu.service;

import java.util.List;

import org.edu.vo.MemberVO;

/**
 * IF_MemberService클래스는 DAO를 호출하는 역할
 * @author gmlxk
 *
 */
public interface IF_MemberService {
	public List<MemberVO> selectMember() throws Exception;
	public void insertMember(MemberVO memberVO) throws Exception;
	public void deleteMember(String user_id) throws Exception;
	//throws 스프링을 예외로 보내면, 나중에 예외처리 전용 error.jsp를 만들어서 에러 메세지를 전송하는 사용자단을 사용
}
