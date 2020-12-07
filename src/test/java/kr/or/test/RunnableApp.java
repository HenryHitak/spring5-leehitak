package kr.or.test;

public class RunnableApp implements Runnable {

	public static void main(String[] args) {
		// Runnable 인터페이스를 구현하는 내용
		//(new Thread(new RunnableApp())).start();
		MyThread myThread1 = new MyThread("myThread1");
		MyThread myThread2 = new MyThread("myThread2");
		MyThread myThread3 = new MyThread("myThread3");
		myThread1.start();
		myThread2.start();
		myThread3.start();
	}

	@Override
	public void run() {
		// TODO Auto-generated method stub
		
	}

	//@Override
	//public void run() {
		// 러너블 인터페이스 구현클래스를 start()하면 자동실행
		//System.out.println("러너블 시작시 자동실행 됩니다!");
		
	}

class MyThread extends Thread {
	public MyThread(String szName) {
		super(szName);
	}
	public void run() {//MyThread 스레드를 start()호출해야지만, 자동실행되는 메서드
		for(int cnt=0;cnt<100;cnt++) {
			System.out.print(this.getName() + " ");
		}
	}
}
//}
