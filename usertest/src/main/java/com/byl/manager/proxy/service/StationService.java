package com.byl.manager.proxy.service;

import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.data.domain.Pageable;

import com.byl.manager.common.utils.QueryResult;
import com.byl.manager.proxy.entity.Station;




/** 
  * @ClassName: StationService 
  * @Description: 站点业务层
  * @author songj@sdfcp.com
  * @date 2015年10月21日 上午10:52:29 
  *  
  */
public interface StationService {
	
	public QueryResult<Station> getStationList(Class<Station> entityClass, String whereJpql, Object[] queryParams, 
			LinkedHashMap<String, String> orderby, Pageable pageable);
	
}
