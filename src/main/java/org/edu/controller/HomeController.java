package org.edu.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 * 앱을 위한 홈페이지 요청(request)을 처리한다(아래).
 * http://localhost:8080/edu_app 요청을 받았을때, 변수를 만들어서 화면과 뿌려준다.
 */
/**
 * 
 * @author gmlxkr
 *
 */
@Controller
public class HomeController {
		private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
		/**
	 * Simply selects the home view to render by returning its name.
	 * 루트 / 라는 이름으로 요청을 받으면, home.jsp 파일에 화면출력 (렌더링)이 됩니다.(아래)
	 * HomeController.java 를 저장하면, 이클립스에서는 HomeController.class 실행파일을 생성
	 * 저장 시, 콘솔에 보시면 reloading context with name ...is completed.재 실행 문자 나옴.
	 * .java 클래스는 수정 후 약간 기다린 후 Reloading..메시지 후 결과 확인 가능.
	 */
	@RequestMapping(value="/contact",method=RequestMethod.POST)//포스트 방식은 데이터를 전송하는 역살
	public String contact_send() {
		//데이터 전송후에 페이지 이동이 필요합니다. 새로고침=자동등록을 방지하기 위해서. 게시판 테러방지용 
		return "redirect:/blog";/*URL경로를 사용*/
	}
	@RequestMapping(value="/contact",method=RequestMethod.GET)//겟방식은 폼페이지를 보여주는 역할
	public String contact() {
		return "sample/contact";
	}
	@RequestMapping(value="/blog",method=RequestMethod.GET)
	public String blog() {
		return "sample/blog";
	}
		@RequestMapping(value="/work",method=RequestMethod.GET)
	public String work() {
		return "sample/work";		
	}
		@RequestMapping(value="/weare",method=RequestMethod.GET)
	public String weare() {
		//외부에서 /weare경로로 접근했을때, sample/weare.jsp와 매핑시키라는 의미.
		return "sample/weare";
	}
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String index() {//메서드(함수)의 구성은 리턴(반환값 출력)형태지정 메서드명() {구현내용} String index(){}
		//상단 리퀘스트매핑에서 지정한 결로로 접근을 하게되면, 아래에 있는 index()메서드를 실행
		//메서드명 제일 앞에있는 public은 접근권한에 대한 키워드, public(공공-다른 클래스에서 겁근가능)
		//, private(내부-현재 HomeController 클래스에서만 접근가능)
		// public String index(){}메서드 기본형태
		// $(document).ready(function){});j쿼리 기본형태
		//리턴반환값으로 사용한 String 클래스는 문자열을 반환하고, 여기서는 index.jsp와 매칭되는 문자열을 반환.
		//스프링 MVC 프로젝트에서 상대 경로의 최상위는 views폴더 최상위 폴더 입니다.
		//접두사(prefix), 접미사(suffix) index(접두사-파일명) .jsp(접미사-확장자)
		return "sample/index";//접두사만 반환값으로 넣습니다.
	}
	/*@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("개발자들이 변수값 확인용으로 사용하는 것이 로그 입니다. 현재 여러분 컴퓨터 언어는 {} 입니다.", locale);
		logger.info("환영합니다. 현재 여러분의 컴퓨터 언어는 "+ locale + " 입니다..");
	    System.out.println("위에 Locale 클래스를 사용하는이유는 다국어 지원때문에 변수로 사용하게 됩니다.");
		System.out.println("함수-C언어나 자바스크립트-와 매서드-자바, 스프링에서 사용함");
		System.out.println("함수-메서드는 함수명('매개변수-입력값'){구현내용}형식이고, 입력값-출력값 구현됩니다.");
	    Date date = new Date();//data 날짜관련 클래스형 변수 date 선언했습니다. date 변수 메서드를 사용가능하게됨.
	    //data 변수 실행가능한 변수=클래스형 변수-Obj 오브잭트=인스턴스 라고 합니다.(위)
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		//DateFormat 클래스형 변수 dateFormat 이 선언되었고, 실행가능한 변수로 되었습니다.(위) 
		String formattedDate = dateFormat.format(date);
		//위 변수가 실행되어서 출력된 결과값이 formattedDate 변수에 담기게 됩니다.
		model.addAttribute("TomcatserverTime", formattedDate );//serverTime 변수값으로 jsp 파일로 이동.
		//위 model 이라는 클래스형 변수를 이용해서, serverTime 변수값을 아래  home(생략.jsp)로 전송해 줌.		
		return "home";//결과적으로 return 출력값이 home.jsp에 연동됩니다.
		//스프링에서 뷰단으로 데이터 이동(전송)에 대해서 살펴 보았습니다.
	}*/
	
}
