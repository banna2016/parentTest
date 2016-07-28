package com.byl.manager.proxy.service.impl;

import java.util.LinkedHashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.byl.manager.common.utils.QueryResult;
import com.byl.manager.proxy.entity.ApplyProxy;
import com.byl.manager.proxy.repository.ApplyProxyRepository;
import com.byl.manager.proxy.service.ApplyProxyService;

@Service("applyProxyService")
@Transactional(propagation= Propagation.REQUIRED)
public class ApplyProxyServiceImpl implements ApplyProxyService {
	
	@Autowired
	private ApplyProxyRepository applyProxyRepository;

	public void save(ApplyProxy entity) {
		applyProxyRepository.save(entity);
	}
	
	public QueryResult<ApplyProxy> getApplyProxyList(Class<ApplyProxy> entityClass,
			String whereJpql, Object[] queryParams,
			LinkedHashMap<String, String> orderby, Pageable pageable) {
		QueryResult<ApplyProxy> applyProxys = applyProxyRepository.getScrollDataByJpql(entityClass, whereJpql, queryParams,orderby, pageable);
		return applyProxys;
	}

	public ApplyProxy getApplyProxyById(String id) {
		return applyProxyRepository.getApplyProxyById(id);
	}


}
