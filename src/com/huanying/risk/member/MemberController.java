package com.huanying.risk.member;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huanying.framework.BaseController;
import com.huanying.framework.PageBean;
import com.huanying.framework.utils.Date;



@Controller
public class MemberController extends BaseController {
	@Autowired
	private MemberService memberService;
	
	private static Logger logger = Logger.getLogger(MemberController.class);
	
	@RequestMapping("/show_member_list.do")
	public String show_member_list(String name,String page_num,Model model) throws Exception {
		Map<String,String> map=new HashMap<String,String>();
		if(name!=null && !("").equals(name)){
			map.put("name", name);
		}
		if(page_num ==null){
			page_num = "1";
		}
		
		PageBean pageBean = memberService.searchMember(map,super.getPageSize(), Integer.valueOf(page_num));
		PageBean pageBean_position = memberService.searchPoistion(new HashMap(),100,1);
		
		model.addAttribute("name", name);
		model.addAttribute("member_list", pageBean.getList());
		model.addAttribute("position_list", pageBean_position.getList());
		model.addAttribute("page",pageBean);
		
		return "member/show_member_list";
	}
	
	@RequestMapping(value="/add_member.do", method = RequestMethod.POST)
	@ResponseBody 
	public Map<String, String> save_member(@RequestBody Member member,String in_date,String out_date,String position_id) {
		Map<String, String> map = new HashMap<String, String>();
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			if(in_date!=null && !("").equals(in_date)) {
				Date in = Date.parseDate(in_date,sdf);
				member.setIn_date(in);
			}
			if(out_date!=null && !("").equals(out_date)) {
				Date out = Date.parseDate(out_date,sdf);
				member.setOut_date(out);
			}
			if(position_id!=null && !("").equals(position_id)) {
				Position p  = memberService.getPositionbyId(Integer.valueOf(position_id).intValue());
				member.setPosition(p);
			}
			if(member.getId()==0){				
				memberService.addMember(member);
			}
			else{
				memberService.updateMember(member);
			}
			map.put("flag", "1");
			map.put("id", String.valueOf(member.getId()));
		} catch (Exception e) {
			logger.error("操作人员失败",e);
			map.put("flag", "0");
		}
		return map;
	}
	
	@RequestMapping(value="/get_member.do", method = RequestMethod.GET)
	@ResponseBody 
	public Map<String, Object> get_member(int id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			System.out.println("1");
			Member m = memberService.getMemberbyId(id);
			System.out.println("2");
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			System.out.println("3");
			if(m.getIn_date()==null) {
				map.put("in_date", "----");
			}else {
			map.put("in_date", df.format(m.getIn_date()));
			}
			if(m.getOut_date()==null) {
				map.put("out_date", "----");
			}else {
			map.put("out_date", df.format(m.getOut_date()));
			}
			System.out.println(m.getOut_date());
			map.put("flag", "1");
			map.put("member", m);
		} catch (Exception e) {
			logger.error("查询人员失败",e);
			map.put("flag", "0");
		}
		
		return map;
	}
	@RequestMapping("/show_member.do")
	public String show_member(int id,Model model) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Member m = memberService.getMemberbyId(id);
			model.addAttribute("member", m);
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			model.addAttribute("df", df);
			map.put("in_date", df.format(m.getIn_date()));
			model.addAttribute("in_date", df.format(m.getIn_date()));
			map.put("out_date", df.format(m.getOut_date()));
			model.addAttribute("out_date", df.format(m.getOut_date()));
			map.put("flag", "1");
			model.addAttribute("flag", "1");
			map.put("member", m);
		} catch (Exception e) {
			logger.error("查询人员失败",e);
			map.put("flag", "0");
			model.addAttribute("flag", "0");
		}
		return "member/show_member";
	}
	@RequestMapping(value="/delete_member.do", method = RequestMethod.GET)
	@ResponseBody 
	public Map<String, Object> delete_member(int id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			memberService.deleteMember(id);
			map.put("flag", "1");
		} catch (Exception e) {
			logger.error("删除人员失败",e);
			map.put("flag", "0");
		}
		
		return map;
	}
	
	@RequestMapping("/search_member_list.do")
	public String search_member_list(String name,String page_num,Model model) throws Exception {
		Map<String,String> map=new HashMap<String,String>();
		if(name!=null && !("").equals(name)){
			map.put("name", name);
		}
		if(page_num ==null){
			page_num = "1";
		}
		
		PageBean pageBean = memberService.searchMember(map,super.getPageSize(), Integer.valueOf(page_num));
		PageBean pageBean_position = memberService.searchPoistion(new HashMap(),100,1);
		
		model.addAttribute("name", name);
		model.addAttribute("member_list", pageBean.getList());
		model.addAttribute("position_list", pageBean_position.getList());
		model.addAttribute("page",pageBean);
		
		return "member/search_member_list";
	}

}
