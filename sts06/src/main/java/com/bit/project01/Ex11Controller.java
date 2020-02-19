package com.bit.project01;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Ex11Controller {

	
	@RequestMapping("/ex11")   //id�� �� �Ķ������ id�� ���� ��� ���� ����! ���� ������̼ǵ� ���� ����!
	public String ex11(@ModelAttribute("msg") String id) {
		System.out.println(id);
		return "ex11";
	}
	
	@RequestMapping("/ex12/{id}")//�������� ��ġ�ϴ� ��� ���� ����!
	public String ex12(@PathVariable String id) {
		System.out.println(id);
		return "ex11";
	}
	
}








