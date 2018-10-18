package com.huanying.risk.syslog;

import java.util.Map;

import com.huanying.framework.PageBean;
import com.huanying.risk.books.Books;

public interface SystemLogService {
	/**
	 * @param systemlog
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public void addSystemLog(SystemLog systemlog) throws Exception;
	
	/**
	 * @param systemlog
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public void updateSystemLog(SystemLog systemlog) throws Exception;
	
	/**
	 * @param id
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public void deleteSystemLog(int id) throws Exception;
	
	/**
	 * @param id
	 * @return
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public SystemLog getSystemLogbyId(int id) throws Exception;
	
	/**
	 * @param map
	 * @param pageSize
	 * @param page
	 * @return
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2017年2月8日
	 */
	public PageBean searchSystemLog(Map<String,String> map,int pageSize,int page) throws Exception;
}
