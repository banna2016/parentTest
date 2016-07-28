package com.byl.manager.proxy.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.byl.manager.common.utils.Constants;
import com.byl.manager.common.utils.QueryResult;
import com.byl.manager.proxy.entity.User;
import com.byl.manager.proxy.repository.UserRepository;
import com.byl.manager.proxy.service.UserService;
@Service("userService")
@Transactional(propagation=Propagation.REQUIRED)
public class UserServiceImpl implements UserService {
	@Autowired
	private UserRepository userRepository;


	public QueryResult<User> getAgentList(Class<User> entityClass,
			String whereJpql, Object[] queryParams,
			LinkedHashMap<String, String> orderby, Pageable pageable) {
		String sql = "SELECT a.* FROM T_SDF_USERS a,RELA_SDF_USER_ROLE b,T_SDF_ROLES  c "
				+ "where a.id = b.user_id "
				+ "and   b.role_id = c.id "
				+ "and   c.code='"+Constants.ROLE_SCDL_CODE+"' and " + whereJpql;
			QueryResult<User> userObj = userRepository.getScrollDataBySql(entityClass,sql, queryParams, pageable);
			return userObj;
	}
}
