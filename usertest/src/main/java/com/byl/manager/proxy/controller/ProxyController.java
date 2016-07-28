package com.byl.manager.proxy.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.byl.manager.common.beans.ResultBean;
import com.byl.manager.common.entity.City;
import com.byl.manager.common.entity.Province;
import com.byl.manager.common.service.CityService;
import com.byl.manager.common.service.ProvinceService;
import com.byl.manager.common.utils.Constants;
import com.byl.manager.common.utils.DateUtil;
import com.byl.manager.common.utils.QueryResult;
import com.byl.manager.proxy.dto.AgentListDto;
import com.byl.manager.proxy.entity.ApplyProxy;
import com.byl.manager.proxy.entity.Station;
import com.byl.manager.proxy.entity.User;
import com.byl.manager.proxy.service.ApplyProxyService;
import com.byl.manager.proxy.service.StationService;
import com.byl.manager.proxy.service.UserService;

@RequestMapping("proxy")
@Controller
public class ProxyController
{
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private CityService cityService;
	
	@Autowired
	private ProvinceService provinceService;
	
	@Autowired
	private ApplyProxyService applyProxyService;
	
	@Autowired
	private StationService stationService;
	
	/**
	 * 
	 * @Title: visit
	 * @Description: 跳转到首页
	 * @author:banna
	 * @return: String
	 */
	@RequestMapping(value = "/visit", method = RequestMethod.GET)
	public String visit()
	{
		String indexPage = "index";
		
		
		return indexPage;
	}
	
	@RequestMapping(value = "/anli", method = RequestMethod.GET)
	public String anli()
	{
		String indexPage = "about-us";
		
		
		return indexPage;
	}
	
	@RequestMapping(value = "/chanpin", method = RequestMethod.GET)
	public String chanpin()
	{
		String indexPage = "portfolio";
		
		
		return indexPage;
	}
	
	@RequestMapping(value = "/jiameng", method = RequestMethod.GET)
	public String jiameng()
	{
		String indexPage = "contact-us";
		
		
		return indexPage;
	}
	
	
	/**
	 * 
	 * @Title: getAgentList
	 * @Description: TODO:申请代理（申请代理后，公司要有申请代理审批模块如果审批成功则会电话通知成功加盟（后台内容））
	 * @author:banna
	 * @return: Map<String,Object>
	 */
		@RequestMapping(value = "/applyProxy", method = RequestMethod.GET)
		public @ResponseBody ResultBean applyProxy(ModelMap model,HttpSession httpSession,
				@RequestParam(value="name",required=false) String name,
				@RequestParam(value="address",required=false) String address,
				@RequestParam(value="province",required=false) String province,
				@RequestParam(value="city",required=false) String city,
				@RequestParam(value="remark",required=false) String remark,
				@RequestParam(value="isConnect",required=false) String isConnect,//是否为彩票相关从业者
				@RequestParam(value="telephone",required=false) String telephone
				) throws Exception
		{
			ResultBean resultBean = new ResultBean();
			
			ApplyProxy applyProxy = new ApplyProxy();
			
			applyProxy.setName(name);
			applyProxy.setAddress(address);
			applyProxy.setProvince(province);
			applyProxy.setCity(city);
			applyProxy.setRemark(remark);
			applyProxy.setIsConnect(isConnect);
			applyProxy.setTelephone(telephone);
			applyProxy.setStatus("0");//默认是未回访状态
			applyProxy.setIsDeleted(Constants.IS_NOT_DELETED);
			applyProxy.setCreater(name);
			applyProxy.setCreaterTime(new Timestamp(System.currentTimeMillis()));
			applyProxy.setModify(name);
			applyProxy.setModifyTime(new Timestamp(System.currentTimeMillis()));
			
			applyProxyService.save(applyProxy);
			
			
			resultBean.setMessage("申请成功");
			return resultBean;
		}
		
