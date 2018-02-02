<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%><%@ page
	trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/resources/images/common/icon.png">
<title><tiles:getAsString name="title" /></title>
<link href="/resources/include/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/resources/include/dist/css/sticky-footer-navbar.css"
	rel="stylesheet">
<script
	src="/resources/include/dist/assets/js/ie-emulation-modes-warning.js"></script>
<script type="text/javascript"
	src="/resources/include/js/jquery-1.12.4.min.js"></script>
<style>
.tdone {
	width: 10px;
}

.tdtwo {
	width: 5000px;
}
</style>
</head>
<body>
	<div class="container">
		<table>
			<tr>
				<td class="tdone"><tiles:insertAttribute name="menu" /></td>
				<td class="tdtwo">
					<div class="page-header">
						<div class="jumbotron">
							<h1>노력은 배신하지 않는다.</h1>
							<p>Efforts are not betraying you....</p>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-6 col-lg-4">
							<h2>기능 1</h2>
							<p>기능 1</p>
							<p>
								<a class="btn btn-default" href="" role="button"> View
									details &raquo;</a>
							</p>
						</div>
						<div class="col-xs-6 col-lg-4">
							<h2>기능 2</h2>
							<p>기능 2</p>
							<p>
								<a class="btn btn-default" href="" role="button"> View
									details &raquo;</a>
							</p>
						</div>
						<div class="col-xs-6 col-lg-4">
							<h2>기능 3</h2>
							<p>기능 3</p>
							<p>
								<a class="btn btn-default" href="" role="button"> View
									details &raquo;</a>
							</p>
						</div>
					</div>
				</td>
			<tr>
		</table>
	</div>
	<footer class="footer">
		<tiles:insertAttribute name="footer" />
	</footer>
	<script src="/resources/include/dist/js/bootstrap.min.js"></script>
	<script
		src="/resources/include/dist/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>