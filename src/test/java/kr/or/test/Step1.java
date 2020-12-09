package kr.or.test;
/**
 * 
 * @author gmlxk
 *
 */
public class Step1 {

	public static void main(String[] args) {
		// 전역 변수(멤버변수)는 클래스 전체에 영향을 미치는 변수=클래스 안에서 사용하는 변수
		// 내부 변수는 메서드 내에서만, 영향을 미치는 변수=메서드(함수)
		String name;//String은 데이터 타입 name이라는 변수가 담을 수 있는 형태를 지정.
		int age;//int 타입이라서 숫자만 담을 수 있음.
		String phoneNum;//String 타입이라서 문자열만 담을 수 있음.
		//변수에 값을 대입연산자로 대입(아래)
		name="홍길동";
		age=45;
		phoneNum="000-0000-0000";
		//위 내용을 출력하는 메서드 1개 사용(아래)
		printMember(name, age, phoneNum);
		name="성춘향"; age=18; phoneNum="111-1111-1111";
		printMember(name,age,phoneNum);
		name="각시탈"; age=29; phoneNum="112-1222-1222";
		printMember(name,age,phoneNum);
		
		//배열을 이용해서 좀 더 간편하게 입력하고, 출력하기
		String[] names = {"홍길동", "성춘향", "각시탈"};
		int[] ages = {45,18,29};
		String[] phoneNums = {"000-0000-0000","111-1111-1111","112-1222-1222"};
		printMembers(names,ages,phoneNums);//오버로드형 메서드
	}

	private static void printMembers(String[] names, int[] ages, String[] phoneNums) {
		// member를 출력하는데 배열값을 받아서 구현(아래)
		int dataLength = names.length;//이름배열에 있는 사람의 명수를 구하기
		System.out.println("매개변수로 받은 names 의 사람의 명수는 : "+names.length);
		//고전for문의 반복문형식은
		for(int cnt=0;cnt<dataLength;cnt++) {
			System.out.println("cnt변수의 변화는 = " +cnt);
			System.out.println("배열의 이름은: "+names[cnt]+" | 나이는: "+ages[cnt]+" | 연락처는: "+phoneNums[cnt]);
		}
		
	}

	private static void printMember(String name, int age, String phoneNum) {
		// member를 출력하는 프린트 메서드 구현 내용
		System.out.println("회원의 이름은: " +name+" | 나이는: "+age+" | 연락처는: "+phoneNum);
		
	}

}
