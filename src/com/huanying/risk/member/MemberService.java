package com.huanying.risk.member;

import java.util.Map;

import com.huanying.framework.PageBean;

public interface MemberService {
	
	/**
	 * @param member
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public void addMember(Member member) throws Exception;
	
	/**
	 * @param member
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public void updateMember(Member member) throws Exception;
	
	/**
	 * @param id
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public void deleteMember(int id) throws Exception;
	
	/**
	 * @param id
	 * @return
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public Member getMemberbyId(int id) throws Exception;
	
	/**
	 * @param map
	 * @param pageSize
	 * @param page
	 * @return
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2017年2月8日
	 */
	public PageBean searchMember(Map<String,String> map,int pageSize,int page) throws Exception;
	
	/**
	 * @param id
	 * @return
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2016年12月16日
	 */
	public Position getPositionbyId(int id) throws Exception;
	
	/**
	 * @param map
	 * @param pageSize
	 * @param page
	 * @return
	 * @throws Exception
	 * @author Alan Yu
	 * @date 2017年2月8日
	 */
	public PageBean searchPoistion(Map<String,String> map,int pageSize,int page) throws Exception;

}
