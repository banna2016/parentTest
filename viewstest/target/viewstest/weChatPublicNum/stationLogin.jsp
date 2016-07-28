<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui">
<link rel="stylesheet" href="<%=request.getContextPath() %>/weChatPublicNum/css/weui.min.css" />

<script>
	var contextPath = '<%=request.getContextPath() %>';
	
</script>

<script type="text/javascript" src="<%=request.getContextPath() %>/weChatPublicNum/jquery-2.1.0.min.js"></script>

<script type="text/javascript">
var u = navigator.userAgent;
var isAndroid = u.indexOf('Android') > -1 || u.indexOf('Adr') > -1; //android终端
var isiOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/); //ios终端
alert('是否是Android：'+isAndroid);
alert('是否是iOS：'+isiOS);
</script>

<%-- <script type="text/javascript" src="<%=request.getContextPath() %>/weChatPublicNum/js/stationLogin.js"></script> --%>
<title>通行证登录</title>
</head>
<body>
	<div class="box" style="padding: 10px;">
		<div class="weui_cells_title">输入您的通行证</div>
		<div class="weui_cells weui_cells_form">
			<div class="weui_cell">
					<div class="weui_cell_hd">
						<label class="weui_label">通行证</label>
					</div>
					<div class="weui_cell_bd weui_cell_primary">
						<input class="weui_input" type="text"  placeholder="请输入通行证" />
					</div>
			</div>
				
			<div class="weui_cell">
					<div class="weui_cell_hd">
						<label class="weui_label">密码</label>
					</div>
					<div class="weui_cell_bd weui_cell_primary">
						<input class="weui_input" type="password"  placeholder="请输入密码" />
					</div>
			</div>
			<div class="weui_cell weui_vcode weui_cell_warn">
					<div class="weui_cell_hd">
						<label class="weui_label">验证码</label>
					</div>
					<div class="weui_cell_bd weui_cell_primary">
						<input class="weui_input" type="number" placeholder="请输入验证码" />
					</div>
					<div class="weui_cell_ft">
						<i class="weui_icon_warn"></i>
						<img src="./images/vcode.jpg" />
					</div>
			</div>
		</div>
		<div class="weui_btn_area">
				<a class="weui_btn weui_btn_primary" href="javascript:" id="showTooltips" onclick="tiaozhuan()">登录</a>
	    </div>
	</div>

</body>
</html>