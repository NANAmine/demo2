package com.huanying.framework.index;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.huanying.framework.BaseController;

@Controller
public class IndexController extends BaseController {
	
	@RequestMapping("/index.do")
	public String index(@RequestParam(value = "user", required = false) String user,Model model) throws Exception {
		model.addAttribute("name", "");
		return "index/index";
	}
	
	@RequestMapping("/header.do")
	public String header(Model model) throws Exception {
		return "index/header";
	}
	
	@RequestMapping("/tree.do")
	public String tree(Model model) throws Exception {
		return "index/tree";
	}
	
	@RequestMapping("/foot.do")
	public String foot(Model model) throws Exception {
		
		model.addAttribute("name", "");
		return "index/foot";
	}
	
	@RequestMapping("/login.do")
	public String login(Model model) throws Exception {
		return "front/login";
	}
	
	@RequestMapping("/main.do")
	public String show_main(Model model) throws Exception {
		return "front/main";
	}
	
	@RequestMapping("/list.do")
	public String show_list(Model model) throws Exception {
		return "front/content";
	}
	@RequestMapping("/list_2.do")
	public String show_list_2(Model model) throws Exception {
		return "front/list_2";
	}
	
	@RequestMapping("/content.do")
	public String show_content(Model model) throws Exception {
		return "front/list";
	}
	
	@RequestMapping("/people.do")
	public String people(Model model) throws Exception {
		return "content/show_point_lista1";
	}
	
	@RequestMapping("/show_people.do")
	public String show_people(Model model) throws Exception {
		return "content/show_point_list";
	}
	
	@RequestMapping("/goods.do")
	public String goods(Model model) throws Exception {
		return "content/show_point_listb1";
	}
	
//	@RequestMapping("/show_goods.do")
//	public String show_goods(Model model) throws Exception {
//		return "content/show_point_listb2";
//	}
	
	@RequestMapping("/big.do")
	public String big(Model model) throws Exception {
		return "content/show_point_listb3";
	}
	
	@RequestMapping("/small.do")
	public String small(Model model) throws Exception {
		return "content/show_point_listb4";
	}
	
	@RequestMapping("/show_event.do")
	public String show_event(Model model) throws Exception {
		return "content/show_point_listb5";
	}
	
	@RequestMapping("/event.do")
	public String event(Model model) throws Exception {
		return "content/show_add_content";
	}
	
	@RequestMapping("/main01.do")
	public String index(Model model) throws Exception {

		return "front/index";
	}
}

