package com.huanying.risk.books;

import java.util.Map;

import com.huanying.framework.PageBean;

public interface BooksService {
	/**
	 * @param goodsSubClass
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public void addBooks(Books books) throws Exception;
	
	/**
	 * @param goodsSubClass
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public void updateBooks(Books books) throws Exception;
	
	/**
	 * @param id
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public void deleteBooks(int id) throws Exception;
	
	/**
	 * @param id
	 * @return
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public Books getBooksbyId(int id) throws Exception;
	
	/**
	 * @param map
	 * @param pageSize
	 * @param page
	 * @return
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2017年2月8日
	 */
	public PageBean searchBooks(Map<String,String> map,int pageSize,int page) throws Exception;
}
