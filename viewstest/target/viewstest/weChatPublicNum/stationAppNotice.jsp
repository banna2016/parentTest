<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui">
<link rel="stylesheet" href="<%=request.getContextPath() %>/weChatPublicNum/css/weui.min.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/weChatPublicNum/jquery-2.1.0.min.js"></script>
<title>站点广告</title>
</head>
<body>
	<div class="box" style="padding: 10px;">
		
		<div class="weui_cells weui_cells_form">
			<div class="weui_cells_title">请输入广告名称</div>
			<div class="weui_cell">
					<div class="weui_cell_bd weui_cell_primary">
						<input class="weui_input" type="text"  placeholder="请输入广告名称" />
					</div>
			</div>
			
				
			<div class="weui_cells_title">请输入广告内容</div>
				<div class="weui_cell">
					<div class="weui_cell_bd weui_cell_primary">
						<textarea class="weui_textarea" placeholder="所发布内容请控制在200字以内" rows="3"></textarea>
						<div class="weui_textarea_counter"><span>0</span>/200</div>
					</div>
				</div>
		</div>
		 <div class="weui_cell weui_cell_select weui_select_after">
                <div class="weui_cell_hd">
                  	 选择应用
                </div>
                <div class="weui_cell_bd weui_cell_primary">
                    <select class="weui_select" name="select2">
                        <option value="1">中国</option>
                        <option value="2">美国</option>
                        <option value="3">英国</option>
                    </select>
                </div>
            </div>
		<div class="weui_cells_tips"><input type="checkbox"/>我已阅读并同意<a href="#">《佰艺霖发布广告规则》</a></div>
		<div class="weui_btn_area">
				<a class="weui_btn weui_btn_primary" href="javascript:" id="showTooltips">确认提交市中心审批</a>
	    </div>
	</div>

</body>
</html>