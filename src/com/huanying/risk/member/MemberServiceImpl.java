package com.huanying.risk.member;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huanying.framework.BaseDao;
import com.huanying.framework.PageBean;

@Service
public class MemberServiceImpl implements MemberService {
	
	private static Logger logger = Logger.getLogger(MemberServiceImpl.class);
	
	@Autowired
	private BaseDao dao;

	@Override
	public void addMember(Member member) throws Exception {
		dao.save(member);
	}

	@Override
	public void updateMember(Member member) throws Exception {
		// TODO Auto-generated method stub
		dao.update(member);
	}

	@Override
	public void deleteMember(int id) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(Member.class, id);
	}

	@Override
	public Member getMemberbyId(int id) throws Exception {
		return (Member)dao.load(Member.class, id);
	}

	@Override
	public PageBean searchMember(Map<String, String> map, int pageSize, int page) throws Exception {
		StringBuilder hql = new StringBuilder("from Member where 1=1");
		List<Object> params = new ArrayList<Object>();
		if(map.get("name")!=null && !("").equals(map.get("name"))){
			hql.append(" and name like ?");
			params.add("%"+map.get("name")+"%");
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

	@Override
	public Position getPositionbyId(int id) throws Exception {
		return (Position)dao.load(Position.class, id);
	}
	
	@Override
	public PageBean searchPoistion(Map<String, String> map, int pageSize, int page) throws Exception {
		StringBuilder hql = new StringBuilder("from Position where status=1");
		List<Object> params = new ArrayList<Object>();
		if(map.get("name")!=null && !("").equals(map.get("name"))){
			hql.append(" and name like ?");
			params.add("%"+map.get("name")+"%");
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
