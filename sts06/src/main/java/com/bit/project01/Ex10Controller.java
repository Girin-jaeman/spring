package com.bit.project01;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ex/")
public class Ex10Controller {
//���ӽ����̽��� ���� ������ ���� ���� �޼ҵ� �ּҴ� /ex/�Ʒ��� ������ ��.

	
//ex01�� �ߺ��Ǵ� ������̼� url���� �θ� ��� ����� ���ÿ� ������ ������
	@RequestMapping("ex01")
	public String ex10() {
		return "home";
	}
}
