<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML >
<html>
<head>

<title>辽宁佰艺霖科技有限公司</title>

<meta charset="utf-8">
<meta name="format-detection"  />

<link href="css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="css/animation.css">
<link rel="stylesheet" href="css/camera.css">
<!-- <link rel="stylesheet" href="css/contact-form.css"> -->
<link rel="stylesheet" href="css/touchTouch.css">
<link rel="stylesheet" href="css/style.css"><!-- 全局样式 -->

<link rel="stylesheet" href="css/zerogrid.css"><!-- 成功案例效果样式 -->
<link rel="stylesheet" href="css/responsiveslides.css"><!-- jQuery响应幻灯片插件ResponsiveSlides -->



<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script><!-- 应用迁移辅助组件 -->
<script src="js/jquery.easing.1.3.js"></script><!-- 增强动画过渡效果 -->
<script src="js/script.js"></script><!-- $script.js 是一个异步的JavaScript加载器和依赖管理器，拥有一个惊人的令人印象深刻的轻量级的足迹。像许多其他的脚本装载器，$script.js 允许你按需加载脚本资源，而且不会阻塞其他资源加载（如CSS和图像）。此外，它独特的界面允许开发人员轻松使用，即使是最复杂的依赖关系。适合于大型，复杂的Web应用程序。 -->
<script src="js/jquery.ui.totop.js"></script><!-- 回到页面顶部的ui实现 -->
<script src="js/touchTouch.jquery.js"></script><!-- 产品图片样式相关 -->
<script src="js/isotope.pkgd.js"></script><!-- 产品图片样式相关 -->
<!-- <script src="js/modal.js"></script> -->
<script src="js/camera.js"></script>
<!--[if (gt IE 9)|!(IE)]><!-->
<script src="js/jquery.mobile.customized.min.js"></script>


 <script src="js/bootstrap.min.js"></script>
<!--<![endif]-->
<script>
	$(window).load(function() {
		$().UItoTop({
			easingType : 'easeOutQuart'
		});
		$('.gallery .gall_item').touchTouch();
	});
	$(document).ready(function() {
		jQuery('#camera_wrap').camera({
			loader : false,//导入状态类型，指定秒数后自动下一张。要是'bar'则有进度条
			pagination : true,//是否显示页码,小圆点
			minHeight : '500',
			thumbnails : false,//是否显示缩略图
			height : '44.42708333333333%',
			caption : true,
			navigation : false,
			fx : 'mosaic'
		});
		$('.gallery .gall-item').touchTouch();

		//显示查询代理，隐藏申请代理
		$("#selectProxy").show();
		$("#submitProxy").hide();

	});

	function selectProxy() {
		$("#selectProxy").show();
		$("#submitProxy").hide();
	}

	function submitProxy() {
		$("#selectProxy").hide();
		$("#submitProxy").show();
	}
</script>

</head>
<body>
	<div class="texture">
		<!--==============================
              header
=================================-->
		<header id="home" class="page">
			<div class="navigation single-page-nav">
				<div class="container_12">
					<div class="grid_12">
						<h1 class="logo">
							<a href="index.jsp">佰艺霖(TEL:400-169-1810)</a>
						</h1>
						<nav>
							<ul>
								<li><a href="#home" class="current">首页</a></li>
								<li><a href="#portfolio">产品</a></li>
								<!-- <li><a href="#skills">Skills</a></li> -->
								<li><a href="#container">案例</a></li>
								<!--  <li><a href="#testimonials">Testimonials</a></li> -->
								<li><a href="#contacts">加盟</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
			<div id="camera_wrap">
				<div data-src="images/slide-3.jpg">
					<div class="caption fadeIn">中国较早的电子走势图产品服务商</div>
				</div>
				<div data-src="images/u14.png">
					<div class="caption fadeIn"></div>
				</div>
				<div data-src="images/u16.png">
					<div class="caption fadeIn"></div>
				</div>
				<div data-src="images/slide-1.jpg">
					<div class="caption fadeIn">要做就要做最好的</div>
				</div>
			</div>
		</header>
		<!--=====================
          Content
