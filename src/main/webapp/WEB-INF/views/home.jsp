<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://"
+ request.getServerName() + ":" + request.getServerPort()
+ path + "/";
%>
<!DOCTYPE html>
<html>
	<head>
		<base href="<%=basePath%>">
		<!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame
		Remove this if you use the .htaccess -->
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>NENU EXAM MANAGEMENT</title>
		<meta name="viewport"
		content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="keywords" content="">
		<link rel="shortcut icon" href="<%=basePath%>resources/images/favicon.ico" />
		<link href="resources/bootstrap/css/bootstrap-huan.css"
		rel="stylesheet">
		<link href="resources/font-awesome/css/font-awesome.min.css"
		rel="stylesheet">
		<link href="resources/css/style.css" rel="stylesheet">
		
		<style>
			.question-number{
				color: #5cb85c;
				font-weight: bolder;
				display: inline-block;
				width: 30px;
				text-align: center;
			}
			
			.question-number-2{
				color: #5bc0de;
				font-weight: bolder;
				display: inline-block;
				width: 30px;
				text-align: center;
			}
			.question-number-3{
				color: #d9534f;
				font-weight: bolder;
				display: inline-block;
				width: 30px;
				text-align: center;
			}
			
			a.join-practice-btn{
				margin:0;
				margin-left:20px;
			}
			
			.content ul.question-list-knowledge{
				padding:8px 20px;
			}
			
			.knowledge-title{
				background-color:#EEE;
				padding:2px 10px;
				margin-bottom:20px;
				cursor:pointer;
				border:1px solid #FFF;
				border-radius:4px;
			}
			
			.knowledge-title-name{
				margin-left:8px;
			}
			
			.point-name{
				width:200px;
				display:inline-block;
			}
		</style>

	</head>

	<body>


		<div class="full-slider" style="background-color:slategrey">
			<!-- Slider (Flex Slider) -->

			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="flexslider">
							<div class="flex-caption">
								<!-- Left column -->
								<div class="col-l">
                                    <h2>欢迎您进入东师在线考试系统！</h2>
                                    <p>
                                        &nbsp;
                                    </p>
                                    <p class="big grey">
                                        您的账号为：kukeoo</span>
                                    </p>
                                    <h4>&nbsp;</h4>
                                    <a href="j_spring_security_logout" class="btn btn-success"><i class="fa fa-sign-in"></i> 点击退出</a>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content" style="margin-bottom: 100px;">

			<div class="container" >
				<div style="margin-left:6cm;margin-top:1cm;">
                    <div>
					<h3>&nbsp;&nbsp;&nbsp;&nbsp;请进入试题库，选择您想参加的考试</h3>
					<p>
                        &nbsp;
					</p>
                    </div>
					<div class="row" >
                        <div class="select-test col-xs-6">
                        <div >
                            <img src="resources/images/book.png" style="width:90px;
height:90px;margin-left: 30px">
                        </div>
                        </div>
						<div class="select-test col-xs-6" style="margin-left: -6cm">
							<div style="height: 100px;">

								<div class="select-test-content">
									<h3 class="title">试题库</h3>
									<p>
										题型：单选题，判断题，填空题
									</p>
									<a class="btn btn-primary" data-toggle="modal" data-target=".levelup-practice-modal"><i class="fa fa-arrow-right"></i>点击考试</a>
									<div class="modal fade levelup-practice-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									    	<div class="modal-header">
										        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										        <h6 class="modal-title" id="myModalLabel">选择您想参加的考试</h6>
										     </div>
										     <div class="modal-body">
										     	<ul>
										     		<c:forEach items="${classifyMap}" var="item">
										     			<li>
										     				<div class="knowledge-title">
										     					<i class="fa fa-chevron-up"> </i><i class="fa fa-chevron-down" style="display:none;"> </i>  <span class="knowledge-title-name">${item.key}</span>
										     				</div>
										     				
										     				<ul class="question-list-knowledge" style="display:none;">
										     					<c:forEach items="${item.value }" var="tp">
										     						<li>${tp.questionTypeName } [共<span class="question-number">${tp.amount } </span>题]
										     							[已做<span class="question-number-2">${tp.rightTimes + tp.wrongTimes } </span> 题]
										     							<a href="student/practice-improve/${tp.questionPointId }/${tp.questionTypeId }" class="btn btn-success btn-sm join-practice-btn">参加练习</a>
										     						</li>
										     					</c:forEach>
										     				</ul>
										     			</li>
										     		</c:forEach>
										     	</ul>
										     </div>
										     <div class="modal-footer">
        										<button type="button" class="btn btn-default" data-dismiss="modal">关闭窗口</button>
      										 </div>
									    </div>
									  </div>
									</div>
								</div>
								<!--//content-->

							</div>
						</div>

							</div>
						</div>

					</div>

				</div>

			</div>

		</div>
        <footer style="opacity: 0.8;">
            <div class="container" style="margin-top: 100px">
                <div class="row">
                    <div class="col-md-12">
                        <div class="copy">
                            <p>
                                东师在线考试系统 Copyright ©  - <a href="/user-login-page" target="_blank">主页</a> | <a href="http://www.nenu.edu.cn/" target="_blank">关于我们</a> | <a href="http://www.eneu.edu.cn/" target="_blank">联系我们</a>
                            </p>
                        </div>
                    </div>
                </div>

            </div>

        </footer>

		<!-- Slider Ends -->

		<!-- Javascript files -->
		<!-- jQuery -->
		<script type="text/javascript"
		src="resources/js/jquery/jquery-1.9.0.min.js"></script>
		<!-- Bootstrap JS -->
		<script type="text/javascript"
		src="resources/bootstrap/js/bootstrap.min.js"></script>
		<script>
		$(function(){
			bindQuestionKnowledage();
			var result = checkBrowser();
			if (!result){
				alert("请至少更新浏览器版本至IE8或以上版本");
			}
		});
		
		function checkBrowser() {
			var browser = navigator.appName;
			var b_version = navigator.appVersion;
			var version = b_version.split(";");
			var trim_Version = version[1].replace(/[ ]/g, "");
			if (browser == "Microsoft Internet Explorer" && trim_Version == "MSIE7.0") {
				return false;
			} else if (browser == "Microsoft Internet Explorer"
					&& trim_Version == "MSIE6.0") {
				return false;
			} else
				return true;
		}
		
		function bindQuestionKnowledage(){
			$(".knowledge-title").click(function(){
				var ul = $(this).parent().find(".question-list-knowledge");
				
				if(ul.is(":visible")){
					$(this).find(".fa-chevron-down").hide();
					$(this).find(".fa-chevron-up").show();
					
					$(".question-list-knowledge").slideUp();
					
				}else{
					$(".fa-chevron-down").hide();
					$(".fa-chevron-up").show();
					
					$(this).find(".fa-chevron-up").hide();
					$(this).find(".fa-chevron-down").show();
					
					$(".question-list-knowledge").slideUp();
					ul.slideDown();
					
				}
				
				
			});
		}
		</script>
		<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1252987997'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s19.cnzz.com/z_stat.php%3Fid%3D1252987997' type='text/javascript'%3E%3C/script%3E"));</script>
	</body>
</html>
