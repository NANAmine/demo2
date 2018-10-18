package com.huanying.risk.syslog;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.huanying.framework.BaseController;

@Controller
public class SyslogController extends BaseController {
	
	@RequestMapping(value = "/show_syslog_list.do")
	public String show_syslog_list(String area, Model model) {
		model.addAttribute("area",area);
		return "syslog/show_syslog_list";
	}

}
