﻿$(document).ready(function() {
	// 手机号码验证
	jQuery.validator.addMethod("isPhone", function(value, element) {
		var length = value.length;
		return this.optional(element) || (length == 11 && /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/.test(value));
	}, "请正确填写您的手机号码。");

	/*// 电话号码验证
	jQuery.validator.addMethod("isTel", function(value, element) {
		var tel = /^(\d{3,4}-)?\d{7,8}$/g; // 区号－3、4位 号码－7、8位
		return this.optional(element) || (tel.test(value));
	}, "请正确填写您的电话号码。");*/
	/*// 匹配密码，以字母开头，长度在6-12之间，必须包含数字和特殊字符。
	jQuery.validator.addMethod("isPwd", function(value, element) {
		var str = value;
		if (str.length < 6 || str.length > 18)
			return false;
		if (!/^[a-zA-Z]/.test(str))
			return false;
		if (!/[0-9]/.test(str))
			return fasle;
		return this.optional(element) || /[^A-Za-z0-9]/.test(str);
	}, "以字母开头，长度在6-12之间，必须包含数字和特殊字符。");*/

	$("#applyProxy").validate({
		errorElement : 'span',
		errorClass : 'help-block',

		rules : {
			name : "required",
			/*email : {
				required : true,
				email : true
			},*/
			/*password : {
				required : true,
				isPwd : true
			},
			confirm_password : {
				required : true,
				isPwd : true,
				equalTo : "#password"
			},*/
			telephone : {
				required : true,
				isPhone : true
			},
//			tel : {
//				isTel : true//自定义校验检验方法，重写完自定义校验后，和validate自带校验使用方式相同，需要这个校验就设置true，只有通过自定义校验方法校验返回值是true才可以通过校验
//			},
			adddress : {
				minlength : 10
			},
			remark : {
				maxlength : 200
			}
		},
		messages : {
			name : "*请输入姓名",
			/*email : {
				required : "请输入Email地址",
				email : "请输入正确的email地址"
			},*/
			/*password : {
				required : "请输入密码",
				minlength : jQuery.format("密码不能小于{0}个字 符")
			},
			confirm_password : {
				required : "请输入确认密码",
				minlength : "确认密码不能小于5个字符",
				equalTo : "两次输入密码不一致不一致"
			},*/
			telephone : {
				required : "*请输入手机号码"
			},
			/*tel : {
				required : "请输入座机号码"
			},*/
			adddress : {
				required : "*请输入家庭地址",
				minlength : jQuery.format("*家庭地址不能少于{0}个字符")
			},
			remark : {
				maxlength : "备注内容最多不能超过200个字"
			}
		},
		errorPlacement : function(error, element) {
			element.next().remove();
			element.after('<span class="glyphicon  form-control-feedback" aria-hidden="true"></span>');//glyphicon glyphicon-remove form-control-feedback
			element.closest('.form-group').append(error);
		},
		highlight : function(element) {
			$(element).closest('.form-group').addClass('has-error has-feedback');
		},
		success : function(label) {
			var el=label.closest('.form-group').find("input");
			el.next().remove();
			el.after('<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>');
			label.closest('.form-group').removeClass('has-error').addClass("has-feedback has-success");
			label.remove();
		},
		submitHandler: function(form) { 
			submitApply();//校验成功后提交数据到后台
		}

	})
});