======================-->
		<section class="content">
			<div class="ic"></div>
			  <div class="pad-1">
			    <div class="container_12">
			    	<!-- 产品简介1 -->
			      <div class="grid_12">
			        <h2>我们的优势
			        </h2>
			        <img src="images/u56.png" alt="" class="fleft">
			        <div class="extra_wrapper">
			          <!-- <div class="text-1">
			            John Klimt
			          </div> -->
			          <div class="text-2 color1">
			           		图表丰富，风格多样
			          </div>
			          <p> 丰富的图表类型，可根据彩民的观看习惯灵活选用</p>
			          <p>包含便于彩民观看的“球形”风格与仿传统图表的“字体”风格，彩民想要的这里都有</p>
			          <p>整体效果依据人体工程学完美设计，排版整齐便于参考，颜色柔和适于彩民长时间观看</p>
			         	<br>
			        </div>
			      </div>
			      <div class="clear"></div>
			      <!-- 产品简介2 -->
			       <div class="grid_12">
			        <img src="images/u151.png" alt="" class="fleft">
			        <div class="extra_wrapper">
			          <!-- <div class="text-1">
			            John Klimt
			          </div> -->
			          <div class="text-2 color1">
			           		横竖切换，上下滚屏	
			          </div>
			          <p>横屏播放，内容多，方便彩民进行横向的数据参考.</p>
			          <p>竖屏播放，期数多，方便彩民观看更多的开奖数据.</p>
			          <p>彩民可以通过简单的操作实现滚屏效果，查看最近3天的开奖走势图.</p>
			         	<br>
			        </div>
			      </div>
			      <div class="clear"></div><!-- 添加空行空间 -->
			       <!-- 产品简介3 -->
			       <div class="grid_12">
			        <img src="images/u173.png" alt="" class="fleft">
			        <div class="extra_wrapper">
			          <!-- <div class="text-1">
			            John Klimt
			          </div> -->
			          <div class="text-2 color1">
			           		专业传播媒介
			          </div>
			          <p>播放媒介范围广，不论是电脑、手机、机顶盒、智能电视，都可以直接打开我们的产品实现电子走势图的正常播放.</p>
			          <p>彩票智能机——安全性
						自备隔离保护系统，防止病毒入侵，保护产品稳定运行
						彩票智能机——便捷性
						拥有统一功能管理程序，每次使用，用户仅需打开智能
						机直接登陆即可
						彩票智能机——低成本
						额定功率22瓦，每年电费125元即可，相比电脑每年节
						省1583元.</p>
			         	<br>
			        </div>
			      </div>
			      <div class="clear"></div>
			      
			       <!-- 产品简介4 -->
			       <div class="grid_12">
			        <img src="images/u175.png" alt="" class="fleft">
			        <div class="extra_wrapper">
			          <!-- <div class="text-1">
			            John Klimt
			          </div> -->
			          <div class="text-2 color1">
			           		数据稳定，更新及时
			          </div>
			          <p>采用当前先进的数据管理技术.</p>
			          <p>全天候技术人员数据监控.</p>
			           <p>兼容式数据获取来源，全力保障数据实效.</p>
			         	<br>
			        </div>
			      </div>
			      <div class="clear"></div>
			      
			       <!-- 产品简介5 -->
			       <div class="grid_12">
			        <img src="images/u179.png" alt="" class="fleft">
			        <div class="extra_wrapper">
			          <!-- <div class="text-1">
			            John Klimt
			          </div> -->
			          <div class="text-2 color1">
			           		售后到家，安全保障
			          </div>
			          <p>全天候售后开放，解决用户使用产品过程中的一切问题.</p>
			          <p>部门地区提供上门安装服务，全线服务，服务到家.</p>
			           <p>开放式需求管理，满足地区性定制化需求.</p>
			         	<br>
			        </div>
			      </div>
			      <div class="clear"></div>
			      
			    </div>
			  </div>
			<section id="portfolio" class="page">
				<div class="container_12">
					<div class="grid_12">
						<h2 class="color2">我们的产品</h2>
						<div id="filters" class="button-group">
							<a href="#" class="btn is-checked" data-filter=".design">11选5</a>
							<a href="#" class="btn" data-filter=".ill">快乐十分</a> <a href="#"
								class="btn" data-filter=".photo">12选5</a> <a href="#"
								class="btn" data-filter=".kuaisan">快三</a>
						</div>
						<div class="el gallery" id="isotope">
							<!-- a标签中的href的图片的点击放大的图片；img中的src是href的预览图 -->
							<div class="element design">
								<div>
									<a href="images/u18.png" class="gall-item"><img
										src="images/gal_img1.jpg" alt=""><span></span></a>
								</div>
							</div>
							<div class="element design">
								<div>
									<a href="images/u4.jpg" class="gall-item"><img
										src="images/gal_img2.jpg" alt=""><span></span></a>
								</div>
							</div>
							<div class="element  photo">
								<div>
									<a href="images/big3.jpg" class="gall-item"><img
										src="images/gal_img3.jpg" alt=""><span></span></a>
								</div>
							</div>
							<div class="clear"></div>
							<div class="element ill">
								<div>
									<a href="images/big4.jpg" class="gall-item"><img
										src="images/gal_img4.jpg" alt=""><span></span></a>
								</div>
							</div>
							<div class="element ill">
								<div>
									<a href="images/big5.jpg" class="gall-item"><img
										src="images/gal_img5.jpg" alt=""><span></span></a>
								</div>
							</div>
							<div class="element kuaisan">
								<div>
									<a href="images/big6.jpg" class="gall-item"><img
										src="images/gal_img6.jpg" alt=""><span></span></a>
								</div>
							</div>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</section>
			<section id="container">
				<h2>成功案例</h2>
				<!-- 案例二结束 -->
				<div class="wrap-container">
					<div class="zerogrid">
						<section class="content-box box-1">
							<div class="row">
								<!--Start Box-->
								<div class="col-1-4">
									<div class="wrap-col item">
										<h3 class="item-header">
											<a href="#">电子走势图</a>
										</h3>
										<div class="zoom-container">
											<img src="images/u109.jpg" />
										</div>
										<div class="item-content">
											<span>业主反馈</span>
											<p>以前每期都要手写开奖号，十分钟一次，一天就要写八、九十次，还要顾着收钱、
												打彩票。现在好了，用上“百宝彩”之后，我轻松多了，能够专心给彩民打彩票，
												还能多出些时间跟彩民交流，多向他们销售一些即开票。</p>
											<a class="button" href="single.html">更多</a>
										</div>
									</div>
								</div>
								<div class="col-1-4">
									<div class="wrap-col item">
										<h3 class="item-header">
											<a href="#">彩站建设</a>
										</h3>
										<div class="zoom-container">
											<img src="images/u19.png" />
										</div>
										<div class="item-content">
											<span>彩站统一装修</span>
											<p>业主在使用了我们统一的装修风格之后，彩民们在更好的购彩环境中购买彩票，彩票的销售量提高了呐！</p>
											<a class="button" href="single.html">更多</a>
										</div>
									</div>
								</div>
								<div class="col-1-4">
									<div class="wrap-col item">
										<h3 class="item-header">
											<a href="#">BASIC FURNITURE</a>
										</h3>
										<div class="zoom-container">
											<img src="images/banner-img3.jpg" />
										</div>
										<div class="item-content">
											<span>LOREM IPSUM DOLOR SIT AMET,CONSEC TEETUER
												ADIPECPP IT.</span>
											<p>His primis omittam intellegat cu, voluptua appetere
												mea ad, eu harum oporteat vix. Et vel quod legimus, graeci
												electram ocurreret at his. Vix at tation facete impetus
												omnesque ius harum antiopam.</p>
											<a class="button" href="single.html">More</a>
										</div>
									</div>
								</div>
								<div class="col-1-4">
									<div class="wrap-col item">
										<h3 class="item-header">
											<a href="#">BASIC FURNITURE</a>
										</h3>
										<div class="zoom-container">
											<img src="images/banner-img4.jpg" />
										</div>
										<div class="item-content">
											<span>LOREM IPSUM DOLOR SIT AMET,CONSEC TEETUER
												ADIPECPP IT.</span>
											<p>His primis omittam intellegat cu, voluptua appetere
												mea ad, eu harum oporteat vix. Et vel quod legimus, graeci
												electram ocurreret at his. Vix at tation facete impetus
												omnesque ius harum antiopam.</p>
											<a class="button" href="single.html">More</a>
										</div>
									</div>
								</div>
							</div>
						</section>

					</div>
				</div>

			</section>
			
			<section id="contacts" class="page">
				<div class="container_12">
					<div class="grid_12">
						<h2>加入我们！</h2>
					</div>
					<!-- 申请代理 -->
					<div class="grid_6" id="submitProxy">
						<form role="form">
						  <div class="form-group">
                          <label class="col-sm-4 control-label" for="ds_host">您的姓名:</label>
                          <div class="col-sm-8">
                             <input class="form-control" id="ds_host" type="text" placeholder="请输入姓名"/>
                          </div>
                          <label class="col-sm-4 control-label" for="ds_name">您的电话：</label>
                          <div class="col-sm-8">
                             <input class="form-control" id="ds_name" type="text" placeholder="请输入电话"/>
                          </div>
                       </div>
                        <div class="form-group">
                          <label class="col-sm-4 control-label" for="ds_password">您的地址</label>
                          <div class="col-sm-8">
                             <input class="form-control" id="ds_password" type="text" placeholder="请输入地址"/>
                          </div>
                       </div>
                       <div class="form-group">
	                       <label class="col-sm-4 control-label" for="ds_username">申请市场:</label>
	                       	<div class="col-sm-4">
							      <select class=" form-control">
							         <option>河北</option>
							         <option>2</option>
							         <option>3</option>
							         <option>4</option>
							         <option>5</option>
							      </select>
						      </div>
						      <div class="col-sm-4">
								      <select  class="form-control">
								         <option>唐山</option>
								         <option>2</option>
								         <option>3</option>
								         <option>4</option>
								         <option>5</option>
								      </select>
						      </div>
                       	</div>
                       	<div class="form-group">
                       		 <label class="col-sm-6 control-label" for="radio">您是否彩票相关行业从业者:</label><!-- 没用radio是因为不好用 -->
                       		<div class="col-sm-4">
								      <select  class="form-control">
								         <option>是</option>
								         <option>否</option>
								      </select>
								      <input type="radio" />是
						      </div>
                       	</div>
                       	<div class="form-group">
						    <label for="name" class="col-sm-4 control-label">备注:</label>
						    <div class="col-sm-12">
						    	<textarea class="form-control" rows="3" style="resize:none;"></textarea>
						    </div>
						  </div>
                       		<div class="form-group col-sm-12">
						 	  <button type="submit" class="btn btn-default">提交</button>
						   </div>
						</form>

					</div>
					<!-- 查询代理 -->
					<div class="grid_6" id="selectProxy">
						<form role="form">
						 
                      	 <div class="form-group">
	                       <label class="col-sm-2 control-label" for="ds_username">省份:</label>
	                       	<div class="col-sm-4">
							      <select class=" form-control">
							         <option>河北</option>
							         <option>2</option>
							         <option>3</option>
							         <option>4</option>
							         <option>5</option>
							      </select>
						      </div>
						       <label class="col-sm-2 control-label" for="ds_username">城市:</label>
						      <div class="col-sm-4">
								      <select  class="form-control">
								         <option>唐山</option>
								         <option>2</option>
								         <option>3</option>
								         <option>4</option>
								         <option>5</option>
								      </select>
						      </div>
                       	</div>
						</form>
						<div class="grid_6">
							 代理商：陪先生 
							 <br>
							  电话：陪先生 
							 <br>
							  地址：陪先生 
							 
						</div>
					</div>
					<div class="grid_6">
						<p>
							当前已有<span id="totalUsers"
								style="font-size: 40px; font-weight: bold; color: red">
								10658</span> 位用户
						</p>
						<p>
							<a rel="nofollow" onclick="selectProxy()" class="color1"
								style="font-size: 40px;  cursor: pointer;">代理查询</a>
							<br>
						</p>
						<br> <a onclick="submitProxy()"
							style="font-size: 40px; font-weight: bold; cursor: pointer;">申请代理
						</a>
					</div>
					<div class="clear"></div>
				</div>
				<div class="container_12">
					<div class="grid_12">
						<div class="social-icons">
							<a href="#" class="fa fa-twitter"></a> <a href="#"
								class="fa fa-facebook"></a> <a href="#"
								class="fa fa-google-plus"></a> <a href="#"
								class="fa fa-pinterest"></a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</section>
		</section>
		<!--==============================
              footer
