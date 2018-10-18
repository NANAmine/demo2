package com.huanying.risk.content;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.gexin.fastjson.JSONObject;
import com.huanying.framework.BaseController;
import com.huanying.framework.PageBean;
import com.huanying.framework.utils.Date;
import com.huanying.risk.goods.GoodsClass;
import com.huanying.risk.point.PointService;
import com.huanying.risk.point.Risk_Point;
import com.huanying.risk.source.Risk_Source;
import com.huanying.risk.source.SourceService;

@Controller
public class ContentController extends BaseController {

	@Autowired
	private ContentService contentService;
	@Autowired
	private SourceService sourceService;
	@Autowired
	private PointService pointService;
	private static Logger logger = Logger.getLogger(ContentController.class);
	
	@RequestMapping("/show_point_list.do")
	public String show_point_list(String province_id,String source_id,String type,Model model) throws Exception {
		if(source_id!=null && !("").equals(source_id)){
			Map m = new HashMap();
			m.put("source_id", Integer.valueOf(source_id));
			PageBean pageBean_point = pointService.searchPoints(m, 100, 1);
			model.addAttribute("points", pageBean_point.getList());
			model.addAttribute("page",pageBean_point);
		}
		
		PageBean pageBean_province = contentService.searchProvince(new HashMap(), 100, 1);
		PageBean pageBean_source = sourceService.searchSources(new HashMap(), 100, 1);
		
		model.addAttribute("sources", pageBean_source.getList());
		model.addAttribute("provinces", pageBean_province.getList());
		model.addAttribute("province_id", province_id);
		model.addAttribute("source_id", source_id);
		model.addAttribute("type", type);
		
		return "content/show_point_list";
	}
	
	@RequestMapping("/show_content_list.do")
	public String show_content_list(String class_id,String sub_class_id,String title,String page_num,Model model) throws Exception {
		
		Map m = new HashMap();
		m.put("level", 1);
		PageBean p_class = contentService.searchCententClass(m, 100, 1);
		m.put("level", 2);
		PageBean p_sub_class = contentService.searchCententClass(m, 100, 1);
		m.clear();
		if(sub_class_id!=null && !("").equals(sub_class_id)) {
			m.put("class_id", Integer.valueOf("sub_class_id").intValue());
		}
		else {
			if(class_id!=null && !("").equals(class_id)) {
				m.put("class_id", Integer.valueOf("class_id").intValue());
			}
		}
		if(title!=null && !("").equals(title)) {
			m.put("title", title);
		}
		if(page_num ==null){
			page_num = "1";
		}
		PageBean p_content_list = contentService.searchContent(m, super.getPageSize(), Integer.valueOf(page_num));
		model.addAttribute("content_class_list", p_class.getList());
		model.addAttribute("content_sub_class_list", p_sub_class.getList());
		model.addAttribute("content_list", p_content_list.getList());
		return "content/show_content_list";
	}
	
	@RequestMapping("/show_add_content.do")
	public String show_add_content(Model model) throws Exception {
		
		Map m = new HashMap();
		m.put("level", 1);
		PageBean p_class = contentService.searchCententClass(m, 100, 1);
		m.put("level", 2);
		PageBean p_sub_class = contentService.searchCententClass(m, 100, 1);
		model.addAttribute("content_class_list", p_class.getList());
		model.addAttribute("content_sub_class_list", p_sub_class.getList());
		return "content/show_add_content";
	}
	
