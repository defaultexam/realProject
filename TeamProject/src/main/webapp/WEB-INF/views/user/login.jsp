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
			<form action="" class="form">
				<div class="form-group">
					<label for="input_id">아이디</label> <input type="text"
						class="form-control" id="input_id" name="input_id"
						placeholder="아이디">
				</div>
				<div class="form-group">
					<label for="input_pass">비밀번호</label> <input type="text"
						class="form-control" id="input_pass" name="input_pass"
						placeholder="비밀번호">
				</div>
				<button type="submit" class="btn btn-outline-secondary">로그인</button>
			</form>
		</div>
	</div>

</body>