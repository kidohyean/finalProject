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
});