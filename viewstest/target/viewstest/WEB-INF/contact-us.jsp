<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>辽宁佰艺霖科技有限公司</title>

<!-- core CSS -->
    <link href="<%=request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/prettyPhoto.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/animate.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/main.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/responsive.css" rel="stylesheet">
    
    <!--[if lt IE 9]>
    <script src="<%=request.getContextPath() %>/images/html5shiv.js"></script>
    <script src="<%=request.getContextPath() %>/images/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="<%=request.getContextPath() %>/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=request.getContextPath() %>/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=request.getContextPath() %>/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=request.getContextPath() %>/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath() %>/images/ico/apple-touch-icon-57-precomposed.png">
    
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
   
</head><!--/head-->

<body>

    <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        <div class="top-number"><p><i class="fa fa-phone-square"></i>400-169-1810</p></div>
                    </div>
                   <!--  <div class="col-sm-6 col-xs-8">
                       <div class="social">
                            <ul class="social-share">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li> 
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype"></i></a></li>
                            </ul>
                            <div class="search">
                                <form role="form">
                                    <input type="text" class="search-form" autocomplete="off" placeholder="Search">
                                    <i class="fa fa-search"></i>
                                </form>
                           </div>
                       </div>
                    </div>-->
                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp"><img src="<%=request.getContextPath() %>/images/clogo.png" alt="logo"></a>
                </div>
                
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                   		<li ><a href="<%=request.getContextPath() %>/proxy/visit.action">首页</a></li>
                        <li ><a href="<%=request.getContextPath() %>/proxy/anli.action" >案例</a></li>
                        <li><a href="<%=request.getContextPath() %>/proxy/chanpin.action"" >产品</a></li>
                        <li class="active"><a href="<%=request.getContextPath() %>/proxy/jiameng.action">加盟我们</a></li>   
                                          
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->

    <section id="contact-info">
        <div class="center">                
            <h2>当前已有<span id="totalUsers"
								style="font-size: 40px; font-weight: bold; color: red">
								10658</span> 位用户</h2>
            <p class="lead"><a  onclick="selectProxy()"  title="点击代理查询"
								style="  cursor: pointer;">代理查询</a>
								 <a onclick="submitProxy()"  title="点击申请代理"
							style=" font-weight: bold; cursor: pointer;">申请代理
						</a></p>
        </div>
      <!--  <div class="gmap-area">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 text-center">
                        <div class="gmap">
                            <iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=JoomShaper,+Dhaka,+Dhaka+Division,+Bangladesh&amp;aq=0&amp;oq=joomshaper&amp;sll=37.0625,-95.677068&amp;sspn=42.766543,80.332031&amp;ie=UTF8&amp;hq=JoomShaper,&amp;hnear=Dhaka,+Dhaka+Division,+Bangladesh&amp;ll=23.73854,90.385504&amp;spn=0.001515,0.002452&amp;t=m&amp;z=14&amp;iwloc=A&amp;cid=1073661719450182870&amp;output=embed"></iframe>
                        </div>
                    </div>

                    <div class="col-sm-7 map-content">
                        <ul class="row">
                            <li class="col-sm-6">
                                <address>
                                    <h5>Head Office</h5>
                                    <p>1537 Flint Street <br>
                                    Tumon, MP 96911</p>
                                    <p>Phone:670-898-2847 <br>
                                    Email Address:info@domain.com</p>
                                </address>

                                <address>
                                    <h5>Zonal Office</h5>
                                    <p>1537 Flint Street <br>
                                    Tumon, MP 96911</p>                                
                                    <p>Phone:670-898-2847 <br>
                                    Email Address:info@domain.com</p>
                                </address>
                            </li>


                            <li class="col-sm-6">
                                <address>
                                    <h5>Zone#2 Office</h5>
                                    <p>1537 Flint Street <br>
                                    Tumon, MP 96911</p>
                                    <p>Phone:670-898-2847 <br>
                                    Email Address:info@domain.com</p>
                                </address>

                                <address>
                                    <h5>Zone#3 Office</h5>
                                    <p>1537 Flint Street <br>
                                    Tumon, MP 96911</p>
                                    <p>Phone:670-898-2847 <br>
                                    Email Address:info@domain.com</p>
                                </address>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>-->
    </section>  <!--/gmap_area -->

    <section id="contact-page" >
        <div class="container">
            <div class="center">        
                <h2>加盟我们</h2>
                <p class="lead">填写您的信息加入我们.</p>
            </div> 
            <div class="row contact-wrap"> 
                <div class="status alert alert-success" style="display: none"></div>
                <div id="myAlert" class="alert alert-success ">
						   <a class="close" onclick="closeAlert()">&times;</a>
						   <div id="almsg"></div>
						</div>
                <form id="applyProxy" class="contact-form" name="contact-form" method="post" >
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="form-group">
                            <label>您的姓名 *</label>
                            <input type="text" name="name" id="name" class="form-control" required="required" placeholder="请输入姓名">
                        </div>
                        <div class="form-group">
                            <label>您的电话 *</label>
                            <input type="text" placeholder="请输入电话" name="telephone" id="telephone" class="form-control" required="required">
                        </div>
                        <div class="form-group">
                            <label>您的地址</label>
                            <input type="text" placeholder="请输入地址" name="adddress" id="adddress" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>申请市场</label>
                            <div >
								      <select class=" form-control" name="province" id="province" onchange="initCities('province','city')">
								         <option>河北</option>
								         <option>2</option>
								         <option>3</option>
								         <option>4</option>
								         <option>5</option>
								      </select>
							      </div>
							      <div >
									      <select  class="form-control" name="city" id="city">
									         <option>唐山</option>
									         <option>2</option>
									         <option>3</option>
									         <option>4</option>
									         <option>5</option>
									      </select>
							      </div>
							      
                        </div>                        
                    </div>
                    <div class="col-sm-5">
                        <div class="form-group">
                            <label>您是否彩票相关行业从业者 *</label>
                            <select  class="form-control" name="isConnect" id="isConnect">
									         <option value="1">是</option>
									         <option value="0">否</option>
									      </select>
                        </div>
                        <div class="form-group">
                            <label>备注 *</label>
                            <textarea class="form-control" rows="5" style="resize:none;" name="remark" id="remark"></textarea>
                        </div>                        
                        <div class="form-group">
                            <button type="submit" name="submit" class="btn btn-primary btn-lg" required="required">提交</button>
                        </div>
                    </div>
                </form> 
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#contact-page-->
    
    <section id="selectProxy" >
        <div class="container">
            <div class="center">        
                <h2>代理查询</h2>
                <p class="lead">查询代理信息.</p>
            </div> 
            <div class="row contact-wrap"> 
                <form id="main-contact-form" class="contact-form" name="contact-form" method="post" >
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="form-group">
                            <label>省份:</label>
                           	<select class=" form-control" id="provinces"  onchange="initCities('provinces','citys')">
							        <option value="0"> 河北</option>
								         <option value="1">2</option>
								         <option value="2">3</option>
								         <option value="3">4</option>
								         <option value="4">5</option>
							      </select>
							    <label>城市:</label>
                           	<select  class="form-control" id="citys" onchange="selectProxys()">
								         <option value="0"> 唐山</option>
								         <option value="1">2</option>
								         <option value="2">3</option>
								         <option value="3">4</option>
								         <option value="4">5</option>
								      </select>
                        </div>
                              
                    </div>
                    <div class="col-sm-5">
                        <div id="proxyList" class="col-md-8" style="margin-top: 20px;"></div>
                    </div>
                </form> 
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#selectProxy-->
<!--
    <section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Company</h3>
                        <ul>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">We are hiring</a></li>
                            <li><a href="#">Meet the team</a></li>
                            <li><a href="#">Copyright</a></li>
                            <li><a href="#">Terms of use</a></li>
                            <li><a href="#">Privacy policy</a></li>
                            <li><a href="#">Contact us</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->
