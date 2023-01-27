$(document).ready(function(){
    
    $('#healthTextForm1').on('submit', function(){
    //폼이 submit 되지 않도록 기본 기능 중단
       event.preventDefault();
       var hcdValue = $('#heightInput').val();
        var hcdName = $('#heightInputName').val();
       if(hcdValue == ""){
            alert("키을 입력해야 합니다.");
       }
       else{
        ajax(hcdValue,hcdName);
       }
    });
    $('#healthTextForm2').on('submit', function(){
    //폼이 submit 되지 않도록 기본 기능 중단
       event.preventDefault();
       var hcdValue = $('#weightInput').val();
        var hcdName = $('#weightInputName').val();
       if(hcdValue == ""){
            alert("몸무게을 입력해야 합니다.");
       }
       else{
        ajax(hcdValue,hcdName);
       }
    });
    $('#healthTextForm3').on('submit', function(){
    //폼이 submit 되지 않도록 기본 기능 중단
       event.preventDefault();
       var hcdValue = $('#bloodSInput').val();
        var hcdName = $('#bloodSInputName').val();
       if(hcdValue == ""){
            alert("혈당을 입력해야 합니다.");
       }
       else{
        ajax(hcdValue,hcdName);
       }
    });
    $('#healthTextForm4').on('submit', function(){
    //폼이 submit 되지 않도록 기본 기능 중단
       event.preventDefault();
       var hcdValue1 = $('#bloodPInput1').val();
        var hcdName1 = $('#bloodPName1').val();
        var hcdValue2 = $('#bloodPInput2').val();
        var hcdName2 = $('#bloodPName2').val();
       if(hcdValue1 == "" || hcdValue2 ==""){
            alert("수축기와 이완기혈압을 전부 입력해야 합니다.");
       }
       else{
        ajax2(hcdValue1,hcdName1,hcdValue2,hcdName2);
       }
    });
       $('#healthTextForm5').on('submit', function(){
    //폼이 submit 되지 않도록 기본 기능 중단
       event.preventDefault();
       var hcdValue = $('#diseaseInput').val();
        var hcdName = $('#diseaseInputName').val();
       if(hcdValue == ""){
            alert("혈당을 입력해야 합니다.");
       }
       else{
        ajax(hcdValue,hcdName);
       }
    });
    function ajax(hcdValue, hcdName){
        $.ajax({
            type:"post",
            url:"/healthcare/healthInput",
            data: {"hcdValue":hcdValue,
                    "hcdName":hcdName},
            dataType:'text',
            success:function(result){
            
            },
            error:function(){
                alert("실패");
            }
        }); // ajax 종료 	
    }

    function ajax2(hcdValue1, hcdName1,hcdValue2, hcdName2){
        $.ajax({
            type:"post",
            url:"/healthcare/healthInput2",
            data: {"hcdValue1":hcdValue1,
                    "hcdName1":hcdName1,
                    "hcdValue2":hcdValue2,
                    "hcdName2":hcdName2},
            dataType:'text',
            success:function(result){
            
            },
            error:function(){
                alert("실패");
            }
        }); // ajax 종료 	
    }
    
});

