$(document).ready(function(){
    let heightM = $('.HInput').val();
    let weightM = $('#weightText').html();
    let bsM = $('#BSText').html();
    let bpM1 = $('#BloodPValue1').html();
    let bpM2 = $('#BloodPValue2').html();
    BMIMatch(heightM, weightM);
    wMatch(weightM);
    BSMatch(bsM);
    BPMatch(bpM1, bpM2);
    $('.HInput').on('click',function(){
        
        $('.HInput').attr('readonly',false);
        $('.HInput').attr('value',"");
        $('#HSubmitBT').attr('disabled',false);
        $('#cancelHBt').css('visibility',"visible");
    });
    $('#cancelHBt').on('click',function(){
        
        $('.HInput').attr('readonly',true);
        $('.HInput').attr('value',HValue);
        $('#HSubmitBT').attr('disabled',true);
        $('#cancelHBt').css('visibility',"hidden");
        
    });

    $('.IDHiddenBT').on('click',function(){
        
        var thisId = $(this).attr("id");
        if($('#'+thisId).html() == "입력"){
            $('#'+thisId).html("취소");
            $('.'+thisId).css('visibility',"visible");
        }
        else{
            $('#'+thisId).html("입력");
            $('.'+thisId).css('visibility',"hidden");
        }
        
        
    });

    $('#stateFormH').on('submit', function(){
    //폼이 submit 되지 않도록 기본 기능 중단
       event.preventDefault();
       var hcdValue = $('.HInput').val();
       if(hcdValue == ""){
            alert("키를 입력해야 합니다.");
       }
       else{
        $('.HInput').val(hcdValue+"cm");
        inputAjax(hcdValue,"키");
        $('#cancelHBt').css("visibility","hidden");
        heightM = $('.HInput').val();
        BMIMatch(heightM, weightM);
       }
    });
    $('#stateFormW').on('submit', function(){
    //폼이 submit 되지 않도록 기본 기능 중단
       event.preventDefault();
       var hcdValue = $('#weightInput').val();
       if(hcdValue == ""){
            alert("체중을 입력해야 합니다.");
       }
       else{
        $('#weightText').html(hcdValue+"kg");
        inputAjax(hcdValue,"체중");
        $('.wInputDiv').css("visibility","hidden");
        $('#wInputDiv').html("입력");
        $('#weightInput').val("");
        weightM = $('#weightText').html();
        BMIMatch(heightM, weightM);
        wMatch(weightM);
       }
    });
    $('#stateFormBS').on('submit', function(){
    //폼이 submit 되지 않도록 기본 기능 중단
       event.preventDefault();
       var hcdValue = $('#bloodSInput').val();
       if(hcdValue == ""){
            alert("혈당을 입력해야 합니다.");
       }
       else{
        $('#BSText').html(hcdValue+"mg/dL");
        inputAjax(hcdValue,"혈당");
        $('.BSInputDiv').css("visibility","hidden");
        $('#BSInputDiv').html("입력");
        $('#bloodSInput').val("");
        bsM = $('#BSText').html();
        BSMatch(bsM);
       }
    });
    $('#stateFormBF').on('submit', function(){
    //폼이 submit 되지 않도록 기본 기능 중단
       event.preventDefault();
       var hcdValue1 = $('#bloodPInput1').val();
        var hcdValue2 = $('#bloodPInput2').val();
       if(hcdValue1 == "" || hcdValue2 ==""){
            alert("수축기와 이완기혈압을 전부 입력해야 합니다.");
       }
       else{
        $('#BloodPValue1').html(hcdValue1);
        $('#BloodPValue2').html(hcdValue2);
        inputAjax2(hcdValue1,"수축기혈압",hcdValue2,"이완기혈압");
        $('.BPInputDiv').css("visibility","hidden");
        $('#BPInputDiv').html("입력");
        $('#bloodPInput1').val("");
        $('#bloodPInput2').val("");
        bpM1 =  $('#BloodPValue1').html();
        bpM2 =  $('#BloodPValue2').html();
        BPMatch(bpM1, bpM2);
       }
    });
    
    
});

