package com.byl.manager.proxy.service.impl;

import java.util.LinkedHashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.byl.manager.common.utils.QueryResult;
import com.byl.manager.proxy.entity.Station;
import com.byl.manager.proxy.repository.StationRepository;
import com.byl.manager.proxy.service.StationService;

/** 
  * @ClassName: AuthServiceImpl 
  * @Description: 
  * @author songj@sdfcp.com
  * @date 2015年9月25日 上午8:51:54 
  *  
  */
@Service("stationService")
@Transactional(propagation=Propagation.REQUIRED)
public class StationServiceImpl implements StationService {
	@Autowired
	private StationRepository stationRepository;




	public QueryResult<Station> getStationList(Class<Station> entityClass,
			String whereJpql, Object[] queryParams,
			LinkedHashMap<String, String> orderby, Pageable pageable) {
		QueryResult<Station> stationObj = stationRepository.getScrollDataByJpql(entityClass, whereJpql, queryParams,orderby, pageable);
		return stationObj;
	}

}
