package com.bit.project01;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ex/")
public class Ex10Controller {
//네임스페이스와 같은 역할임 따라서 밑의 메소드 주소는 /ex/아래의 구조가 됨.

	
//ex01로 중복되는 어노테이션 url값을 부를 경우 실행과 동시에 오류가 떨어짐
	@RequestMapping("ex01")
	public String ex10() {
		return "home";
	}
}