function wMatch(weight){
    if(weight !=null){
        $('#wStateValue').css('visibility','hidden');
    }
    else{
        $('#wStateValue').css('visibility','visible');
    }
};

function BMIMatch(height, weight){
    if(height === "" || (height === "" && weight === "")){
        $('#BMIStateValue').html("키를 입력하세요.");
    }
    else if(weight === ""){
        $('#BMIStateValue').html("체중을 입력하세요.");
    }
    else{
        let heightStr = height.split('cm',1);
        let weightStr = weight.split('kg',1);
        let heightM = parseFloat(heightStr) /100;
        let weightM = parseFloat(weightStr);
        let bmiM = weightM/(heightM * heightM);
        let bmiRound = Math.round(bmiM * 10)/10;
        console.log(heightStr);
        console.log(weightStr);
        console.log(bmiRound);
        $('#BMIText').html(bmiRound+"%");
        if(bmiRound < 20){
            $('#BMIStateValue').html("저체중");
            $('#BMIStateValue').css('background-color','#4c91f9')
        }
        else if(bmiRound >= 20 && bmiRound <=24){
            $('#BMIStateValue').html("정상");
            $('#BMIStateValue').css('background-color','#67f94c')
        }
        else if(bmiRound >= 25 && bmiRound <=29){
            $('#BMIStateValue').html("과체중");
            $('#BMIStateValue').css('background-color','#f9a44c')
        }
        else{
            $('#BMIStateValue').html("비만");
            $('#BMIStateValue').css('background-color','#f94c4c')
        }
    };
}
    function BSMatch(bsM){
        let bsStr = bsM.split('mg/dL',1);
        let bsMF = parseFloat(bsStr);
        if(bsMF < 100){
            $('#BSStateValue').html("정상");
            $('#BSStateValue').css('background-color','#4c91f9')
        }
        else if(bsMF >= 100 && bsMF <=125){
            $('#BSStateValue').html("공복혈당장애");
            $('#BSStateValue').css('background-color','#67f94c')
        }
        else{
            $('#BSStateValue').html("당뇨병");
            $('#BSStateValue').css('background-color','#f9a44c')
        }
    };

    function BPMatch(bpM1, bpM2){
        let bpMF1 = parseFloat(bpM1);
        let bpMF2 = parseFloat(bpM2);

        if(bpMF1 < 120 && bpMF2 < 80){
            $('#BPStateValue').html("정상");
            $('#BPStateValue').css('background-color','#f9a44c')
        }
        else if((bpMF1 >= 120 && bpMF1 <= 129) && (bpMF2 < 80)){
            $('#BPStateValue').html("주의혈압");
            $('#BPStateValue').css('background-color','#67f94c')
        }
        else if((bpMF1 >= 130 && bpMF1 <= 139) || (bpMF2 >=80 && bpMF2 <= 89)){
            $('#BPStateValue').html("고혈압 전 단계");
            $('#BPStateValue').css('background-color','#67f94c')
        }
        else if((bpMF1 >= 140 && bpMF1 <= 159) || (bpMF2 >=90 && bpMF2 <= 99)){
            $('#BPStateValue').html("고혈압 1기");
            $('#BPStateValue').css('background-color','#67f94c')
        }
        else if(bpMF1 >= 160  || bpMF2 >=100 ){
            $('#BPStateValue').html("고혈압 2기");
            $('#BPStateValue').css('background-color','#67f94c')
        }
        else if(bpMF1 >= 140 && bpMF2 < 90){
            $('#BPStateValue').html("수축기단독고혈압");
            $('#BPStateValue').css('background-color','#67f94c')
        }
        else{

        }
    }

function inputAjax(hcdValue, hcdName){
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

function inputAjax2(hcdValue1, hcdName1,hcdValue2, hcdName2){
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