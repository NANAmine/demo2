package com.huanying.risk.goods;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huanying.framework.BaseDao;
import com.huanying.framework.PageBean;

@Service
public class GoodsServiceImpl implements GoodsService {
	
	private static Logger logger = Logger.getLogger(GoodsServiceImpl.class);
	
	@Autowired
	private BaseDao dao;

	@Override
	public void addGoodsClass(GoodsClass goodsClass) throws Exception {
		dao.save(goodsClass);
		
	}

	@Override
	public void updateGoodsClass(GoodsClass goodsClass) throws Exception {
		dao.update(goodsClass);
		
	}

	@Override
	public void deleteGoodsClass(int id) throws Exception {
		dao.delete(GoodsClass.class, id);
		
	}

	@Override
	public GoodsClass getGoodsClassbyId(int id) throws Exception {
		return (GoodsClass)dao.load(GoodsClass.class, id);
	}

	@Override
	public PageBean searchGoodsClasses(Map<String, String> map, int pageSize, int page) throws Exception {
		StringBuilder hql = new StringBuilder("from GoodsClass where status=1");
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
	public void addGoodsSubClass(GoodsSubClass goodsSubClass) throws Exception {
		dao.save(goodsSubClass);
	}

	@Override
	public void updateGoodsSubClass(GoodsSubClass goodsSubClass) throws Exception {
		dao.update(goodsSubClass);
	}

	@Override
	public void deleteGoodsSubClass(int id) throws Exception {
		dao.delete(GoodsSubClass.class, id);
	}

	@Override
	public GoodsSubClass getGoodsSubClassbyId(int id) throws Exception {
		return (GoodsSubClass)dao.load(GoodsSubClass.class, id);
	}
	
	@Override
	public PageBean searchGoodsSubClasses(Map<String, String> map, int pageSize, int page) throws Exception {
		StringBuilder hql = new StringBuilder("from GoodsSubClass where status=1");
		List<Object> params = new ArrayList<Object>();
		if(map.get("name")!=null && !("").equals(map.get("name"))){
			hql.append(" and name like ?");
			params.add("%"+map.get("name")+"%");
		}
		if(map.get("class_id")!=null && !("").equals(map.get("class_id"))){
			hql.append(" and goodsClass.id=?");
			params.add("%"+map.get("class_id")+"%");
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
	public PageBean searchGoodsSubClasses2(Map<String, Object> map, int pageSize, int page) throws Exception {
		StringBuilder hql = new StringBuilder("from GoodsSubClass where status=1");
		List<Object> params = new ArrayList<Object>();
		System.out.println("class_id"+map.get("class_id"));
		if(map.get("class_id")!=null && !("").equals(map.get("class_id"))){
			hql.append(" and class_id=?");
			params.add(map.get("class_id"));
		}
		int allRow = dao.queryAllRowCount(hql.toString(), params);
		int totalPage = PageBean.countTotalPage(pageSize, allRow);
		final int offset = PageBean.countOffset(pageSize, page);
	    final int currentPage = PageBean.countCurrentPage(page);
	    List<Object> list = dao.queryForPageAndParams(hql.toString(), params, offset, pageSize);
	    for (Object object : list) {
			System.out.println(object.toString());
		}
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
	public void addGoods(Goods goods) throws Exception {
		dao.save(goods);
	}

	@Override
	public void updateGoods(Goods goods) throws Exception {
		dao.update(goods);
	}

	@Override
	public void deleteGoods(int id) throws Exception {
		dao.delete(Goods.class, id);
	}

	@Override
	public Goods getGoods(int id) throws Exception {
		return (Goods)dao.load(Goods.class, id);
	}

	@Override
	public PageBean searchGoods(Map<String, String> map, int pageSize, int page) throws Exception {
		StringBuilder hql = new StringBuilder("from Goods where 1=1");
		List<Object> params = new ArrayList<Object>();
		if(map.get("name")!=null && !("").equals(map.get("name"))){
			hql.append(" and name like ?");
			params.add("%"+map.get("name")+"%");
		}
		if(map.get("status")!=null && !("").equals(map.get("status"))){
			hql.append(" and status=?");
			params.add(Integer.valueOf(map.get("status")));
		}
		if(map.get("sub_class_id")!=null && !("").equals(map.get("sub_class_id"))){
			hql.append(" and goodsSubClass.id=?");
			params.add(Integer.valueOf(map.get("sub_class_id")));
		}
		if(map.get("code")!=null && !("").equals(map.get("code"))){
			hql.append(" and code=?");
			params.add(map.get("code"));
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
