package com.bit.project002.dept;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit.project002.dept.model.DeptDao;

@Controller
@RequestMapping("/dept/")
public class DeptController {
//	다오를 뷰로 보내야하니까!
	DeptDao dao;
	@Autowired
	public void setDao(DeptDao dao) {
		this.dao = dao;
	}

	@RequestMapping("list")
	public String list(Model model) {
		model.addAttribute("list",dao.selectAll());
		return "deptlist";
	}
}
