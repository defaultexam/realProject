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
<link rel="icon" href="/resources/images/common/icon.png">
<title><tiles:getAsString name="title" /></title>
<link href="/resources/include/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/resources/include/css/sticky-footer-navbar.css"
	rel="stylesheet">
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
	</div>
	<footer class="footer">
		<tiles:insertAttribute name="footer" />
	</footer>
	<script
		src="/resources/include/dist/assets/js/ie10-viewport-bug-workaround.js"></script>
	<script
		src="/resources/include/dist/assets/js/ie-emulation-modes-warning.js"></script>
	<script src="/resources/include/js/jquery-3.3.1.min.js"></script>
	<script src="/resources/include/dist/assets/js/vendor/popper.min.js"></script>
	<script src="/resources/include/dist/js/bootstrap.min.js"></script>
</body>
</html>