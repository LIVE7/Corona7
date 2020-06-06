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
		System.out.println("main요청 들어옴");
		return "main";
	}
	
	@GetMapping("/list")
	public String list(Model m) {
		System.out.println("list요청 들어옴");
		List<CoronaVO> listinfo = this.coronaservice.getcorona();
		System.out.println(listinfo);
		m.addAttribute("listArr",listinfo);
		return "list";
	}
	
	@GetMapping("/covid19")
	public String covid19(Model m) {
		System.out.println("covid19요청 들어옴");
		return "covid19";
	}
	
	@GetMapping("/developer")
	public String developer(Model m) {
		System.out.println("developer요청 들어옴");
		return "developer";
	}
	
	@PostMapping("/admin")
	public String admin(Model m, @RequestParam(value="pwd", defaultValue="0") int pwd ) {
		System.out.println(pwd);
		if(pwd==0) {
			return util.addMsgBack(m, "잘못 들어온 경로입니다.");
		} 
		if(pwd==1269872) {
			System.out.println("admin요청 들어옴");
			List<CoronaVO> recentinfo = this.coronaservice.getrecentcorona();
			System.out.println(recentinfo);
			m.addAttribute("listArr",recentinfo);
		} else {
			return util.addMsgBack(m, "코드를 잘못입력했습니다.");
		} 
		return "admin";
	}
	
	@PostMapping("/register")
	public String insertcorona(Model m, @ModelAttribute("register") CoronaVO coronaRegister) {
		int n = coronaservice.insertcorona(coronaRegister);
		String str=(n>0)? "환자정보 등록을 완료했습니다.":"환자정보 등록을 실패했습니다.";
		String loc=(n>0)? "main":"javascript:history.back()";
		m.addAttribute("message",str);
		m.addAttribute("loc",loc);
		return "message";
	}
	
}
