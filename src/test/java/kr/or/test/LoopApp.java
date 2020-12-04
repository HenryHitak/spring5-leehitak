package kr.or.test;

public class LoopApp {

	public static void main(String[] args) {
		// 반복문중에 for 문
		// 메서드에서 사용하는 변수 아래 2줄
		int[] numbers = {11,21,31,41,51,61,71,81,91,101};//배열변수 선언
		int cnt;//반복횟수 카운트하는 역할 변수 선언
		//for문(반복문의 시작값정의; 반복의 종료 값 정의; 반복할때 증가하는 값) {)
		for(cnt=0;cnt<10;cnt++) {//cnt++ => cnt=cnt+1; 의미는 1씩 증가
			//System.out.println("현재 카운터는" + numbers[cnt]);
			//println함수는 한번 출력 후 newline 엔터치는 역할.
			//10번 반복을 하는데, numbers[0], numbers[1],....numbers[9] 출력
	}

		//향상된 for문, 스프링 jsp에서 제일 많이 사용하게 될 구문(아래)
		String[] names = {"사용자 1", "사용자 2", "사용자 3", "사용자 4", "사용자 5"};
		int length = names.length;//length기본형 변수에는 5가 들어감
		//names는 클래승형 변수지만 인스턴스는 X
		char name = '사';//임베디드 장비와 자바프로그램 통신시 이것을 사용합니다.
		//임베디드 프로그램에서 char을 사용하는 이유는 효율적으로 메모리를 사용하기 위해서
		//아두아노에서도 char 사용
		//큰 따옴표는 문자열데이터 감싸줄때, 작은 따옴표는 1개 문자 데이터를 감싸줄때
		//배열타입[]1차원 배열 = 가로선
		//int[] numbers2 = {1,2,3,4,5,6,7,8,9,10};
		//향상된 for문에서는 시작값, 끝값, 증가값 X
		for(String user_name:names) {
			//System.out.println("등록된 사용자 이름은 " + user_name);
		}
		//향상된 for문, 회원정보를 jsp로 출력하기 현장과 비슷하게 구현
		String[][] members = {
				{"admin","관리자","admin@abc.com","2020-12-04","ROLE_ADMIN"},
				{"user","사용자1","user@abc.com","2020-12-04","ROLE_USER"}
		//향상된 for문에서는 시작값, 끝값, 증가값 X		
		};
		System.out.println("=====회원 리스트 입니다.======");
		System.out.println("user_id | user_name | email | use | regdate | levels");
		for(String[] member:members) {
			System.out.println(member[0]+"|"+"member[1]"+"|"+"member[2]"+"|"+"member[3]"+"|"+"member[4]"+"|"+"member[5]"+"|"+"member[6]");
			
		}
  }

}