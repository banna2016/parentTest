package com.byl.manager.proxy.service;

import java.util.LinkedHashMap;

import org.springframework.data.domain.Pageable;

import com.byl.manager.common.utils.QueryResult;
import com.byl.manager.proxy.entity.ApplyProxy;

public interface ApplyProxyService {

	public void save(ApplyProxy entity);
	
	public QueryResult<ApplyProxy> getApplyProxyList(Class<ApplyProxy> entityClass,
			String whereJpql, Object[] queryParams,
			LinkedHashMap<String, String> orderby, Pageable pageable);
	
	public ApplyProxy getApplyProxyById(String id);
}
