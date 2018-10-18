package com.huanying.framework.user;

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
import com.huanying.risk.books.Books;

@Controller
public class UserController extends BaseController {
	
	@Autowired
	private UserService userService;
	
	Logger logger = Logger.getLogger(UserController.class);
	
	@RequestMapping("/show_add_user.do")
	public String index(String name,String page_num,Model model) throws Exception {
		model.addAttribute("name", "");
		if(page_num ==null){
			page_num = "1";
		}
		PageBean pageBean = userService.searchUsers(name, super.getPageSize(), Integer.valueOf(page_num));
		
		model.addAttribute("users", pageBean.getList());
		model.addAttribute("page",pageBean);
		model.addAttribute("name", name);
		return "user/add_user";
	}
	
	@RequestMapping(value="/add_user.do", method = RequestMethod.POST)
	@ResponseBody 
	public Map<String, String> save_user(@RequestBody User user,String publish_date) {
		Map<String, String> map = new HashMap<String, String>();
		try {			
			user.setStatus(1);
			if(user.getId()==0){			
				userService.add(user);
			}
			else{
				userService.update(user);
			}
			map.put("flag", "1");
			map.put("id", String.valueOf(user.getId()));
		} catch (Exception e) {
			logger.error("操作书籍失败",e);
			map.put("flag", "0");
		}
		return map;
	}
	
	@RequestMapping(value="/get_user.do", method = RequestMethod.GET)
	@ResponseBody 
	public Map<String, Object> get_user(int id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			User u = userService.getbyId(id); 
			map.put("flag", "1");
			map.put("user", u);
		} catch (Exception e) {
			logger.error("查询书籍失败",e);
			map.put("flag", "0");
		}
		
		return map;
	}
	
	@RequestMapping(value="/delete_user.do", method = RequestMethod.GET)
	@ResponseBody 
	public Map<String, Object> delete_books(int id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			userService.delete(id);
			map.put("flag", "1");
		} catch (Exception e) {
			logger.error("删除书籍失败",e);
			map.put("flag", "0");
		}
		
		return map;
	}

}
