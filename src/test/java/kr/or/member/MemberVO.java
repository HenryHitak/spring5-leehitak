package kr.or.member;

public class MemberVO {
	// 테이블의 컬럼명과 동일한 멤버변수 만들기
	//데이터를 가지고 있다. 필드명(항목) -> 공통적으로 가지고 있는 속성
	private String name;
	private int age;
	private String phoneNum;

	// 멤버변수는 보안때문에 private만들었으나, getter,setter메서드는 public으로 생성됩니다.
	public String getName() {
		return name;
	}

	public void setName(String name) {//void의 역할은 return 되는 타입이 없음을 의미
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	@Override//클래스값을 가지고 있는데 값이 올바르게 담겨있는 지 로그를 확인할 때  toString()
	public String toString() {
		return "디버그용 MemberVO [name=" + name + ", age=" + age + ", phoneNum=" + phoneNum + "]";
	}
}
