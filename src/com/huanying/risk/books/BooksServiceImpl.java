package com.huanying.risk.books;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huanying.framework.BaseDao;
import com.huanying.framework.PageBean;

@Service
public class BooksServiceImpl implements BooksService {
	
private static Logger logger = Logger.getLogger(BooksServiceImpl.class);
	
	@Autowired
	private BaseDao dao;

	@Override
	public void addBooks(Books books) throws Exception {
		dao.save(books);

	}

	@Override
	public void updateBooks(Books books) throws Exception {
		dao.update(books);

	}

	@Override
	public void deleteBooks(int id) throws Exception {
		dao.delete(Books.class, id);

	}

	@Override
	public Books getBooksbyId(int id) throws Exception {
		return (Books)dao.load(Books.class, id);
	}

	@Override
	public PageBean searchBooks(Map<String, String> map, int pageSize, int page) throws Exception {
		StringBuilder hql = new StringBuilder("from Books where status=1");
		List<Object> params = new ArrayList<Object>();
		if(map.get("name")!=null && !("").equals(map.get("name"))){
			hql.append(" and name like ?");
			params.add("%"+map.get("name")+"%");
		}
		if(map.get("publish_company")!=null && !("").equals(map.get("publish_company"))){
			hql.append(" and publish_company like ?");
			params.add("%"+map.get("publish_company")+"%");
		}
		hql.append(" order by id desc");
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

}
