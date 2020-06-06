package com.project.corona7.controller;


import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.corona7.common.CommonUtil;
import com.project.corona7.domain.CoronaVO;
import com.project.corona7.service.CoronaService;

import lombok.extern.log4j.Log4j;


/**
 * Handles requests for the application home page.
 */

@Log4j
@Controller
public class HomeController {
	
	@Autowired
	private CoronaService coronaservice;
	
	@Inject
	private CommonUtil util;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		
		return "main";
	}
	
	@RequestMapping("/top")
	public void showTop() {
		
	}
	@RequestMapping("/foot")
	public void showFoot() {
		
	}
	
	@GetMapping("/main")
	public String main(Model m) {
		System.out.println("main��û ����");
		return "main";
	}
	
	@GetMapping("/list")
	public String list(Model m) {
		System.out.println("list��û ����");
		List<CoronaVO> listinfo = this.coronaservice.getcorona();
		System.out.println(listinfo);
		m.addAttribute("listArr",listinfo);
		return "list";
	}
	
	@GetMapping("/covid19")
	public String covid19(Model m) {
		System.out.println("covid19��û ����");
		return "covid19";
	}
	
	@GetMapping("/developer")
	public String developer(Model m) {
		System.out.println("developer��û ����");
		return "developer";
	}
	
	@PostMapping("/admin")
	public String admin(Model m, @RequestParam(value="pwd", defaultValue="0") int pwd ) {
		System.out.println(pwd);
		if(pwd==0) {
			return util.addMsgBack(m, "�߸� ���� ����Դϴ�.");
		} 
		if(pwd==1269872) {
			System.out.println("admin��û ����");
			List<CoronaVO> recentinfo = this.coronaservice.getrecentcorona();
			System.out.println(recentinfo);
			m.addAttribute("listArr",recentinfo);
		} else {
			return util.addMsgBack(m, "�ڵ带 �߸��Է��߽��ϴ�.");
		} 
		return "admin";
	}
	
	@PostMapping("/register")
	public String insertcorona(Model m, @ModelAttribute("register") CoronaVO coronaRegister) {
		int n = coronaservice.insertcorona(coronaRegister);
		String str=(n>0)? "ȯ������ ����� �Ϸ��߽��ϴ�.":"ȯ������ ����� �����߽��ϴ�.";
		String loc=(n>0)? "main":"javascript:history.back()";
		m.addAttribute("message",str);
		m.addAttribute("loc",loc);
		return "message";
	}
	
}