		/**
		 * 
		 * @Title: countStations
		 * @Description: TODO:获取当前正在使用产品的通行证数量（方案一：统计通行证数；
		 * 				方案二：统计通行证购买的应用数量，例如：如果一个通行证使用三个应用则算三个用户）
		 * @author:banna
		 * @return: ResultBean
		 */
		@RequestMapping(value = "/countStations", method = RequestMethod.GET)
		public @ResponseBody ResultBean countStations(ModelMap model,HttpSession httpSession) throws Exception
		{
			ResultBean resultBean = new ResultBean();
			
			Pageable pageable = new PageRequest(0, Integer.MAX_VALUE);
			//参数
			StringBuffer buffer = new StringBuffer();
			
			LinkedHashMap<String, String> orderBy = new LinkedHashMap<String, String>();
			orderBy.put("id", "desc");
			List<Object> params = new ArrayList<Object>();
			//只查询未删除数据
			params.add(Constants.IS_NOT_DELETED);//只查询有效的数据
			buffer.append(" isDeleted = ?").append(params.size());
			
			QueryResult<Station> stationList = stationService.getStationList(Station.class, buffer.toString(), params.toArray(),
					orderBy, pageable);
			
			long total = stationList.getTotalRecord();
			
			resultBean.setCount(total);
			
			
			return resultBean;
		}
				
	
	/**
	 * 
	 * @Title: getAgentList
	 * @Description: TODO:根据省市筛选代理信息
	 * @author:banna
	 * @return: Map<String,Object>
	 */
	@RequestMapping(value = "/getAgentList", method = RequestMethod.GET)
	public @ResponseBody List<AgentListDto> getAgentList(
			@RequestParam(value="province",required=false) String province,
			@RequestParam(value="city",required=false) String city,
			ModelMap model,HttpSession httpSession) throws Exception
	{
		Map<String,Object> returnData = new HashMap<String, Object>();
		Pageable pageable = new PageRequest(0, Integer.MAX_VALUE);
		//参数
		StringBuffer buffer = new StringBuffer();
		
		LinkedHashMap<String, String> orderBy = new LinkedHashMap<String, String>();
		orderBy.put("id", "desc");
		List<Object> params = new ArrayList<Object>();
		//只查询未删除数据
		params.add(Constants.IS_NOT_DELETED);//只查询有效的数据
		buffer.append(" a.IS_DELETED = ?").append(params.size());
		if(null != province && !"".equals(province)&& !Constants.PROVINCE_ALL.equals(province))
		{
			params.add(province);//根据省份查询产品数据
			buffer.append(" and a.province_Code = ?").append(params.size());
		}
		if(null != city && !"".equals(city)&& !Constants.CITY_ALL.equals(city))
		{
			params.add(city);//根据省份查询产品数据
			buffer.append(" and a.city_Code = ?").append(params.size());
		}
		QueryResult<User> stationList = userService.getAgentList(User.class, buffer.toString(), params.toArray(),
				orderBy, pageable);
		List<User> users = stationList.getResultList();
		List<AgentListDto> stationDtos = this.toDtos(users);
		int totalrow = stationList.getTotalCount();
		returnData.put("rows", stationDtos);
		returnData.put("total", totalrow);
		return stationDtos;
	}
	
	/** 
	  * @Description: 转换返回bean类型
	  * @author songj@sdfcp.com
	  * @date 2015年12月2日 下午2:43:05 
	  * @param stations
	  * @return 
	  */
	private List<AgentListDto> toDtos(List<User> users){
		List<AgentListDto> dtoList = new ArrayList<AgentListDto>();
		for(User user : users){
			AgentListDto agentListDto = new AgentListDto();
			agentListDto = this.toDto(user);
			dtoList.add(agentListDto);
		}
		return dtoList;
	}
	
	
	private AgentListDto toDto(	User user){
		AgentListDto agentListDto = new AgentListDto();
		agentListDto.setId(user.getId());
		agentListDto.setName(user.getName());
		agentListDto.setAgentCode(user.getCode());
		agentListDto.setCreater(user.getCreater());
		agentListDto.setAddress(user.getAddress());
		agentListDto.setTelephone(user.getTelephone());
		//处理实体中的特殊转换值
		if(null != user.getCreaterTime())//创建时间
		{
			agentListDto.setCreaterTime(DateUtil.formatDate(user.getCreaterTime(), DateUtil.FULL_DATE_FORMAT));
		}
		if(null != user.getProvinceCode())//省级区域
		{
			Province province = new Province();
			province = provinceService.getProvinceByPcode(user.getProvinceCode());
			agentListDto.setProvince(null != province?province.getPname():"");
		}
		if(null != user.getCityCode())//市级区域
		{
			if(Constants.CITY_ALL.equals(user.getCityCode()))
			{
				agentListDto.setCity(Constants.CITY_ALL_NAME);
			}
			else
			{
				City city = new City();
				city = cityService.getCityByCcode(user.getCityCode());
				agentListDto.setCity(null != city?city.getCname():"");
			}
		}
		if(null != user.getRegionCode())//市级区域
		{
			if(Constants.REGION_ALL.equals(user.getRegionCode()))
			{
				agentListDto.setCity(Constants.REGION_ALL_NAME);
			}
		}
		return agentListDto;
	}
	
	

}
