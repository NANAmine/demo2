package com.huanying.risk.goods;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.jws.WebParam.Mode;

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
public class GoodsController extends BaseController {
	@Autowired
	private GoodsService goodsService;
	
	private static Logger logger = Logger.getLogger(GoodsController.class);
	
	@RequestMapping("/show_goodsClass_list.do")
	public String show_goodsClass_list(String name,String page_num,Model model) throws Exception {
		Map<String,String> map=new HashMap<String,String>();
		if(name!=null && !("").equals(name)){
			map.put("name", name);
		}
		if(page_num ==null){
			page_num = "1";
		}
		
		PageBean pageBean = goodsService.searchGoodsClasses(map,super.getPageSize(), Integer.valueOf(page_num));
		
		model.addAttribute("name", name);
		model.addAttribute("goodsClass_list", pageBean.getList());
		model.addAttribute("page",pageBean);
		
		return "goods/show_goodsClass_list";
	}
	
	@RequestMapping(value="/add_goodsClass.do", method = RequestMethod.POST)
	@ResponseBody 
	public Map<String, String> save_goodsClass(@RequestBody GoodsClass goodsClass) {
		Map<String, String> map = new HashMap<String, String>();
		try {
			if(goodsClass.getId()==0){
				goodsClass.setStatus(1);
				goodsService.addGoodsClass(goodsClass);
			}
			else{
				goodsClass.setStatus(1);
				goodsService.updateGoodsClass(goodsClass);
			}
			map.put("flag", "1");
			map.put("id", String.valueOf(goodsClass.getId()));
		} catch (Exception e) {
			logger.error("操作装备大类失败",e);
			map.put("flag", "0");
		}
		return map;
	}
	
	@RequestMapping(value="/get_goodsClass.do", method = RequestMethod.GET)
	@ResponseBody 
	public Map<String, Object> get_goodsClass(int id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			GoodsClass g = goodsService.getGoodsClassbyId(id);
			map.put("flag", "1");
			map.put("goodsClass", g);
		} catch (Exception e) {
			logger.error("查询装备大类失败",e);
			map.put("flag", "0");
		}
		
