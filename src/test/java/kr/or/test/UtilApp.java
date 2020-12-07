package kr.or.test;

public class UtilApp {

	public static void main(String[] args) {
		// 클래스 실행 진입점
		// java.lang Math 클래스를 사용해서 랜덤하게 숫자를 뽑기
		System.out.println("1부터 30까지의 랜던 숫자 출력 = "
		+ (int)(Math.random() * 30+1)//+1을 하면 1부터, +1없으면 0부터
		//결과가 float(실수)로 나오기 때문에, 정수형(int)으로 형변환해서 출력
		);
	}

}
