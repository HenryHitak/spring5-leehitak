package kr.or.member;

import java.io.IOException;//일반적으로 I / O는 입력 또는 출력을 의미; Java가 자동으로 처리하므로 메모리에 대한 읽기 또는 쓰기에 대해 발생X
import java.net.InetAddress;//자바에서 IP 주소를 표현할때 사용하는 클래스
import java.text.SimpleDateFormat;//Java 시간을 원하는 포맷으로 출력
import java.time.LocalDateTime;//Java version 8 이상만 가능; 로컬 날짜 클래스로 날짜 정보만 필요할 때 사용날짜 정보만 출력
import java.time.ZoneId;//ZoneId는 Instant와 LocalDateTime간에 변환하는 데 사용되는 규칙을 식별하는 데 사용
import java.util.Date;

import org.apache.commons.net.ntp.NTPUDPClient;
import org.apache.commons.net.ntp.TimeInfo;

import kr.or.member.MemberService;
import kr.or.member.MemberVO;

public class MainController {

	public static void main(String[] args) throws IOException {
		// 실행 메서드
		MemberVO memberVO = new MemberVO();// 자바 오브젝트 생성하는 방법
		memberVO.setName("이희탁");//이름
		memberVO.setAge(45);//나이
		memberVO.setPhoneNum("000-0000-0000");//전화번호
		MemberVO memberVO2 = new MemberVO();
		memberVO2.setName("이희탁");
		memberVO2.setAge(100);
		memberVO2.setPhoneNum("111-1111-1111");
		MemberVO memberVO3 = new MemberVO();
		memberVO3.setName("이희탁");
		memberVO3.setAge(3);
		memberVO3.setPhoneNum("222-2222-2222");
		if(memberVO2 == memberVO3) {
			System.out.println("동일객체=인스턴스");
		}else {
			System.out.println("다른오브젝트");
		}
		// 위 각각 3개의 레코드를 1군데 담을 배열 클래스오브젝트를 하나 생성(아래)
		MemberVO[] members = new MemberVO[3];//묶음
		members[0] = memberVO;
		members[1] = memberVO2;
		members[2] = memberVO3;
		// 전에 사용했던 출력보다는 개선된 방식으로 출력(아래) MemberService 서비스전용 클래스만들어서 처리.
		MemberService memberService = new MemberService();// 자바 오브젝트객체 생성하는 방법\
		System.out.println(members[0]);//클래스형변수를 호출할때, toString() 자동호출되는 것 같습니다.
		System.out.println("여기까지");
		memberService.printMember(members);// 서비스클래스의 메서드호출 (출력)
		
		//서버시간 가져오기
		//서버시간을 가져올 수 있는 commons-net 메이븐 디펜던시 사용 라이브러리를 추가.
		NTPUDPClient timeClient = new NTPUDPClient();
		timeClient.setDefaultTimeout(1000);//객체의 기본 시간제한을 초 단위로 () 설정
		//네트워크로 서버시간을 가져올때, 응답이 1초를 넘기면, 재 접속해라.
		timeClient.open();
		//http://pool.ntp.org/는 서버시간보내줄 실제 서버 주소.
		InetAddress address = InetAddress.getByName("pool.ntp.org");
		TimeInfo timeInfo = timeClient.getTime(address);
		//서버시간을 담은 timeInfo 객체변수를 사용(아래) 변수는 카메표기법(낙타등표기법)
		//TimeStamp 1970년부터 초단위로 계단된 현재까지의 초를 합친결과값(아래) 534533536236초
		long returnTime = timeInfo.getMessage().getTransmitTimeStamp().getTime();//서버에서 시간 가져오는 코드
		//위 반환받은 타임스탬프 초 값을 사람이 알아볼 수 있는 시간으로 변환(아래)
		Date nowDate = new Date(returnTime);//금일 현재시간
		//System.out.println("현재 서버시간은-영어버전 " + nowDate);
		//Wed Dec 09 11:24:03 KST 2020 -> 2020-12-09 11:24:03
		//SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		//System.out.println("현재 서버시간은-한국버전 " + formatDate.format(nowDate));
		LocalDateTime localDateTime = nowDate.toInstant()
				.atZone(ZoneId.systemDefault())
				.toLocalDateTime();
		System.out.println("Server 시간: " + localDateTime);//Naver 시계랑 동일!
		System.out.println("로컬PC 시간 : " + localDateTime.now());
	}

}