		return map;
	}
	
	@RequestMapping(value="/delete_goodsClass.do", method = RequestMethod.GET)
	@ResponseBody 
	public Map<String, Object> delete_goodsClass(int id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			goodsService.deleteGoodsClass(id);
			map.put("flag", "1");
		} catch (Exception e) {
			logger.error("删除装备大类失败",e);
			map.put("flag", "0");
		}
		
		return map;
	}
	
	@RequestMapping("/show_goodsSubClass_list.do")
	public String show_goodsSubClass_list(String name,String page_num,Model model) throws Exception {
		Map<String,String> map=new HashMap<String,String>();
		if(name!=null && !("").equals(name)){
			map.put("name", name);
		}
		if(page_num ==null){
			page_num = "1";
		}
		
		PageBean pageBean_sub = goodsService.searchGoodsSubClasses(map,super.getPageSize(), Integer.valueOf(page_num));
		PageBean pageBean = goodsService.searchGoodsClasses(new HashMap(), 100, 1);
		
		model.addAttribute("name", name);
		model.addAttribute("goodsSubClass_list", pageBean_sub.getList());
		model.addAttribute("goodsClass_list", pageBean.getList());
		model.addAttribute("page",pageBean);
		
		return "goods/show_goodsSubClass_list";
	}
	
	@RequestMapping(value="/add_goodsSubClass.do", method = RequestMethod.POST)
	@ResponseBody 
	public Map<String, String> save_goodsSubClass(@RequestBody GoodsSubClass goodsSubClass,String class_id) {
		Map<String, String> map = new HashMap<String, String>();
		try {
			goodsSubClass.setStatus(1);
			GoodsClass g  = goodsService.getGoodsClassbyId(Integer.valueOf(class_id).intValue());
			goodsSubClass.setGoodsClass(g);
			if(goodsSubClass.getId()==0){				
				goodsService.addGoodsSubClass(goodsSubClass);
			}
			else{
				goodsService.updateGoodsSubClass(goodsSubClass);
			}
			map.put("flag", "1");
			map.put("id", String.valueOf(goodsSubClass.getId()));
		} catch (Exception e) {
			logger.error("操作装备小类失败",e);
			map.put("flag", "0");
		}
		return map;
	}
	
	@RequestMapping(value="/searchGoodsSubClasses2.do", method = RequestMethod.GET)
	@ResponseBody 
	public Map<String, Object> searchGoodsSubClasses2(String id,Model model) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
	    map.put("class_id", id);
	    System.out.println(id);
		PageBean pageBean_sub_class = goodsService.searchGoodsSubClasses2(map, 100, 1);
		model.addAttribute("pageBean_sub_class", pageBean_sub_class.getList());
		map.put("pageBean_sub_class", pageBean_sub_class.getList());
		return map;
	}
	
	@RequestMapping(value="/delete_goodsSubClass.do", method = RequestMethod.GET)
	@ResponseBody 
	public Map<String, Object> delete_goodsSubClass(int id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			goodsService.deleteGoodsSubClass(id);
			map.put("flag", "1");
		} catch (Exception e) {
			logger.error("删除装备小类失败",e);
			map.put("flag", "0");
		}
		
		return map;
	}
	
	@RequestMapping("/show_goods_list.do")
	public String show_goods_list(String name,String status,String sub_class_id,String page_num,Model model) throws Exception {
		Map<String,String> map=new HashMap<String,String>();
		if(name!=null && !("").equals(name)){
			map.put("name", name);
		}
		if(sub_class_id!=null && !("").equals(sub_class_id)){
			map.put("sub_class_id", sub_class_id);
		}
		if(status!=null && !("").equals(status)){
			map.put("status", status);
		}
		if(page_num ==null){
			page_num = "1";
		}
		
		PageBean pageBean = goodsService.searchGoods(map,super.getPageSize(), Integer.valueOf(page_num));
		PageBean pageBean_class = goodsService.searchGoodsClasses(new HashMap(), 100, 1);
		PageBean pageBean_sub_class = goodsService.searchGoodsSubClasses(new HashMap(), 100, 1);
		
		model.addAttribute("name", name);
		model.addAttribute("goodsClass_list", pageBean_class.getList());
		model.addAttribute("goodsSubClass_list", pageBean_sub_class.getList());
		model.addAttribute("goods_list", pageBean.getList());
		model.addAttribute("page",pageBean);
		List<Goods> list = pageBean.getList();
		for (Goods goods : list) {
			System.out.println(goods.getCode());
		}
		return "goods/show_goods_list";
	}
	
	@RequestMapping(value="/add_goods.do", method = RequestMethod.POST)
	@ResponseBody 
	public Map<String, String> save_goods(@RequestBody Goods goods,String sub_class_id,String buy_date,String off_date) {
		Map<String, String> map = new HashMap<String, String>();
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			if(buy_date!=null && !("").equals(buy_date)) {
				Date buy = Date.parseDate(buy_date,sdf);
				goods.setBuy_date(buy);
			}
			if(off_date!=null && !("").equals(off_date)) {
				Date off = Date.parseDate(off_date,sdf);
				goods.setOff_date(off);
			}
			if(sub_class_id!=null && !("").equals(sub_class_id)) {
				GoodsSubClass g  = goodsService.getGoodsSubClassbyId(Integer.valueOf(sub_class_id).intValue());
				goods.setGoodsSubClass(g);
			}
			if(goods.getId()==0){				
				goodsService.addGoods(goods);
			}
			else{
				goodsService.updateGoods(goods);
			}
			map.put("flag", "1");
			map.put("id", String.valueOf(goods.getId()));
		} catch (Exception e) {
			logger.error("操作装备失败",e);
			map.put("flag", "0");
		}
		return map;
	}
	
	@RequestMapping(value="/get_goods.do", method = RequestMethod.GET)
	@ResponseBody 
	public Map<String, Object> get_goods(int id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Goods g = goodsService.getGoods(id);
			map.put("flag", "1");
			map.put("goods", g);
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			if(g.getBuy_date()!=null) {
			map.put("buy_date", df.format(g.getBuy_date()));
			}
			if(g.getOff_date()!=null) {
			map.put("off_date", df.format(g.getOff_date()));
			}
		} catch (Exception e) {
			logger.error("查询装备失败",e);
			map.put("flag", "0");
		}
		
		return map;
	}
    @RequestMapping("/show_good.do")
	public String show_goods(int id,Model model) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Goods g = goodsService.getGoods(id);
			model.addAttribute("goods", g);
			map.put("flag", "1");
			model.addAttribute("flag", "1");
			map.put("goods", g);
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			if(g.getBuy_date()!=null) {
			map.put("buy_date", df.format(g.getBuy_date()));
			model.addAttribute("buy_date", df.format(g.getBuy_date()));
			}
			if(g.getOff_date()!=null) {
			map.put("off_date", df.format(g.getOff_date()));
			model.addAttribute("off_date", df.format(g.getOff_date()));
			}
		} catch (Exception e) {
			logger.error("查询装备失败",e);
			map.put("flag", "0");
			model.addAttribute("flag", "0");
		}
		return "goods/show_good";
	}
	@RequestMapping(value="/delete_goods.do", method = RequestMethod.GET)
	@ResponseBody 
	public Map<String, Object> delete_goods(int id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			goodsService.deleteGoods(id);
			map.put("flag", "1");
		} catch (Exception e) {
			logger.error("删除装备失败",e);
			map.put("flag", "0");
		}
		
		return map;
	}
	
	@RequestMapping("/search_goods_list.do")
	public String search_goods_list(String name,String status,String class_id,String sub_class_id,String page_num,Model model) throws Exception {
		Map<String,String> map=new HashMap<String,String>();
		if(name!=null && !("").equals(name)){
			map.put("name", name);
		}
		if(sub_class_id!=null && !("").equals(sub_class_id)){
			map.put("sub_class_id", sub_class_id);
		}
		if(status!=null && !("").equals(status)){
			map.put("status", status);
		}
		if(page_num ==null){
			page_num = "1";
		}
		
		PageBean pageBean = goodsService.searchGoods(map,super.getPageSize(), Integer.valueOf(page_num));
		PageBean pageBean_class = goodsService.searchGoodsClasses(new HashMap(), 100, 1);
		PageBean pageBean_sub_class = goodsService.searchGoodsSubClasses(new HashMap(), 100, 1);
		
		model.addAttribute("name", name);
		model.addAttribute("class_id", class_id);
		model.addAttribute("sub_class_id", sub_class_id);
		model.addAttribute("status", status);
		model.addAttribute("goodsClass_list", pageBean_class.getList());
		model.addAttribute("goodsSubClass_list", pageBean_sub_class.getList());
		model.addAttribute("goods_list", pageBean.getList());
		model.addAttribute("page",pageBean);
		
		return "goods/search_goods_list";
	}

}