	@RequestMapping(value="/save_content.do", method = RequestMethod.POST)
	@ResponseBody 
	public Map<String, String> save(@RequestBody Content content,String class_id,String sub_class_id,String create_time) {
		Map<String, String> map = new HashMap<String, String>();
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			if(create_time!=null && !("").equals(create_time)) {
				Date d = Date.parseDate(create_time,sdf);
				content.setCreate_date(d);
			}
			if(sub_class_id!=null && !("").equals(sub_class_id)) {
				ContentClass c = contentService.getContentClassbyId(Integer.valueOf(sub_class_id).intValue());
				content.setContentClass(c);
			}
			else {
				if(class_id!=null && !("").equals(class_id)) {
					ContentClass c = contentService.getContentClassbyId(Integer.valueOf(class_id).intValue());
					content.setContentClass(c);
				}
			}
			content.setStatus(1);
			if(content.getId()==0){
				contentService.add(content);
				map.put("id", String.valueOf(content.getId()));
				map.put("flag", "1");
			}
			else{
				contentService.update(content);
				map.put("flag", "1");
			}
		} catch (Exception e) {
			logger.error("操作事件失败",e);
			map.put("flag", "0");
		}
		return map;
	}
	@RequestMapping(value="/delete_content.do", method = RequestMethod.GET)
	@ResponseBody 
	public Map<String, Object> delete_content(int id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			contentService.delete(id);
			map.put("flag", "1");
		} catch (Exception e) {
			logger.error("删除事件失败",e);
			map.put("flag", "0");
		}
		
		return map;
	}
	
	@RequestMapping(value="/show_content.do", method = RequestMethod.GET)
	public String show_content(int id,Model model) {
		try {
			Content c = contentService.getbyId(id);
			model.addAttribute("content", c);
			Map m = new HashMap();
			m.put("content_id", 1);
			m.put("type", 2);
			PageBean pageBean = contentService.searchFile(m, 100, 1);
			List file_list = pageBean.getList();
			model.addAttribute("file_list",file_list);
		} catch (Exception e) {
			logger.error("获取事件失败",e);
		}
		
		return "content/show_content";
	}
	
	@RequestMapping("/show_grade_content.do")
	public String show_grade_content(String province_id,String point_id,Model model) throws Exception {
		Map m = new HashMap();
		m.put("point_id", Integer.valueOf(point_id));
		m.put("province_id", Integer.valueOf(province_id));
		Province p = contentService.getProvincebyId(Integer.valueOf(province_id));
		Risk_Point point = pointService.getbyId(Integer.valueOf(point_id));
		PageBean pageBean = contentService.searchContent(m, 1, 1);
		List content_list = pageBean.getList();
		Content c = new Content();
		if(content_list.size()>0){
			c = (Content)content_list.get(0);
		}
		else{
			Risk_Point po = new Risk_Point();
			po.setId(Integer.valueOf(point_id));
			c.setStatus(1);
			contentService.add(c);
		}
		m.clear();
		m.put("content_id", c.getId());
		m.put("type", 1);
		pageBean = contentService.searchFile(m, 100, 1);
		List image_list = pageBean.getList();
		model.addAttribute("image_list",image_list);
		m.put("type", 2);
		pageBean = contentService.searchFile(m, 100, 1);
		List file_list = pageBean.getList();
		model.addAttribute("file_list",file_list);
		m.put("type", 3);
		pageBean = contentService.searchFile(m, 100, 1);
		List video_list = pageBean.getList();
		model.addAttribute("video_list",video_list);
		model.addAttribute("content",c);
		model.addAttribute("province",p);
		model.addAttribute("point",point);
		
		return "content/show_grade_content";
	}
	
	@RequestMapping("/upload_file.do")
	@ResponseBody
	public String upload_file(@RequestParam("file")MultipartFile sortPicImg,String file_type,String content_id) throws Exception {
		JSONObject json = new JSONObject();
		if(content_id==null || ("").equals(content_id)){
			json.put("msg","error");
			return json.toJSONString();
		}
		if(file_type==null || ("").equals(file_type)){
			json.put("msg","error");
			return json.toJSONString();
		}
		
		String path = ("fileUpload");
		Upload_File f = new Upload_File();
		if(file_type.equals("1")){
			path=path+File.separator+"image";
			f.setType(1);
		}
		if(file_type.equals("2")){
			path=path+File.separator+"file";
			f.setType(2);
		}
		if(file_type.equals("3")){
			path=path+File.separator+"video";
			f.setType(3);
		}
		f.setContent_id(Integer.valueOf(content_id));
		
		
		String fileOldName = sortPicImg.getOriginalFilename();
		String fileName = content_id+"_"+System.currentTimeMillis()+fileOldName.substring(fileOldName.indexOf("."));
		File targetFile = new File(super.getSession().getServletContext().getRealPath(path), fileName);
		f.setFile_name(fileName);
		f.setPath(path+File.separator+fileName);
		f.setStatus(1);
		if(!targetFile.exists()){
			targetFile.mkdirs();
		}
		//保存
		try{
			sortPicImg.transferTo(targetFile);
			contentService.add_file(f);
		}
		catch (Exception e) {
			logger.error("上传文件失败",e);
			json.put("msg","error");
			return json.toJSONString();
		}
		json.put("msg","success");
		return json.toJSONString();
	}
	
	@RequestMapping("/delete_file.do")
	@ResponseBody
	public Map<String, String> delete_file(int id) {
		Map<String, String> map = new HashMap<String, String>();
		try {
			Upload_File f = contentService.getFilebyId(id);
			File targetFile = new File(f.getPath());
			targetFile.delete();
			contentService.deleteFile(id);
			map.put("flag", "1");
		} catch (Exception e) {
			map.put("flag", "0");
		}
		
		return map;
	}
	
	
	
	@RequestMapping(value="/get_content.do", method = RequestMethod.GET)
	@ResponseBody 
	public Map<String, Object> get_client(int id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Risk_Point p = pointService.getbyId(id);
			map.put("flag", "1");
			map.put("point", p);
		} catch (Exception e) {
			logger.error("查询监测点失败",e);
			map.put("flag", "0");
		}
		
		return map;
	}
	
	@RequestMapping("/point_list.do")
	public String point_list(String province_id,String source_id,Model model) throws Exception {
		Map m = new HashMap();
		
//		Risk_Source s = (Risk_Source)sourceService.getbyId(Integer.valueOf(source_id));
//		Province p = contentService.getProvincebyId(Integer.valueOf(province_id));
//		
//		m.put("source_id", Integer.valueOf(source_id));
//		PageBean pageBean = pointService.searchPoints(m, 100, 1);
//		List point_list = pageBean.getList();
//		
//		m.clear();
//		m.put("source_id", Integer.valueOf(source_id));
//		m.put("province_id", Integer.valueOf(province_id));
//		pageBean = contentService.searchContent(m, 100, 1);
//		List content_list = pageBean.getList();
//		Map<Integer,Content> content_map = new HashMap<Integer,Content>();
//		for(int i=0; i<content_list.size(); i++){
//			Content t = (Content)content_list.get(i);
//			content_map.put(t.getPoint().getId(), t);
//		}
//		
//		
//		List content_point_list = new ArrayList();
//		for(int i=0; i<point_list.size(); i++){
//			Map<String,Object> point_content_map = new HashMap<String,Object>();
//			Risk_Point point = (Risk_Point)point_list.get(i);
//			Content content = content_map.get(point.getId());
//			point_content_map.put("point", point);
//			if(content==null){
//				point_content_map.put("score", 0);
//				point_content_map.put("content_id", 0);
//			}
//			else{
//				point_content_map.put("score", content.getScore());
//				point_content_map.put("content_id", content.getId());
//			}
//			content_point_list.add(point_content_map);
//		}
//		
//		model.addAttribute("content_point_list",content_point_list);
//		model.addAttribute("source",s);
//		model.addAttribute("province",p);
		return "content/point_list";
	}
	
	@RequestMapping("/point_list_new.do")
	public String point_list_new(String province_id,String source_id,Model model) throws Exception {

		return "content/point_list_new";
	}
	
	@RequestMapping("/point_detail.do")
	public String point_detail(int content_id,Model model) throws Exception {
		
		if(content_id == 0){
			model.addAttribute("content",null);
		}
		else{
			Content c = contentService.getbyId(Integer.valueOf(content_id));
			model.addAttribute("content",c);
			Map m = new HashMap();
			m.put("content_id", c.getId());
			m.put("type", 1);
			PageBean pageBean = contentService.searchFile(m, 100, 1);
			List image_list = pageBean.getList();
			model.addAttribute("image_list",image_list);
			m.put("type", 2);
			pageBean = contentService.searchFile(m, 100, 1);
			List file_list = pageBean.getList();
			model.addAttribute("file_list",file_list);
			m.put("type", 3);
			pageBean = contentService.searchFile(m, 100, 1);
			List video_list = pageBean.getList();
			model.addAttribute("video_list",video_list);
		}
		
		return "content/point_detail";
	}
	
}
