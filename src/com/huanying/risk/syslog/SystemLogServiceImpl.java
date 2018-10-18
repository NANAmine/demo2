package com.huanying.risk.syslog;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huanying.framework.BaseDao;
import com.huanying.framework.PageBean;
import com.huanying.risk.books.Books;

@Service
public class SystemLogServiceImpl implements SystemLogService {
	
	@Autowired
	private BaseDao dao;
	
	@Override
	public void addSystemLog(SystemLog systemlog) throws Exception {
		dao.save(systemlog);
	}

	@Override
	public void updateSystemLog(SystemLog systemlog) throws Exception {
		dao.update(systemlog);
	}

	@Override
	public void deleteSystemLog(int id) throws Exception {
		dao.delete(Books.class, id);
	}

	@Override
	public SystemLog getSystemLogbyId(int id) throws Exception {
		return (SystemLog)dao.load(SystemLog.class, id);
	}

	@Override
	public PageBean searchSystemLog(Map<String, String> map, int pageSize, int page) throws Exception {
		StringBuilder hql = new StringBuilder("from SystemLog where status=1");
		List<Object> params = new ArrayList<Object>();
		if(map.get("type")!=null && !("").equals(map.get("type"))){
			hql.append(" and type = ?");
			params.add(Integer.valueOf(map.get("type")).intValue());
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
