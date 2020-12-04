package kr.or.test;

public class InterfaceApp {

	public static void main(String[] args) {
		// 자바프로그램은 항상  main() 진입점에서 실행하는 것. 웹프로그램 해당 X
		AllCalc allCalc = new AllCalc();//실행 오브젝트 변수 allCalc 생성
		allCalc.add(5, 5);
		allCalc.sub(5, 5);
		allCalc.mul(5, 5);
		allCalc.div(5, 5);

	}

}

//인터페이스 실습(아래)
interface CalcAddSub{
	void add(double dx, double dy);
	void sub(double dx, double dy);
}
interface CalcMulDiv extends CalcAddSub{
	void mul(double dx, double dy);
	void div(double dx, double dy);
}
class AllCalc implements CalcAddSub, CalcMulDiv {

	@Override
	public void mul(double dx, double dy) {
		// 구현내용
		System.out.println("곱하기 결과는 " + dx*dy);
	}

	@Override
	public void div(double dx, double dy) {
		// 구현내용
		System.out.println("나누기 결과는 " + dx/dy);
	}

	@Override
	public void add(double dx, double dy) {
		// 구현내용
		System.out.println("더하기 결과는 " + (dx+dy) );
	}

	@Override
	public void sub(double dx, double dy) {
		// 구현내용
		System.out.println("빼기 결과는 "+ (dx-dy) );
		
	} 
	
}