<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<meta charset="UTF-8" />
<head>
<style>
.aligncenter {
	padding-left: 45%;
}
</style>
</head>
<body>
	<form id="loginForm" class="form-horizontal" method="post">
		<div class="panel panel-info">
			<div class="panel-heading">
				<h1 class="panel-title">로그인</h1>
			</div>
			<div class="panel-body">
				<div class="form-group col-md-12">
					<label for="id">아이디</label> <input type="text" class="form-control"
						id="id" name="id" placeholder="아이디">
					<p class="form-control-static error"></p>
				</div>
				<div class="form-group col-md-12">
					<label for="password">비밀번호</label> <input type="password"
						class="form-control" id="password" name="password"
						placeholder="비밀번호">
					<p class="form-control-static error"></p>
				</div>
				<div class="form-group col-md-12 aligncenter">
					<input type="button" value="로그인" id="loginBtn"
						class="btn btn-default" /> <input type="button" value="취소"
						id="loginCancel" class="btn btn-default" />
				</div>
			</div>
		</div>
	</form>
	<script src="/resources/include/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="/resources/include/js/common.js"></script>
	<script type="text/javascript" src="/resources/include/js/login.js"></script>

</body>