<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%--全局引入的css文件 --%>
    <%--全局引入的js文件 --%>
    <script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>    
<script>
	var contextPath = '<%=request.getContextPath() %>';
	
	//从一个页面获取另一个页面的url
    function getQueryString(name) {
    	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    	var r = window.location.search.substr(1).match(reg);
    	if (r != null) 
    		return unescape(r[2]); 
    	return null;
    }
	
	
	
	
</script>