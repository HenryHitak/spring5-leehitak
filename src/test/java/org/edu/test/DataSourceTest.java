package org.edu.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Collection;
import java.util.List;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.edu.dao.IF_MemberDAO;
import org.edu.vo.MemberVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
/**
 * JUnit 자바단위테스트이고, DataSource 지정 후 DB(Hsql,Mysql,Oracle)접속,
 * 데이터베이스 테이블에 Create, Read, Update, Delete 테스트용 클래스
 * 제이유닛4클래스를 사용.
 * @author gmlxk
 *
 */
@RunWith(SpringJUnit4ClassRunner.class) 
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
@WebAppConfiguration
public class DataSourceTest {

	@Inject
	DataSource dataSource;//자바에서처럼 new 옵젝을 생성하지 않고, 스프링에서는 @Inject
	
	@Inject
	IF_MemberDAO memberDAO;
	
	@Test
	public void selectMember() throws Exception {
		List<MemberVO> memberList = memberDAO.selectMember();
		System.out.println("회원리스트 테스트 입니다.");
		System.out.println(memberList.toString());
	}
	@Test
	public void dbConnectiontest() {
		try {
			Connection connection = dataSource.getConnection();
			System.out.println("데이터베이스 접속이 성공하였습니다.");
		} catch (SQLException e) {
			System.out.println("데이터베이스 접속에 실패하였습니다. 왜냐하면 " + e);
			e.printStackTrace();
		}// DB커넥션 오브젝트 만드는 과정. new 노사용
		//try~catch는 테스트에서만 사용하고, 스프링에서는 thorsw Exception으로 예외를 스프링으로!
		
	}
	@Test
	public void test() {
		//fail("Not yet implemented");
		System.out.println("JUnit테스트 시작");
	}

}
