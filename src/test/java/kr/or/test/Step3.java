package kr.or.test;

import java.util.Calendar;

/**
 * 
 * @author gmlxk
 *
 */
public class Step3 {

	public static void main(String[] args) {
		// 메인 메서드 스레드 시작
		Week today = null;//Week자료형용 today변수생성/선언
		//String today2 = null;//String자료형용 today2변수 생성
		//MemberVO memberVO = new MemberVO();
		//MemberVO 자료형용 memberVO 객체변수/오브젝트 선언
		//현재 날짜가 무슨 요일인지 한글로 확인하는 프로그램(아래)
		Calendar calendar = Calendar.getInstance();//객체선언 calendar 객체변수 = 인스턴스변수
		//calendar옵젝에서 현재 요일을 반환받기(1~7)
		int intWeek = calendar.get(Calendar.DAY_OF_WEEK);
		switch(intWeek) {
		case 1:
			today = Week.일; break;//브레이크는 case문장을 빠져나가는 명령
		case 2:
			today = Week.월; break;
		case 3:
			today = Week.화; break;
		case 4:
			today = Week.수; break;
		case 5:
			today = Week.목; break;
		case 6:
			today = Week.금; break;
		case 7:
			today = Week.토; break;
			
		}
		System.out.println("오늘 요일은: " + today + "요일 입니다.");
		if(today == Week.수) {
			System.out.println("수요일에는 축구를 합니다.");
		} else {
			System.out.println("열심히 자바 공부를 합니다.");
		}
		
		//Calendar클래스는 달력에서 날짜, 본인 컴퓨터 날짜라서 데이터가 훼손될 가능성 있습니다.
		//이 때 해결책은 서버시간을 가져와서 출력하면, 사용자가 날짜르 수정 못하게 됩니다.
	}

}
