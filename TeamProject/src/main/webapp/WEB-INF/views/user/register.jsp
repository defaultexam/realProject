<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<meta charset="UTF-8" />
<head>
<style>
.tdsize {
	width: 120px;
	height: 40px;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<form id="registerForm" class="form-inline" method="post">
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr class="idclass">
							<td class="tdsize"><label for="input_id">아이디*</label></td>
							<td><input type="text" class="form-control" id="id"
								name="id" placeholder="아이디" required="required">
								<button type="button" id="idConfirmBtn" class="btn btn-default">중복체크</button>
								<p class="form-control-static error"></p></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr>
							<td class="tdsize"><label for="password">비밀번호*</label></td>
							<td><input type="text" class="form-control" id="password"
								name="password" placeholder="비밀번호" required="required">
								<p class="form-control-static error"></p></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr>
							<td class="tdsize"><label for="input_repassword">비밀번호
									확인*</label></td>
							<td><input type="text" class="form-control" id="repassword"
								name="repassword" placeholder="비밀번호 확인" required="required">
								<p class="form-control-static error"></p></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr>
							<td class="tdsize"><label for="input_name">이름(실명)*</label>
							<td><input type="text" class="form-control" id="name"
								name="name" placeholder="이름" required="required">
								<p class="form-control-static error"></p></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr>
							<td class="tdsize"><label for="gender">성별*</label></td>
							<td><input type="radio" name="gender" value="남자"
								checked="checked" /> 남자
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"
								name="gender" value="여자" /> 여자</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr>
							<td class="tdsize"><label for="birthday">생년월일*</label></td>
							<td><input type="date" name="birthday" required="required"></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr>
							<td class="tdsize"><label for="email1">이메일*</label></td>
							<td><input type="text" class="form-control" id="email1"
								name="email1" placeholder="" required="required"> <label
								for="email2">@</label> <input type="text" class="form-control"
								id="email2" name="email2" placeholder="" required="required">
								<p class="form-control-static error"></p></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr>
							<td class="tdsize"><label for="phone">전화번호*</label></td>
							<td><input type="text" class="form-control" id="phone"
								name="phone" placeholder="" required="required">
								<p class="form-control-static error"></p></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr>
							<td class="tdsize"><label for="address">주소*</label></td>
							<td><input type="text" class="form-control" id="address"
								name="address" placeholder="" required="required">
								<button type="button" class="btn btn-default">우편번호 찾기</button>
								<p class="form-control-static error"></p></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr>
							<td class="tdsize"><label for="marriage">결혼여부</label></td>
							<td><input type="radio" name="marriage" value="미혼"
								checked="checked" /> 미혼
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"
								name="marriage" value="기혼" /> 기혼</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr>
							<td class="tdsize"><label for="marrydate">결혼 기념일</label></td>
							<td><input type="date" name="marrydate"></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr>
							<td class="tdsize"><label for="job">직업</label></td>
							<td><input type="text" class="form-control" id="job"
								name="job" placeholder=""></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<input type="button" value="가입" id="registerConfirm"
						class="btn btn-outline-secondary" /> <input type="button"
						value="취소" id="registerCancel" class="btn btn-outline-secondary" />
				</div>
			</div>
		</form>
	</div>
	<script src="/resources/include/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="/resources/include/js/common.js"></script>
	<script type="text/javascript" src="/resources/include/js/register.js"></script>
</body>