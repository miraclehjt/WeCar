
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<link href="css/valiform.css" rel="stylesheet" type="text/css" />
<link id="skin" rel="stylesheet" href="css/jbox.css" />
<style type="text/css" >

.Validform_wrong {
	 background: url(images/error.png) no-repeat left center; 
}

.Validform_right {
	
	 background: url(images/right.png) no-repeat left center;  
}
</style>
</head>
<body>
	<!--注册登录公共头部-->
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>地标金融</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<script type="text/javascript" language="javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" language="javascript" src="js/xuanxiang_duoge.js"></script>
<script type="text/javascript" language="javascript" src="js/navigation_cur.js"></script>
<script type="text/javascript" src="js/jquery.jBox-2.3.min.js"></script>
<script type="text/javascript" src="js/i18n/jquery.jBox-zh-CN.js"></script>
<script type="text/javascript" src="js/front/frontCommon.js"></script>
<link href="css/public.css" rel="stylesheet" type="text/css" />
<link href="css/member.css" rel="stylesheet" type="text/css" />
</head>

<body>
<!--返回顶部开始-->
<div class="ReturnTop">
<a href="javascript:void(0);" id="qq" title="在线客服"><img src="images/ReturnTop2.png" width="54" height="54" /></a>
<a href="javascript:void(0);" class="wechat" title="官方微信"><img src="images/ReturnTop1.png" width="54" height="54" /></a>

<a href="javascript:void(0);" id="ScrollUp" style="display:none;" title="返回顶部"><img src="images/ReturnTop4.png" width="54" height="54" /></a>
<img class="wechat_img" src="images/weixin.png">
</div>
<script type="text/javascript" language="javascript">
$(function(){
	 var $bottomTools = $('.ReturnTop');
	    var $qrTools = $('.wechat');
	    var qrImg = $('.wechat_img');
	    $(window).scroll(function() {
	        var scrollHeight = $(document).height();
	        var scrollTop = $(window).scrollTop();
	        var $windowHeight = $(window).innerHeight();
	        scrollTop > 100 ? $("#ScrollUp").fadeIn(200).css("display", "block") : $("#ScrollUp").fadeOut(200);
	        $bottomTools.css("bottom", scrollHeight - scrollTop > $windowHeight ? 54 : $windowHeight + scrollTop + 54 - scrollHeight);
	    });
	    $('#ScrollUp').click(function(e) {
	        e.preventDefault();
	        $('html,body').animate({scrollTop: 0});
	    });
	    $qrTools.hover(function() {
	        qrImg.fadeIn();
	    }, function() {
	        qrImg.fadeOut();
	    });
$("#qq").click(function(){
	window.open("http://wpa.b.qq.com/cgi/wpa.php?ln=1&key=XzkzODAzOTA2NF84MDg1Nl80MDA2OTk4NjY2XzJf");
});
});
function load(){
	$.post("home.html");
	$.post("helpIndex.html");
}
function loginBBS(){
	window.open("loginBBS.do","_blank");				 
}
</script>
<!--返回顶部结束-->

