<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ include file="./include/header.jsp"%>



<section class="contact-section float-clear"><!-- division디비전이라는 div 영역표시 태그 대신에 사용 -->
<h1>CONTACT</h1>
<div class="container">
<!-- 폼태그의 필수속성, action-데이터를 전송할 대상값, method-데이터를 전송하는 방법값 -->
<!-- input 한줄입력 태그, textarea 여러줄 입력 태그 -->
<!-- label은 이름표, 입력태그와 라벨은 1:1매칭이 되는 관계 -->
<form name="message_form" action="/contact" method="get">
<!-- 스프링에서는 action으로 전송할 폼 데이터의 위치를 지정할때, contact.html처럼 직접접근X /contact처럼 컨트롤러를 통해O-->
<!-- 필드셋은 폼이 DB테이블의 필드와 1:1맻이되는 관계 -->
<!-- 플레이스홀더: 공간에 자리를 차지하지 않으면서 -->
<fieldset>
<legend>현재폼의 타이틀 영역입니다.</legend>
<div class="input-class">
<label for="name">이름</label>
<input name="name" id="name" type="text" placeholder="이름을 입력">
<label for="phone">연락처</label>
<input name="phone" id="phone" type="text" placeholder="연락처를 입력">
<label for="email">이메일</label>
<input name="email" id="email" type="email" placeholder="email을 입력">
<!-- 입력 제약조건html5에서 지원하는 기능 type에 꼭 email라고 형식을 지정해야지만 제약조건이 작동이 됨 -->
</div>
<div class="textarea-class">
<label for="message">메세지</label>
<textarea name="message" id="message" placeholder="내용을 입력"></textarea>
</div>
</fieldset>
<div class="submit-btn">
<button type="submit">메세지보내기</button>
</div>
</form>
<!-- form 태그의 목적은 input, textarea, checkbox, radio, select 데이터를 submit하는 것이 목적.-->
<!--  폼전송은 get(비보안용), post(보안용-입력/수정/삭제) -->
<!-- get방식은 유일하게 검색할때 사용됩니다. -->
</div>
</section>

<%@ include file="./include/footer.jsp"%>