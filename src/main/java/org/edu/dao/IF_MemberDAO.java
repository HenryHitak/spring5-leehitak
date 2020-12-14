package org.edu.dao;

import java.util.List;

import org.edu.vo.MemberVO;

/**
 * 회원관리 DAO 메서드 명세(목차) 인터페이스.
 * @author gmlxk
 *
 */
public interface IF_MemberDAO {//리턴값이 있음
	public List<MemberVO> selectMember() throws Exception;
}
