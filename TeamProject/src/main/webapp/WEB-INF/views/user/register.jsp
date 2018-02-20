<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<meta charset="UTF-8" />
<head>
<link href="/resources/include/css/datepicker.css" rel="stylesheet">
<style>
.tdsize {
	width: 120px;
	height: 40px;
}
</style>
</head>
<body>
	<form action="registerForm" class="form-inline" method="post">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr>
							<td class="tdsize"><label for="input_id">아이디*</label></td>
							<td><input type="text" class="form-control" id="input_id"
								name="input_id" placeholder="아이디">
								<button type="button" id="idConfirmBtn" class="btn btn-default">중복체크</button></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr>
							<td class="tdsize"><label for="input_password">비밀번호*</label></td>
							<td><input type="text" class="form-control"
								id="input_password" name="input_password" placeholder="비밀번호">
							</td>
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
							<td><input type="text" class="form-control"
								id="input_repassword" name="input_repassword"
								placeholder="비밀번호 확인"></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr>
							<td class="tdsize"><label for="input_name">이름(실명)*</label>
							<td><input type="text" class="form-control" id="input_name"
								name="input_name" placeholder="이름"></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr>
							<td class="tdsize"><label for="input_gender">성별*</label></td>
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
							<td class="tdsize"><label for="input_birthday">생년월일*</label></td>
							<td>
								<!-- Basic with calendar -->
								<div class="bx--form-item">

									<div data-date-picker data-date-picker-type="single"
										class="bx--date-picker bx--date-picker--single">
										<!-- <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> -->
										<div class="bx--date-picker-container">
											<input type="text" id="date-picker-3"
												class="bx--date-picker__input"
												pattern="\d{1,2}/\d{1,2}/\d{4}" placeholder="mm/dd/yyyy"
												data-date-picker-input />
											<div class="bx--form-requirement">Invalid date format.
											</div>
										</div>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr>
							<td class="tdsize"><label for="input_email1">이메일*</label></td>
							<td><input type="text" class="form-control"
								id="input_email1" name="input_email1" placeholder=""> <label
								for="input_email2">@</label> <input type="text"
								class="form-control" id="input_email2" name="input_email2"
								placeholder=""></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr>
							<td class="tdsize"><label for="input_phone">전화번호*</label></td>
							<td><input type="text" class="form-control" id="input_phone"
								name="input_phone" placeholder=""></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr>
							<td class="tdsize"><label for="input_address">주소*</label></td>
							<td><input type="text" class="form-control"
								id="input_address" name="input_address" placeholder="">
								<button type="button" class="btn btn-default">우편번호 찾기</button></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr>
							<td class="tdsize"><label for="input_marriage">결혼여부</label></td>
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
							<td class="tdsize"><label for="input_marrydate">결혼
									기념일</label></td>
							<td>
								<!-- Basic with calendar -->
								<div class="bx--form-item">

									<div data-date-picker data-date-picker-type="single"
										class="bx--date-picker bx--date-picker--single">
										<!-- <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> -->
										<div class="bx--date-picker-container">
											<input type="text" id="date-picker-3"
												class="bx--date-picker__input"
												pattern="\d{1,2}/\d{1,2}/\d{4}" placeholder="mm/dd/yyyy"
												data-date-picker-input />
											<div class="bx--form-requirement">Invalid date format.
											</div>
										</div>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table>
						<tr>
							<td class="tdsize"><label for="input_job">직업</label></td>
							<td><input type="text" class="form-control" id="input_job"
								name="input_job" placeholder=""></td>
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
		</div>
	</form>
	<script src="/resources/include/js/carbon.min.js"></script>
	<script
		src="/resources/include/dist/assets/js/vendor/jquery-slim.min.js"></script>
	<script type="text/javascript" src="/resources/include/js/common.js"></script>
	<script type="text/javascript" src="/resources/include/js/register.js"></script>
</body>