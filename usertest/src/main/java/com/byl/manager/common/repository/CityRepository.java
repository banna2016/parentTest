package com.byl.manager.common.repository;


import org.springframework.data.jpa.repository.Query;

import com.byl.manager.common.entity.City;


public interface CityRepository extends GenericRepository<City, String> {

	/**
	 * 
	* @Description: 根据ccode查询城市信息
	* @author bann@sdfcp.com
	* @date 2015年11月5日 上午9:32:22
	 */
	@Query("select u from City u where  u.ccode =?1")
	public City getCityByCcode(String ccode);
}
