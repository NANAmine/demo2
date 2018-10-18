package com.huanying.risk.content;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huanying.framework.BaseDao;
import com.huanying.framework.PageBean;
import com.huanying.risk.goods.GoodsClass;

@Service
public class ContentServiceImpl implements ContentService {
	
	private static Logger logger = Logger.getLogger(ContentServiceImpl.class);
	
	@Autowired
	private BaseDao dao;

	@Override
	public void add(Content content) throws Exception {
		dao.save(content);
	}
	
	@Override
	public void add_file(Upload_File file) throws Exception {
		dao.save(file);
	}

	@Override
	public void update(Content content) throws Exception {
		dao.update(content);
	}

	@Override
	public void delete(int id) throws Exception {
		List<Object> param = new ArrayList<Object>();
		String hql = "update Content set status=0 where id=?";
		param.add(id);
    	dao.exculeByParams(hql, param);
	}

	@Override
	public Content getbyId(int id) throws Exception {
		return (Content)dao.load(Content.class, id);
	}
	
	@Override
	public Province getProvincebyId(int id) throws Exception {
		return (Province)dao.load(Province.class, id);
	}

	@Override
	public PageBean searchContent(Map<String,String> map, int pageSize, int page) throws Exception {
		StringBuilder hql = new StringBuilder("from Content where status=1");
		List<Object> params = new ArrayList<Object>();
		if(map.get("class_id")!=null && !("").equals(map.get("class_id"))){
			hql.append(" and contentClass.id = ?");
			params.add(map.get("class_id"));
		}
		
		if(map.get("title")!=null && !("").equals(map.get("title"))){
			hql.append(" and title like ?");
			params.add("%"+map.get("title")+"%");
		}

		
		int allRow = dao.queryAllRowCount(hql.toString(), params);
		int totalPage = PageBean.countTotalPage(pageSize, allRow);
		final int offset = PageBean.countOffset(pageSize, page);
	    final int currentPage = PageBean.countCurrentPage(page);
	    List<Object> list = dao.queryForPageAndParams(hql.toString(), params, offset, pageSize);
	    
	    //把分页信息保存到Bean中
        PageBean pageBean = new PageBean();
        pageBean.setPageSize(pageSize);    
        pageBean.setCurrentPage(currentPage);
        pageBean.setAllRow(allRow);
        pageBean.setTotalPage(totalPage);
        pageBean.setList(list);
        pageBean.init();
		
		return pageBean;
	}
	
	@Override
	public PageBean searchCountry(Map<String, String> map, int pageSize, int page) throws Exception {
		StringBuilder hql = new StringBuilder("from Country where status=1");
		List<Object> params = new ArrayList<Object>();
		
		int allRow = dao.queryAllRowCount(hql.toString(), params);
		int totalPage = PageBean.countTotalPage(pageSize, allRow);
		final int offset = PageBean.countOffset(pageSize, page);
	    final int currentPage = PageBean.countCurrentPage(page);
	    List<Object> list = dao.queryForPageAndParams(hql.toString(), params, offset, pageSize);
	    
	    //把分页信息保存到Bean中
        PageBean pageBean = new PageBean();
        pageBean.setPageSize(pageSize);    
        pageBean.setCurrentPage(currentPage);
        pageBean.setAllRow(allRow);
        pageBean.setTotalPage(totalPage);
        pageBean.setList(list);
        pageBean.init();
		
		return pageBean;
	}

	@Override
	public PageBean searchProvince(Map<String, String> map, int pageSize, int page) throws Exception {
		StringBuilder hql = new StringBuilder("from Province where status=1");
		List<Object> params = new ArrayList<Object>();
		if(map.get("country_id")!=null && !("").equals(map.get("country_id"))){
			hql.append(" and country_id = ?");
			params.add(map.get("country_id"));
		}
		
		int allRow = dao.queryAllRowCount(hql.toString(), params);
		int totalPage = PageBean.countTotalPage(pageSize, allRow);
		final int offset = PageBean.countOffset(pageSize, page);
	    final int currentPage = PageBean.countCurrentPage(page);
	    List<Object> list = dao.queryForPageAndParams(hql.toString(), params, offset, pageSize);
	    
	    //把分页信息保存到Bean中
        PageBean pageBean = new PageBean();
        pageBean.setPageSize(pageSize);    
        pageBean.setCurrentPage(currentPage);
        pageBean.setAllRow(allRow);
        pageBean.setTotalPage(totalPage);
        pageBean.setList(list);
        pageBean.init();
		
		return pageBean;
	}
	
	@Override
	public PageBean searchFile(Map<String, String> map, int pageSize, int page) throws Exception {
		StringBuilder hql = new StringBuilder("from Upload_File where status=1");
		List<Object> params = new ArrayList<Object>();
		if(map.get("content_id")!=null && !("").equals(map.get("content_id"))){
			hql.append(" and content_id = ?");
			params.add(map.get("content_id"));
		}
		
		if(map.get("type")!=null && !("").equals(map.get("type"))){
			hql.append(" and type = ?");
			params.add(map.get("type"));
		}
		
		int allRow = dao.queryAllRowCount(hql.toString(), params);
		int totalPage = PageBean.countTotalPage(pageSize, allRow);
		final int offset = PageBean.countOffset(pageSize, page);
	    final int currentPage = PageBean.countCurrentPage(page);
	    List<Object> list = dao.queryForPageAndParams(hql.toString(), params, offset, pageSize);
	    
	    //把分页信息保存到Bean中
        PageBean pageBean = new PageBean();
        pageBean.setPageSize(pageSize);    
        pageBean.setCurrentPage(currentPage);
        pageBean.setAllRow(allRow);
        pageBean.setTotalPage(totalPage);
        pageBean.setList(list);
        pageBean.init();
		
		return pageBean;
	}

	@Override
	public void deleteFile(int id) throws Exception {
    	dao.delete(Upload_File.class, id);
	}

	@Override
	public Upload_File getFilebyId(int id) throws Exception {
		Upload_File f = (Upload_File)dao.load(Upload_File.class, id);
		return f;
	}

	@Override
	public PageBean searchCententClass(Map<String, String> map, int pageSize, int page) throws Exception {
		StringBuilder hql = new StringBuilder("from ContentClass where status=1");
		List<Object> params = new ArrayList<Object>();
		if(map.get("level")!=null && !("").equals(map.get("level"))){
			hql.append(" and level = ?");
			params.add(map.get("level"));
		}
		
		int allRow = dao.queryAllRowCount(hql.toString(), params);
		int totalPage = PageBean.countTotalPage(pageSize, allRow);
		final int offset = PageBean.countOffset(pageSize, page);
	    final int currentPage = PageBean.countCurrentPage(page);
	    List<Object> list = dao.queryForPageAndParams(hql.toString(), params, offset, pageSize);
	    
	    //把分页信息保存到Bean中
        PageBean pageBean = new PageBean();
        pageBean.setPageSize(pageSize);    
        pageBean.setCurrentPage(currentPage);
        pageBean.setAllRow(allRow);
        pageBean.setTotalPage(totalPage);
        pageBean.setList(list);
        pageBean.init();
		
		return pageBean;
	}

	@Override
	public ContentClass getContentClassbyId(int id) throws Exception {
		return (ContentClass)dao.load(ContentClass.class, id);
	}

}
