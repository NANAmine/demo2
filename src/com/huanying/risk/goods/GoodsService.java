package com.huanying.risk.goods;

import java.util.Map;

import com.huanying.framework.PageBean;

public interface GoodsService {
	
	/**
	 * @param goodsSubClass
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public void addGoodsClass(GoodsClass goodsClass) throws Exception;
	
	/**
	 * @param goodsSubClass
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public void updateGoodsClass(GoodsClass goodsClass) throws Exception;
	
	/**
	 * @param id
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public void deleteGoodsClass(int id) throws Exception;
	
	/**
	 * @param id
	 * @return
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public GoodsClass getGoodsClassbyId(int id) throws Exception;
	
	/**
	 * @param map
	 * @param pageSize
	 * @param page
	 * @return
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2017年2月8日
	 */
	public PageBean searchGoodsClasses(Map<String,String> map,int pageSize,int page) throws Exception;
	
	/**
	 * @param goodsSubClass
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public void addGoodsSubClass(GoodsSubClass goodsSubClass) throws Exception;
	
	/**
	 * @param goodsSubClass
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public void updateGoodsSubClass(GoodsSubClass goodsSubClass) throws Exception;
	
	/**
	 * @param id
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public void deleteGoodsSubClass(int id) throws Exception;
	
	/**
	 * @param id
	 * @return
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public GoodsSubClass getGoodsSubClassbyId(int id) throws Exception;
	
	/**
	 * @param map
	 * @param pageSize
	 * @param page
	 * @return
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2017年2月8日
	 */
	public PageBean searchGoodsSubClasses(Map<String,String> map,int pageSize,int page) throws Exception;
	
	/**
	 * @param Goods
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public void addGoods(Goods goods) throws Exception;
	
	/**
	 * @param Goods
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public void updateGoods(Goods goods) throws Exception;
	
	/**
	 * @param id
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public void deleteGoods(int id) throws Exception;
	
	/**
	 * @param id
	 * @return
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public Goods getGoods(int id) throws Exception;
	
	/**
	 * @param map
	 * @param pageSize
	 * @param page
	 * @return
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2017年2月8日
	 */
	public PageBean searchGoods(Map<String,String> map,int pageSize,int page) throws Exception;

	public PageBean searchGoodsSubClasses2(Map<String, Object> map, int i, int j) throws Exception;

}
