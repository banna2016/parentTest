package com.byl.manager.proxy.service;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Pageable;

import com.byl.manager.common.exception.BizException;
import com.byl.manager.common.utils.QueryResult;
import com.byl.manager.proxy.dto.AccountBean;
import com.byl.manager.proxy.dto.UserRelaRoleBean;
import com.byl.manager.proxy.entity.Role;
import com.byl.manager.proxy.entity.User;
import com.byl.manager.proxy.entity.UserRelaRole;



/** 
  * @ClassName: UserService 
  * @Description:  
  * @author songj@sdfcp.com
  * @date 2015年10月12日 上午11:00:15 
  *  
  */
public interface UserService {
	
	

	
	
	/** 
	  * @Description: 业务层查询用户列表
	  * @author songj@sdfcp.com
	  * @date 2015年12月2日 下午2:08:51 
	  * @param entityClass
	  * @param whereJpql
	  * @param queryParams
	  * @param orderby
	  * @param pageable
	  * @return 
	  */
	public QueryResult<User> getAgentList(Class<User> entityClass, String whereJpql, Object[] queryParams, 
			LinkedHashMap<String, String> orderby, Pageable pageable);
	
}