<!--
                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Support</h3>
                        <ul>
                            <li><a href="#">Faq</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Forum</a></li>
                            <li><a href="#">Documentation</a></li>
                            <li><a href="#">Refund policy</a></li>
                            <li><a href="#">Ticket system</a></li>
                            <li><a href="#">Billing system</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->
<!--
                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Developers</h3>
                        <ul>
                            <li><a href="#">Web Development</a></li>
                            <li><a href="#">SEO Marketing</a></li>
                            <li><a href="#">Theme</a></li>
                            <li><a href="#">Development</a></li>
                            <li><a href="#">Email Marketing</a></li>
                            <li><a href="#">Plugin Development</a></li>
                            <li><a href="#">Article Writing</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->
<!--
                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Our Partners</h3>
                        <ul>
                            <li><a href="#">Adipisicing Elit</a></li>
                            <li><a href="#">Eiusmod</a></li>
                            <li><a href="#">Tempor</a></li>
                            <li><a href="#">Veniam</a></li>
                            <li><a href="#">Exercitation</a></li>
                            <li><a href="#">Ullamco</a></li>
                            <li><a href="#">Laboris</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->
           <!--</div>
        </div>
    </section><!--/#bottom-->

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    Copyright &copy; 2016.Company name All rights reserved.友情链接：<a href="http://www.cwl.gov.cn/"  target="_blank">中国福彩网</a>  <a href="http://www.lottery.gov.cn/"  target="_blank">中国体彩网</a>
                </div>
                <div class="col-sm-4">
                    <ul class="pull-right">
                      <li ><a href="<%=request.getContextPath() %>/proxy/visit.action">首页</a></li>
                        <li ><a href="<%=request.getContextPath() %>/proxy/anli.action" >案例</a></li>
                        <li><a href="<%=request.getContextPath() %>/proxy/chanpin.action"" >产品</a></li>
                        <li ><a href="<%=request.getContextPath() %>/proxy/jiameng.action">加盟我们</a></li>   
                    </ul>
                </div>
            </div>
        </div>
    </footer><!--/#footer-->

    <script src="<%=request.getContextPath() %>/js/jquery.js"></script>
    <script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/jquery.prettyPhoto.js"></script>
    <script src="<%=request.getContextPath() %>/js/jquery.isotope.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/main.js"></script>
    <script src="<%=request.getContextPath() %>/js/wow.min.js"></script>
     <script src="<%=request.getContextPath() %>/js/index.js"></script>
     <!-- 表单校验 -->
	 <script src="<%=request.getContextPath() %>/js/form.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath() %>/js/jQuery.validate/jquery.validate.js" type="text/javascript"></script><!-- 使用validate校验js，可以指定校验方式和校验提示 -->
</body>
</html>