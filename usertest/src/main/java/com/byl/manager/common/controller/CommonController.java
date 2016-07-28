package com.byl.manager.common.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.byl.manager.common.entity.City;
import com.byl.manager.common.entity.Province;
import com.byl.manager.common.service.CityService;
import com.byl.manager.common.service.ProvinceService;
import com.byl.manager.common.utils.Constants;

@RequestMapping("common")
@Controller
public class CommonController {
	
	@Autowired
	private ProvinceService provinceService;
	
	@Autowired
	private CityService cityService;
	
	 /**
	  * 
	 * @Description: TODO(获取省列表数据) 
	 * @author bann@sdfcp.com
	 * @date 2015年11月3日 下午4:34:26
	  */
	 @RequestMapping(value = "/getProvinceList", method = RequestMethod.POST)
		public @ResponseBody List<Province> getProvinceList(
				@RequestParam(value="isHasall",required=false) boolean isHasall,
				ModelMap model,HttpSession httpSession) throws Exception
		{
		 	
		 	List<Province> provinceList = provinceService.findAll();
		 	
		 	//11/4:现阶段业务定义为省份区域为必选，不可选择全部，而市级区域可以选择全部
		 	if(isHasall)
		 	{
		 		Province provineall = new Province();
			 	provineall.setPcode(Constants.PROVINCE_ALL);
			 	provineall.setPname(Constants.PROVINCE_ALL_NAME);	
			 	provinceList.add(provineall);
		 	}
		 	
		 	
		 	return provinceList;
		}
	 
	 /**
	  * 
	 * @Description: TODO(获取省级联的市数据) 
	 * @author bann@sdfcp.com
	 * @date 2015年11月3日 下午4:43:25
	  */
	 @RequestMapping(value = "/getCityList", method = RequestMethod.POST)
		public @ResponseBody List<City> getCityList(
				@RequestParam(value="pcode",required=false) String pcode,
				@RequestParam(value="isHasall",required=false) boolean isHasall,
				ModelMap model,HttpSession httpSession) throws Exception
		{
		 	
		 	List<City> cities = cityService.findCitiesOfProvice(pcode);
		 	if(!isHasall){
			 	return cities;
		 	}else{
		 		City cityall = new City();
			 	cityall.setCcode(Constants.CITY_ALL);
			 	cityall.setCname(Constants.CITY_ALL_NAME);
			 	cities.add(cityall);
		 	}
		 	return cities;
		}

}
