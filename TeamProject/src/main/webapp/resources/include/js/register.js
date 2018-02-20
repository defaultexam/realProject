
function errCodeCheck() {
	var errCode = '<c:out value="${errCode}" />';
	if (errCode != '') {
		switch (parseInt(errCode)) {
		case 1:
			alert("이미 가입된 회원입니다!");
			break; case 2:
			alert("회원가입 처리가 실패하였습니다.  잠시 후 다시 시도해 주십시오.");
			break;
		}
	}
}

// 비밀번호와 비밀번호 확인 일치 여부 확인 
function passwordCheck() {
	if ($("#input_password").val() != $("#input_repassword").val()) {
		alert("비밀번호와 비밀번호 확인이 일치하지 않습니다");
		$("#input_repassword").focus();
		$("#input_repassword").val("");
		return false;
	} else {
		return true;
	}
}

// 아이디에 비밀번호 포함 여부 확인
function idPwdCheck() {
	var userId = $("#input_id").val();
	var userPw = $("#input_password").val();
	if (userPw.indexOf(userId) > -1) {
		alert("비밀번호에 아이디를 포함할 수 없습니다.");
		$("#input_password").val("");
		$("#input_password").focus();
		return false;
	} else {
		return true;
	}
}

var idConfirm = 1;
$(function() {
	errCodeCheck();
	// 사용자에게 요구사항에 대한 문자열로 배열 초기화.
	var message = [ "영문,숫자만 가능. 6 ~ 12자로 입력해 주세요",
		"영문,숫자,특수문자만 가능. 8 ~ 15자 입력해 주세요.", "비밀번호와 비밀번호 확인란은 값이 일치해야 합니다.",
		"- 포함 입력해 주세요. 예시) 010-0000-0000" ];
	$('.error').each(function(index) {
		$('.error').eq(index).html(message[index]);
	});
	$('#input_id, #input_password, #input_repassword, #input_phone').bind("focus", function() {
		var idx = $("#input_id, #input_password, #input_repassword, #input_phone").index(this);
		$(this).parents(".form-group").find(".error").html(message[idx]);
	});
	$("#idConfirmBtn")
		.click(
			function() {
				if (!formCheck($('#input_id'), $('.error:eq(0)'), "아이디를"))
					return;
				else if (!inputVerify(0, '#input_id', '.error:eq(0)'))
					return;else {
					$
						.ajax({
							url : "/member/userIdConfirm",
							type : "post",
							data : "userId=" + $("#input_id").val(),
							error : function() {
								alert('사이트 접속에 문제로 정상 작동하지 못하였습니다. 잠시 후 다시 시도해 주세요.');
							},
							success : function(resultData) {
								console.log("resultData : "
									+ resultData);
								if (resultData == "1") {
									$("#input_id").parents(
										".form-group").find(
										".error").html(
										"현재 사용 중인 아이디입니다.");
								} else if (resultData == "2") {
									$("#input_id").parents(
										".form-group").find(
										".error").html(
										"사용 가능한 아이디입니다.");
								//			idConfirm = 2;
								}
							}
						});
				}
			});
	/* 확인 버튼 클릭 시 처리 이벤트 */
	$("#registerConfirm").click(
		function() {
			// 입력값 체크

			if (!formCheck($('#input_id'), $('.error:eq(0)'), "아이디를"))
				return;
			else if (!inputVerify(0, '#input_id', '.error:eq(0)'))
				return;
			else if (!formCheck($('#input_password'), $('.error:eq(1)'), "비밀번호를"))
				return;
			else if (!inputVerify(1, '#input_password', '.error:eq(1)'))
				return;
			else if (!idPwdCheck())
				return;
			else if (!formCheck($('#input_repassword'), $('.error:eq(2)'),
					"비밀번호 확인을"))
				return;
			else if (!inputVerify(1, '#input_repassword', '.error:eq(2)'))
				return;
			else if (!passwordCheck())
				return;
			else if (!formCheck($('#input_phone'), $('.error:eq(3)'), "전화번호를"))
				return;
			else if (!inputVerify(2, '#input_phone', '.error:eq(3)'))
				return;
			else if (!formCheck($('#input_name'), $('.error:eq(5)'), "이름을"))
				return;
			else if (!formCheck($('#input_name'), $('.error:eq(6)'),
					"이메일 주소를"))
				return;
				/*else if (idConfirm != 2) {
					alert("아이디 중복 체크 진행해 주세요.");
					return;
				}*/ else {
				$("#input_email1").val(
					$("#input_email1").val() + "@"
					+ $("#input_email2").val());
				$("#registerForm").attr({
					"method" : "post",
					"action" : "/register"
				});
				$("#registerForm").submit();
			}
		});
	$("#registerCancel").click(function() {
		location.href = "/";
	});
/*	$("#joinReset").click(function() {
		$("#registerForm").each(function() {
			this.reset();
		});
	});*/
});