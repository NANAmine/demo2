package com.huanying.risk.books;

import java.io.File;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.gexin.fastjson.JSONObject;
import com.huanying.framework.BaseController;
import com.huanying.framework.PageBean;
import com.huanying.framework.utils.Date;
import com.huanying.risk.content.Upload_File;


@Controller
public class BooksController extends BaseController {
	@Autowired
	private BooksService booksService;
	
	private static Logger logger = Logger.getLogger(BooksController.class);
	
	@RequestMapping("/show_add_book.do")
	public String show_add_content(Model model) throws Exception {
		
		return "books/show_add_book";
	}
	
	@RequestMapping("/show_books_list.do")
	public String show_books_list(String name,String publish_company,String page_num,Model model) throws Exception {
		Map<String,String> map=new HashMap<String,String>();
		if(name!=null && !("").equals(name)){
			map.put("name", name);
		}
		if(publish_company!=null && !("").equals(publish_company)){
			map.put("publish_company", publish_company);
		}
		if(page_num ==null){
			page_num = "1";
		}
		
		PageBean pageBean = booksService.searchBooks(map,super.getPageSize(), Integer.valueOf(page_num));
		
		model.addAttribute("name", name);
		model.addAttribute("publish_company", publish_company);
		model.addAttribute("books_list", pageBean.getList());
		model.addAttribute("page",pageBean);
		
		return "books/show_book_list";
	}
	
	@RequestMapping("/search_books_list.do")
	public String search_books_list(String name,String publish_company,String page_num,Model model) throws Exception {
		Map<String,String> map=new HashMap<String,String>();
		if(name!=null && !("").equals(name)){
			map.put("name", name);
		}
		if(publish_company!=null && !("").equals(publish_company)){
			map.put("publish_company", publish_company);
		}
		if(page_num ==null){
			page_num = "1";
		}
		
		PageBean pageBean = booksService.searchBooks(map,super.getPageSize(), Integer.valueOf(page_num));
		
		model.addAttribute("name", name);
		model.addAttribute("publish_company", publish_company);
		model.addAttribute("books_list", pageBean.getList());
		model.addAttribute("page",pageBean);
		
		return "books/search_book_list";
	}
	
	@RequestMapping("/update_book.do")
	public String update_book(int id,Model model) throws Exception {
		Map<String,String> map=new HashMap<String,String>();
		Books b = booksService.getBooksbyId(id);

		model.addAttribute("books",b);
		
		return "books/update_book";
	}
	
	@RequestMapping("/show_book.do")
	public String show_book(int id,Model model) throws Exception {
		Map<String,String> map=new HashMap<String,String>();
		Books b = booksService.getBooksbyId(id);

		model.addAttribute("books",b);
		
		return "books/show_book";
	}
	
	@RequestMapping(value="/add_books.do", method = RequestMethod.POST)
	@ResponseBody 
	public Map<String, String> save_book(@RequestBody Books books,String publish_date) {
		Map<String, String> map = new HashMap<String, String>();
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			if(publish_date!=null && !("").equals(publish_date)) {
				Date d = Date.parseDate(publish_date,sdf);
				books.setPublish_date(d);
			}
			
			books.setStatus(1);
			if(books.getId()==0){			
				booksService.addBooks(books);
			}
			else{
				booksService.updateBooks(books);
			}
			map.put("flag", "1");
			map.put("id", String.valueOf(books.getId()));
		} catch (Exception e) {
			logger.error("操作书籍失败",e);
			map.put("flag", "0");
		}
		return map;
	}
	
	@RequestMapping(value="/get_books.do", method = RequestMethod.GET)
	@ResponseBody 
	public Map<String, Object> get_books(int id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Books b = booksService.getBooksbyId(id);
			map.put("flag", "1");
			map.put("books", b);
		} catch (Exception e) {
			logger.error("查询书籍失败",e);
			map.put("flag", "0");
		}
		
		return map;
	}
	
	@RequestMapping(value="/delete_books.do", method = RequestMethod.GET)
	@ResponseBody 
	public Map<String, Object> delete_books(int id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			booksService.deleteBooks(id);
			map.put("flag", "1");
		} catch (Exception e) {
			logger.error("删除书籍失败",e);
			map.put("flag", "0");
		}
		
		return map;
	}
	
	@RequestMapping("/upload_book.do")
	@ResponseBody
	public String upload_file(@RequestParam("file")MultipartFile sortPicImg,String file_type,String book_id) throws Exception {
		JSONObject json = new JSONObject();
		if(book_id==null || ("").equals(book_id)){
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
		f.setContent_id(Integer.valueOf(book_id));
		
		
		String fileOldName = sortPicImg.getOriginalFilename();
		String fileName = book_id+"_"+System.currentTimeMillis()+fileOldName.substring(fileOldName.indexOf("."));
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
		}
		catch (Exception e) {
			logger.error("上传文件失败",e);
			json.put("msg","error");
			return json.toJSONString();
		}
		json.put("msg","success");
		return json.toJSONString();
	}
	
}
