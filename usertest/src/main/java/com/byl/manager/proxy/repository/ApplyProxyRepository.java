package com.byl.manager.proxy.repository;

import org.springframework.data.jpa.repository.Query;

import com.byl.manager.common.repository.GenericRepository;
import com.byl.manager.proxy.entity.ApplyProxy;


/** 
  * @ClassName: AuthRepository 
  * @Description: 权限 
  * @author songj@sdfcp.com
  * @date 2015年9月25日 上午8:24:21 
  *  
  */
public interface ApplyProxyRepository extends GenericRepository<ApplyProxy, String>  {
	
	
	@Query("select u from ApplyProxy u where u.isDeleted='1' and u.id =?1 ")
	public ApplyProxy getApplyProxyById(String id);
}
