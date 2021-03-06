<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<!-- BRAND -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#alignment-example"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/"><img
					src="/resources/images/logo.png" class="img-responsive"
					width="30px" height="30px" alt="Logo"></a>
			</div>
			<!-- COLLAPSIBLE NAVBAR -->
			<div class="collapse navbar-collapse" id="alignment-example">
				<!-- Links -->
				<ul class="nav navbar-nav navbar-left">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">소개 <span class="caret"></span></a>
						<ul class="dropdown-menu" aria-labelledby="about-us">
							<li><a href="#">드롭다운 1</a></li>
							<li><a href="#">드롭다운 2</a></li>
							<li><a href="#">드롭다운 3</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<!-- 로그인 했을 때 -->
					<c:if test="${login.id != null and login.id != ''}">
						<li>환영합니다 ${login.name}님</li>
						<li><a href="/">내 정보관리</a></li>
						<li><a href="/login/logout">로그아웃</a></li>
					</c:if>
					<!-- 비회원 -->
					<c:if test="${login.id == null or login.id == ''}">
						<li><a href="/login">로그인</a></li>
						<li class="navbar-right"><a href="/register">회원가입</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</nav>
</body>
