$(document).ready(function(){
     $('#form-change-password').on('submit', function(){
     //폼이 submit 되지 않도록 기본 기능 중단
         event.preventDefault();
        let memPw = $('#memPw').val();
        let newmemPw = $('#newmemPw').val();
        let newmemPwConfirm = $('#newmemPwConfirm').val();
       

        if(newmemPw == newmemPwConfirm && memPw != newmemPw && newmemPw != "" && newmemPwConfirm !=""){
            $.ajax({
                type:"post",
                url:"/member/memPw",
                data: {"memPw":memPw,
                        "newmemPw":newmemPw,
                        "newmemPwConfirm":newmemPwConfirm},
                dataType:'text',
                success:function(result){
                    if(result == "success"){
                        location.href="/member/loginForm";
                    }else{
                        alert("현재 비밀번호가 일치하지 않습니다.");
                    }

                },
                error:function(){
                    alert("실패");
                }
            }); // ajax 종료

        }

        else if(memPw ==""){
            alert("이전 비밀번호는 필수 입력값입니다.");
        }

        else if(newmemPw == ""){
            alert("새 비밀번호는 필수 입력값입니다.");
        }
        else if(newmemPwConfirm ==""){
            alert("비밀번호 확인은 필수 입력값입니다.");
        }
        else if(memPw == newmemPw){
            alert("새 비밀번호를 이전 비밀번호와 같은 값으로 지정할 수 없습니다.");
        }
        else if(newmemPw !=newmemPwConfirm){
            alert("새 비밀번호와 비밀번호 값이 일치하지 않습니다.");
        }
        else{
            alert("에러");
        }
    });// submit 종료

});
