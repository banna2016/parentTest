package com.byl.manager.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.byl.manager.common.beans.ResultBean;

@RequestMapping("test")
@Controller
public class TestController {
	
	@RequestMapping("testmethod")
	public void test(@RequestParam(value="code",required=false) String code,@RequestParam(value="password",required=false) String password)
	{
		System.out.println("1");
	}
	
	@RequestMapping(value="selectProxy",method = RequestMethod.GET)
	public  @ResponseBody ResultBean selectProxy(@RequestParam(value="province",required=false) String province,
			@RequestParam(value="city",required=false) String city)
	{
		ResultBean resultBean = new ResultBean();
		System.out.println("1");
		
		resultBean.setMessage("查询成功");
		
		return resultBean;
	}

}
