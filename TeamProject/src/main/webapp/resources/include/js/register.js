
function errCodeCheck() {
	var errCode = '<c:out value="${errCode}" />';
	if (errCode != '') {
		switch (parseInt(errCode)) {
		case 1:
			alert("이미 가입된 회원입니다!");
			break;
		case 2:
			alert("회원가입 처리가 실패하였습니다.  잠시 후 다시 시도해 주십시오.");
			break;
		}
	}
}

// 비밀번호와 비밀번호 확인 일치 여부 확인 
function passwordCheck() {
	if ($("#password").val() != $("#repassword").val()) {
		alert("비밀번호와 비밀번호 확인이 일치하지 않습니다");
		$("#repassword").focus();
		$("#repassword").val("");
		return false;
	} else {
		return true;
	}
}

// 아이디에 비밀번호 포함 여부 확인
function idPwdCheck() {
	var userId = $("#id").val();
	var userPw = $("#password").val();
	if (userPw.indexOf(userId) > -1) {
		alert("비밀번호에 아이디를 포함할 수 없습니다.");
		$("#password").val("");
		$("#password").focus();
		return false;
	} else {
		return true;
	}
}

var idConfirm = 1;
$(function() {
	errCodeCheck();
	// 사용자에게 요구사항에 대한 문자열로 배열 초기화.
	var message = [
		"영문,숫자만 가능. 6 ~ 12자로 입력해 주세요",
		"영문,숫자,특수문자만 가능. 8 ~ 15자 입력해 주세요.",
		"비밀번호와 비밀번호 확인란은 값이 일치해야 합니다.",
		"", "",
		"- 포함 입력해 주세요. 예시) 010-0000-0000" ];
	$('.error').each(function(index) {
		$('.error').eq(index).html(message[index]);
	});
	$('#id, #password, #repassword, #name, #birthday, #email, #phone, #address').bind("focus", function() {
		var idx = $("#id, #password, #repassword, #name, #birthday, #email, #phone, #address").index(this);
		$(this).parents(".form-group").find(".error").html(message[idx]);
		$(this).parents(".form-group").find(".error").css("color", "#000000");
	});
	let iddiv = document.getElementById("iddiv");
	let passdiv = document.getElementById("passdiv");
	let repassdiv = document.getElementById("repassdiv");
	$("#idConfirmBtn").click(
		function() {
			if (!formCheck($('#id'), $('.error:eq(0)'), "아이디를"))
				return;
			else if (!inputVerify(0, '#id', '.error:eq(0)'))
				return;else {
				$.ajax({
					url : "/register/userIdConfirm",
					type : "post",
					data : "userId=" + $("#id").val(),
					error : function() {
						alert('사이트 접속 문제로 정상 작동하지 못하였습니다. 잠시 후 다시 시도해 주세요.');
					},
					success : function(resultData) {
						console.log("resultData : " + resultData);
						if (resultData == "1") {
							$("#id").parents(
								".idclass").find(
								".error").html(
								"현재 사용 중인 아이디입니다.");
							iddiv.classList.add("form-group", "has-warning");
						} else if (resultData == "2") {
							$("#id").parents(
								".idclass").find(
								".error").html(
								"사용 가능한 아이디입니다.");
							idConfirm = 2;
							iddiv.classList.remove('has-error');
							iddiv.classList.remove('has-warning');
							iddiv.classList.add("form-group", "has-success");
						}
					}
				});
			}
		});

	$("#id").bind("blur", function() {
		if (!formCheck($('#id'), $('.error:eq(0)'), "아이디를")) {
			iddiv.classList.add("form-group", "has-error");
			return;
		} else if (!inputVerify(0, '#id', '.error:eq(0)')) {
			iddiv.classList.add("form-group", "has-error");
			return;
		}
	});
	$("#password").bind("blur", function() {

		if (!formCheck($('#password'), $('.error:eq(1)'), "비밀번호를")) {
			passdiv.classList.add("form-group", "has-error");
			return;
		} else if (!inputVerify(1, '#password', '.error:eq(1)')) {
			passdiv.classList.add("form-group", "has-error");
			return;
		} else if (!idPwdCheck())
			return;else {
			passdiv.classList.remove('has-error');
			passdiv.classList.add("form-group", "has-warning");
		}
	});
	$("#repassword").bind("blur", function() {
		if (!formCheck($('#repassword'), $('.error:eq(2)'),
				"비밀번호 확인을")) {
			repassdiv.classList.add("form-group", "has-error");
			return;
		} else if (!inputVerify(1, '#repassword', '.error:eq(2)')) {
			repassdiv.classList.add("form-group", "has-error");
			return;
		} else if (!passwordCheck()) {
			repassdiv.classList.add("form-group", "has-error");
			return;
		} else {
			passdiv.classList.remove('has-warning');
			repassdiv.classList.remove('has-error');
			passdiv.classList.add("form-group", "has-success");
			repassdiv.classList.add("form-group", "has-success");
		}
	});
	$("#name").bind("blur", function() {
		if (!formCheck($('#name'), $('.error:eq(3)'), "이름을"))
			return;
	});
	$("#email").bind("blur", function() {
		if (!formCheck($('#email1'), $('.error:eq(4)'), "이메일 주소를"))
			return;
	});
	$("#phone").bind("blur", function() {
		if (!formCheck($('#phone'), $('.error:eq(5)'), "전화번호를"))
			return;
	});
	$("#address").bind("blur", function() {
		if (!formCheck($('#address'), $('.error:eq(6)'), "주소를"))
			return;
	});
	/* 확인 버튼 클릭 시 처리 이벤트 */
	$("#registerConfirm").click(
		function() {
			// 입력값 체크
			if (!formCheck($('#id'), $('.error:eq(0)'), "아이디를"))
				return;
			else if (!inputVerify(0, '#id', '.error:eq(0)'))
				return;
			else if (!formCheck($('#password'), $('.error:eq(1)'), "비밀번호를"))
				return;
			else if (!inputVerify(1, '#password', '.error:eq(1)'))
				return;
			else if (!idPwdCheck())
				return;
			else if (!formCheck($('#repassword'), $('.error:eq(2)'),
					"비밀번호 확인을"))
				return;
			else if (!inputVerify(1, '#repassword', '.error:eq(2)'))
				return;
			else if (!passwordCheck())
				return;
			else if (!formCheck($('#name'), $('.error:eq(3)'), "이름을"))
				return;
			else if (!formCheck($('#email1'), $('.error:eq(4)'), "이메일 주소를"))
				return;
			else if (!formCheck($('#phone'), $('.error:eq(5)'), "전화번호를"))
				return;
			else if (!inputVerify(2, '#phone', '.error:eq(5)'))
				return;
			else if (!formCheck($('#address'), $('.error:eq(6)'), "주소를"))
				return;
			else if (idConfirm != 2) {
				alert("아이디 중복 체크 진행해 주세요.");
				return;
			} else {
				$("#email").val($("#email1").val() + "@" + $("#email2").val());
				$("#registerForm").attr({
					"method" : "post",
					"action" : "/register/confirm"
				});
				$("#registerForm").submit();
			}
		});
	$("#registerCancel").click(function() {
		location.href = "/";
	});
});