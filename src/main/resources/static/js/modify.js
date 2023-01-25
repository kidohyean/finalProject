/**
 * 
 */
$(document).ready(function(){
	$(".modifyBtn").on("click", function() {
		//console.log("click modify");
		$(".updateMember").attr("readonly", false);
		$(".attrBtn").css("display", "inline");
		$(".updateBtn").css("display", "inline");
		$(".deleteBtn").css("display", "none");
		$(".updatePassword").css("display", "inline");
	});
	
	$(".updateBtn").on("click", function() {
		let pw = $(".inputPw").val(); 
		
		if(pw == "") {
			$(".checkPassword").css("display", "block");
			pwCheck = false;
		}
		else {
			$(".checkPassword").css("display", "none");
				pwCheck = true;
		}
		if(pwCheck == true) {
			$(".modifyForm").submit();
			alert("수정되었습니다. 다시 로그인해주세요.");
		}
		return false;
	});
	$('#bt').on('click', function(){
		console.log("click");
		$('#pwCheckForm').css("visibility","visible")
	});
	$('#btc').on('click', function(){
		console.log("click");
		$('#pwCheckForm').css("visibility","hidden")
	});

	$('#pwCheckForm').on('submit', function(){
		//폼이 submit 되지 않도록 기본 기능 중단
			event.preventDefault();
			
			// 서버에 전송하고 결과 받아서 처리
			$.ajax({
				type:"post",
				url:"/myPage/pwCheck",
				data: {"pwCheck":$('#pwCheck').val()},
				dataType:'text',
				success:function(result){
					if(result == "success"){
						$('#pwCheckForm').css("visibility","hidden")
						$('#testDiv').css("visibility","visible")
					}else{
						alert("비밀번호가 일치하지 않습니다.");
					}
				
				},
				error:function(){
					alert("실패");
				}
			}); // ajax 종료 	
		});// submit 종료
});