=================================-->
	</div>
	<footer id="footer">
		<div class="container_12" style="color:black">
			<div class="grid_12">
				<div class="copyright">
					Copyright &copy; 2016.Company name All rights reserved.
				</div>
			</div>
			<div class="grid_12">
				<div class="copyright" >
					友情链接：<a href="http://127.0.0.1:32767/start.html#p=首页&c=1">中国体彩网</a>  <a href="http://127.0.0.1:32767/start.html#p=首页&c=1">中国福彩网</a>
				</div>
			</div>
		</div>
		<div class="clear"></div>
	</footer>
	<a href="#" id="toTop" class="fa fa-chevron-up"></a>
	<!-- <script src="js/jquery.singlePageNav.min.js"></script> -->
	<!-- <script>
		// Prevent console.log from generating errors in IE for the purposes of the demo
		if (!window.console)
			console = {
				log : function() {
				}
			};
		// The actual plugin
		$('.single-page-nav').singlePageNav({
			offset : $('.single-page-nav').outerHeight(),
			filter : ':not(.external)',
			updateHash : true,
			beforeStart : function() {
				console.log('begin scrolling');
			},
			onComplete : function() {
				console.log('done scrolling');
			}
		});
	</script>
	<script type="text/javascript">
		google_api_map_init();
		function google_api_map_init() {
			var map;
			var coordData = new google.maps.LatLng(parseFloat(40.646197),
					parseFloat(-73.9724068, 14));
			var styleArray = [ {
				"featureType" : "water",
				"elementType" : "geometry",
				"stylers" : [ {
					"color" : "#193341"
				} ]
			}, {
				"featureType" : "landscape",
				"elementType" : "geometry",
				"stylers" : [ {
					"color" : "#2c5a71"
				} ]
			}, {
				"featureType" : "road",
				"elementType" : "geometry",
				"stylers" : [ {
					"color" : "#29768a"
				}, {
					"lightness" : -37
				} ]
			}, {
				"featureType" : "poi",
				"elementType" : "geometry",
				"stylers" : [ {
					"color" : "#406d80"
				} ]
			}, {
				"featureType" : "transit",
				"elementType" : "geometry",
				"stylers" : [ {
					"color" : "#406d80"
				} ]
			}, {
				"elementType" : "labels.text.stroke",
				"stylers" : [ {
					"visibility" : "on"
				}, {
					"color" : "#3e606f"
				}, {
					"weight" : 2
				}, {
					"gamma" : 0.84
				} ]
			}, {
				"elementType" : "labels.text.fill",
				"stylers" : [ {
					"color" : "#ffffff"
				} ]
			}, {
				"featureType" : "administrative",
				"elementType" : "geometry",
				"stylers" : [ {
					"weight" : 0.6
				}, {
					"color" : "#1a3541"
				} ]
			}, {
				"elementType" : "labels.icon",
				"stylers" : [ {
					"visibility" : "off"
				} ]
			}, {
				"featureType" : "poi.park",
				"elementType" : "geometry",
				"stylers" : [ {
					"color" : "#2c5a71"
				} ]
			} ]
			function initialize() {
				var mapOptions = {
					zoom : 13,
					center : coordData,
					scrollwheel : false,
					styles : styleArray
				}
				var map = new google.maps.Map(document
						.getElementById("map-canvas"), mapOptions);
				google.maps.event.addDomListener(window, 'resize', function() {
					map.setCenter(coordData);
					var center = map.getCenter();
				});
			}
			google.maps.event.addDomListener(window, "load", initialize);
		}
	</script>
	[if IE]><script type="text/javascript" src="js/excanvas.js"></script><![endif]
	<script src="js/jquery.knob.js"></script>
	<script>
		$(function($) {
			$(".knob")
					.knob(
							{
								change : function(value) {
									//console.log("change : " + value);
								},
								release : function(value) {
									//console.log(this.$.attr('value'));
									console.log("release : " + value);
								},
								cancel : function() {
									console.log("cancel : ", this);
								},
								/*format : function (value) {
								    return value + '%';
								},*/
								draw : function() {
									// "tron" case
									if (this.$.data('skin') == 'tron') {
										this.cursorExt = 0.3;
										var a = this.arc(this.cv) // Arc
										, pa // Previous arc
										, r = 1;
										this.g.lineWidth = this.lineWidth;
										if (this.o.displayPrevious) {
											pa = this.arc(this.v);
											this.g.beginPath();
											this.g.strokeStyle = this.pColor;
											this.g.arc(this.xy, this.xy,
													this.radius
															- this.lineWidth,
													pa.s, pa.e, pa.d);
											this.g.stroke();
										}
										this.g.beginPath();
										this.g.strokeStyle = r ? this.o.fgColor
												: this.fgColor;
										this.g.arc(this.xy, this.xy,
												this.radius - this.lineWidth,
												a.s, a.e, a.d);
										this.g.stroke();
										this.g.lineWidth = 2;
										this.g.beginPath();
										this.g.strokeStyle = this.o.fgColor;
										this.g.arc(this.xy, this.xy,
												this.radius - this.lineWidth
														+ 1 + this.lineWidth
														* 2 / 3, 0,
												2 * Math.PI, false);
										this.g.stroke();
										return false;
									}
								}
							});
			// Example of infinite knob, iPod click wheel
			var v, up = 0, down = 0, i = 0, $idir = $("div.idir"), $ival = $("div.ival"), incr = function() {
				i++;
				$idir.show().html("+").fadeOut();
				$ival.html(i);
			}, decr = function() {
				i--;
				$idir.show().html("-").fadeOut();
				$ival.html(i);
			};
			$("input.infinite").knob({
				min : 0,
				max : 20,
				stopper : false,
				change : function() {
					if (v > this.cv) {
						if (up) {
							decr();
							up = 0;
						} else {
							up = 1;
							down = 0;
						}
					} else {
						if (v < this.cv) {
							if (down) {
								incr();
								down = 0;
							} else {
								down = 1;
								up = 0;
							}
						}
					}
					v = this.cv;
				}
			});
		});
	</script> -->
	<script src="js/isotop_ini.js"></script>
</body>
</html>