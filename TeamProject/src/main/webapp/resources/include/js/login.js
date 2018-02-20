function errCodeCheck() {
	var errCode = '<c:out value="${errCode}" />';
	if (errCode != "") {
		switch (parseInt(errCode)) {
		case 1:
			alert("아이디 또는 비밀번호 일치 하지 않거나 존 재하지 않는 \n회원입니다. 다시 로그인해 주세요.");
			break;
		case 3:
			alert("회원탈퇴에 문제가 있어 정상 처리하지 못하였 습니다.\n다시 시도해 주세요");
			break;
		case 6:
			alert("5번이상 로그인 시도로 30초동안 로그인 할 수  없습니다.\n잠시 후 다시 시도해 주세요");
			break;
		}
	}
}

$(function() {
	//	errCodeCheck();
	$('#input_id, #input_pass').bind("keyup", function() {
		$(this).parents("div").find(".error").html("");
	});
	// 로그인 버튼 클릭 시 처리 이벤트
	$("#loginBtn").click(function() {
/*		if (!formCheck($('#input_id'), $('.error:eq(0)'), "아이디를")) {
			return;
		} else if (!inputVerify(0, '#input_id', '.error:eq(0)')) {
			return;
		} else if (!formCheck($('#input_pass'), $('.error:eq(1)'), "비밀번호를")) {
			return;
		} else if (!inputVerify(1, '#input_pass', '.error:eq(1)')) {
			return;
		} else {*/
			$("#loginForm").attr({
				"method" : "POST",
				"action" : "/login"
			});
			$("#loginForm").submit();
	/*	}*/
	});
});