<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<meta charset="UTF-8" />
<body>
	<div class="panel panel-info">
		<div class="panel-heading">
			<h1 class="panel-title">로그인</h1>
		</div>
		<div class="panel-body">
			<form id="loginForm" class="form" method="post">
				<div class="form-group">
					<label for="input_id">아이디</label> <input type="text"
						class="form-control" id="input_id" name="input_id"
						placeholder="아이디">
				</div>
				<div class="form-group">
					<label for="input_pass">비밀번호</label> <input type="password"
						class="form-control" id="input_pass" name="input_pass"
						placeholder="비밀번호">
				</div>
				<input type="button" value="로그인" id="loginBtn"
					class="btn btn-outline-secondary" />
			</form>
		</div>
	</div>
	<script
		src="/resources/include/dist/assets/js/vendor/jquery-slim.min.js"></script>
	<script type="text/javascript" src="/resources/include/js/common.js"></script>
	<script type="text/javascript" src="/resources/include/js/login.js"></script>
</body>