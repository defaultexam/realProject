<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%><%@ page
	trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- <link rel="icon" href="/resources/images/common/icon.png"> -->
<title><tiles:getAsString name="title" /></title>
<link href="/resources/include/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/resources/include/css/sticky-footer-navbar.css"
	rel="stylesheet">
<style>
.align {
	padding-left: 35%;
	padding-right: 35%;
}
h4, p{
	color: highlight;
}
</style>
</head>
<body>
	<div class="container">
		<tiles:insertAttribute name="menu" />
		<div class="row">
			<div class="col-xs-6 col-lg-4">
				<h2>기능 1</h2>
				<p>기능 1</p>
				<p>
					<a class="btn btn-default" href="" role="button"> View details
						&raquo;</a>
				</p>
			</div>
			<div class="col-xs-6 col-lg-4">
				<h2>기능 2</h2>
				<p>기능 2</p>
				<p>
					<a class="btn btn-default" href="" role="button"> View details
						&raquo;</a>
				</p>
			</div>
			<div class="col-xs-6 col-lg-4">
				<h2>기능 3</h2>
				<p>기능 3</p>
				<p>
					<a class="btn btn-default" href="" role="button"> View details
						&raquo;</a>
				</p>
			</div>
		</div>
		<div class="row">
			<div class="align">
				<div class="carousel slide" id="pictureTab" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#pictureTab" data-slide-to="0" class="active"></li>
						<li data-target="#pictureTab" data-slide-to="1"></li>
						<li data-target="#pictureTab" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="/resources/images/food/steak.png">
							<div class="carousel-caption">
								<h4>스테이크</h4>
								<p>조온나 맛있어요!</p>
								<p>단돈 50,000원!</p>
							</div>
						</div>
						<div class="item">
							<img src="/resources/images/food/sallad.png">
							<div class="carousel-caption">
								<h4>샐러드</h4>
								<p>고기가 듬뿍 들어가서 또 맛있어요!</p>
								<p>단돈 45,000원!</p>
							</div>
						</div>
						<div class="item">
							<img src="/resources/images/food/pasta.png">
							<div class="carousel-caption">
								<h4>파스타</h4>
								<p>별거 없지만 존나 맛있어요!</p>
								<p>단돈 48,000원!</p>
							</div>
						</div>
					</div>
					<a class="left carousel-control" href="#pictureTab"
						data-slide="prev"> <span class="icon-prev"></span>
					</a> <a class="right carousel-control" href="#pictureTab"
						data-slide="next"> <span class="icon-next"></span>
					</a>
				</div>
			</div>
		</div>
	</div>
	<footer class="footer">
		<tiles:insertAttribute name="footer" />
	</footer>
	<script src="/resources/include/js/jquery-3.3.1.min.js"></script>
	<script src="/resources/include/dist/js/bootstrap.min.js"></script>
</body>
</html>