<!--头部开始-->
<div class="login_registration_head">
<div class="container">
<div class="logo"><a href="/" title="地标金融"><img src="images/logo.png" title="地标金融" alt="地标金融" /></a></div>
<div class="clear"></div>
</div>
</div>
<!--头部结束-->
</body>
</html>
<!--中部开始-->
<div class="wrapper">
	<div class="registration_wrapper">
		<div class="container">
			<div class="registration margin_top">
				<div class="registration_process">
					<img src="images/registration_02.jpg" width="900" height="56" />
				</div>
				<div class="registration_form">
				<form:form action="register.do" id="registerForm" commandName="registerForm" method="post" style="background:url(images/registration_08.jpg) no-repeat right 10px;">
				<form:hidden path="user_name" />
				<form:hidden path="password" />
				<form:hidden path="email" />
						<ul>
							<li>

								<div class="li_left">
									<table border="0" cellspacing="0" cellpadding="0" height="40"
										align="right">
										<tr>
											<td class="required">*</td>
											<td>手机号码：</td>
										</tr>
									</table>
								</div>
								<div class="li_center" style="width:780px;">
									<table border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td><form:input path="cellphone" cssClass="input_text" maxlength="11" cssStyle="width:150px"/>
											</td>
											<td id="clickMsg_1" style="display:none; padding-left:8px;">
											<table border="0" cellspacing="0" cellpadding="0" width="250">
											<tr>
												<td><span style="color: red">请输入有效的手机号码。</span></td>
											</tr>
											</table>
											</td>
										</tr>
									</table>
								</div>
							
							</li>

							<li>
								<div class="li_left">
									<table border="0" cellspacing="0" cellpadding="0" height="40"
										align="right">
										<tr>
											<td class="required">*</td>
											<td>短信验证码：</td>
										</tr>
									</table>
								</div>
								<div class="li_center" style="width:780px; position:relative;">
									<table border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td>
											<form:input path="validCode" cssClass="input_text" cssStyle="width:150px;" value="1111"/>
											</td>
											<td>
											<input id="captureValidCode" type="button" class="blue_a" style="float:left; line-height:30px;"	value="免费获取验证码" />
											
											</td>
										</tr>
									</table>
								</div>
							</li>
							
							<li>
							<div class="li_left"></div>
							<div class="li_center">
								<table border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td><input id="btn_register" value="下一步"
											type="button" class="input_button input_button_180" />
										</td>
									</tr>
								</table>
							</div></li>
						</ul>
					</form:form>
				</div>
			</div>
			<div class="clear"></div>

		</div>
	</div>
</div>
<!--中部结束-->
<script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>
<script type="text/javascript" src="js/passwordStrength-min.js"></script>
<script type="text/javascript" src="js/front/frontCommon.js"></script>
<script type="text/javascript" src="js/jquery.md5.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btn_register").click(function(){
			$("#clickMsg_1").hide();
			var valid=true;
			var cellphone = $.trim($("#cellphone").val());
			cellphoneReg = /^1\d{10}$/;
			if (cellphone=="" || !cellphoneReg.test(cellphone)) {
				$("#clickMsg_1").show();
				valid=false;
			}
			if (valid) {
				$("#registerForm").submit();
			}
		});
	});
</script>

<script type="text/javascript" src="jBox/jquery.jBox-2.3.min.js"></script>
<script type="text/javascript" src="jBox/i18n/jquery.jBox-zh-CN.js"></script>
<script type="text/javascript">
	function useTerms() {
		$.jBox.open("post:queryUserTerms.html", "使用条款", 800, 400, {
			buttons : {
				'关闭' : true
			}
		});
	}
	function ysTerms() {
		$.jBox.open("post:queryPrivacy.html", "隐私条款", 800, 400, {
			buttons : {
				'关闭' : true
			}
		});
	}
</script>

<link href="style/member.css" rel="stylesheet" type="text/css" />
<html>
  <body>
 
<!--底部开始-->
<div class="login_foot">
<div class="container">
<table border="0" cellspacing="0" cellpadding="0" align="center">
<tr>
<td align="center">
<table border="0" cellspacing="0" cellpadding="5">
<tr>
<td><a href="aboutUs.html" title="关于我们">关于我们</a></td>
<td>|</td>
<td><a href="aboutUs.html#contactus" title="联系我们">联系我们</a></td>
<td>|</td>
<td><a href="security.html" title="安全保障">安全保障</a></td>
<td>|</td>
<td><a href="helpIndex.html" title="帮助中心">帮助中心</a></td>
<td>|</td>
<td><a href="sitemap.html" title="网站地图">网站地图</a></td>
</tr>
</table>
</td>
</tr>
<tr>
<td align="center">
<table border="0" cellspacing="0" cellpadding="5">
<tr>
<td>版权所有©XXXX金融服务有限公司　备案号：粤ICP备255448555号-1</td>
</tr>
</table>
</td>
</tr>
</table>
</div>
</div>
<!--底部结束-->
<script type="text/javascript">
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-54191212-1', 'auto');
  ga('send', 'pageview');
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F8283eaf12a90d07094bbd0a4a04652a9' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cspan id='cnzz_stat_icon_1253722559' style='display:none;' %3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/stat.php%3Fid%3D1253722559%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));
</script>
  </body>
</html>
</body>
</html>