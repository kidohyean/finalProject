$(document).ready(function(){
    console.log("dnfjs");
    let date = new Date();
    renderCalendar(date);
    dateMyListAjax(date.getFullYear(), date.getMonth()+1, date.getDate());
    $('#prevMonth').on('click',function(){
        date.setDate(1);
        date.setMonth(date.getMonth() - 1);
        renderCalendar(date);
    })

    $('#nextMonth').on('click',function(){
        date.setDate(1);
        date.setMonth(date.getMonth() + 1);
        renderCalendar(date);
    })
/* 정적이여서 안됨
   $('#dateBody tr #dayTD').on('mouseover',function(){
        $(this).css('background-color','#adadad');
        $(this).css('opacity','0.3');
    
   })


   $('#dateBody tr #dayTD').on('mouseout',function(){
        $(this).css('background-color','initial');
        $(this).css('opacity','1');
   })*/
   //동적으로 생성된 요소는 동적이벤트 처리
    $(document).on('mouseover','#dateBody tr #dayTD',function(){
        $(this).css('background-color','#adadad');
        $(this).css('opacity','0.3');
    })

    $(document).on('mouseout','#dateBody tr #dayTD',function(){
        $(this).css('background-color','initial');
        $(this).css('opacity','1');
    })
    $(document).on('click','#dateBody tr td',function(){
        $('#dateBody tr td #dayId').css('background-color','initial');
        $('#dateBody tr td #today').css('background-color','#fdca63c2');
        $(this).children('p').css('background-color','#ffb7b7');
        let strDate = $('#year-mouth').html().split(" ");
        let year = strDate[0].split("년");
        let mouth = strDate[1].split("월");
        let day = $(this).children('p').html();
        
        dateMyListAjax(year[0], mouth[0], day)
    })
    dateListAjax("save");
   $("input[name='choice']").change(function(){	
	    let radioValue = $(this).val();
        if(radioValue === "save"){
            $('#exerciseTag').css('visibility','hidden');
            dateListAjax();
        }
        else{
            $('#exerciseTag').css('visibility','visible');
            tagItem();
            let item = $('.tagItem').get();
            let arrItem = [];
            for(let i=0; i<item.length; i++){
                arrItem[i] = item[i].innerHTML;
            }
            recommendListAjax(arrItem);
        }
        
    });
    $(document).on('click','.listItemInputBt',function(){
        let thisId = $(this).attr('id');
        $('#slideListDiv'+thisId).css('height','200px');
        $('#slideListDiv'+thisId).css('visibility','visible');
        $('#slideListDiv'+thisId).children().children().css('height','40px');
        $('#slideListDiv'+thisId).children().children().css('visibility','visible');
        $('#datepicker'+thisId).children().css('height','40px');
        $('#datepicker'+thisId).children().css('visibility','visible');
        $('#exRoutineText'+thisId).css('visibility','visible');
        $('#slideListDiv'+thisId).css('transition-duration','500ms');
        $('#slideListDiv'+thisId).children().children().css('transition-duration','500ms');
   })
   
   $(document).on('click','.routineCancelBt',function(){
        let thisId = $(this).attr('id');
        $('#slideListDiv'+thisId).css('height','0px');
        $('#slideListDiv'+thisId).children().children().css('height','0px');
        $('#slideListDiv'+thisId).children().children().css('visibility','hidden');
        $('#datepicker'+thisId).children().css('height','0px');
        $('#datepicker'+thisId).children().css('visibility','hidden');
        $('#exRoutineText'+thisId).css('height','0px');
        $('#exRoutineText'+thisId).css('visibility','hidden');
        $('#slideListDiv'+thisId).css('visibility','hidden');
        $('#slideListDiv'+thisId).css('transition-duration','500ms');
        $('#slideListDiv'+thisId).children().children().css('transition-duration','500ms');
    })
    $(document).on('submit','.listSubmitForm',function(){
        event.preventDefault();
        let thisId = $(this).attr('id');
        let dateResult = true;
        let date = $('#date'+thisId).val();
        let time = $('#time'+thisId).val();
        let routineNo = $('#routineNo'+thisId).val();
        let dateTime = date + " " + time +":00";
        console.log(routineNo);
        let routineStr = $('#routineText'+thisId).val();
	    try {
	    let dateRegex = /([0-2][0-9]{3})-([0-1][0-9])-([0-3][0-9]) ([0-5][0-9]):([0-5][0-9]):([0-5][0-9])(([\-\+]([0-1][0-9])\:00))?/; 
	    dateResult = dateRegex.test(dateTime);
        } catch (err) {
            
        }
        if(dateResult && routineStr !=""){
            dateMyListCreateAjax(dateTime, routineStr,routineNo);
            let thisId = $(this).attr('id');
            console.log(thisId)
            $('#slideListDiv'+thisId).css('height','0px');
            $('#slideListDiv'+thisId).children().children().css('height','0px');
            $('#slideListDiv'+thisId).children().children().css('visibility','hidden');
            $('#datepicker'+thisId).children().css('height','0px');
            $('#datepicker'+thisId).children().css('visibility','hidden');
            $('#exRoutineText'+thisId).css('height','0px');
            $('#exRoutineText'+thisId).css('visibility','hidden');
            $('#slideListDiv'+thisId).css('visibility','hidden');
            $('#slideListDiv'+thisId).css('transition-duration','500ms');
            $('#slideListDiv'+thisId).children().children().css('transition-duration','500ms');
            $('#date'+thisId).val("");
            $('#time'+thisId).val("");
            $('#routineText'+thisId).val("");
        }
        else if(!dateResult){
            alert("날짜를 입력하세요.");
        }
        else if(routineStr ==""){
            alert("루틴을 입력하세요.");
        }
        
    })

    $(document).on('click','.listItemRemoveBt',function(){
        let thisId = $(this).attr('id');
        let elNo = thisId.split('num')[1];
        console.log(elNo);
        dateListDeleteAjax(elNo)
        $('li').remove('#li'+thisId);
    })

});

function renderCalendar(date){
    const viewYear = date.getFullYear();
    const viewMonth = date.getMonth();
       console.log(date.getDate()) ;
    $('#year-mouth').html(viewYear+'년 '+(viewMonth + 1)+'월');

    const prevLast = new Date(viewYear, viewMonth, 0);
    const thisLast = new Date(viewYear, viewMonth + 1, 0);
    
    const PLDay = prevLast.getDay();
    const TLDate = thisLast.getDate();
    console.log(prevLast);
    console.log(thisLast);
    console.log(PLDay);
    console.log(TLDate);
    var html = '';
    let DateCount = 1;
    const today = new Date();
    console.log(today.getDate());
    for(let i =0; i <6; i++){
        html += '<tr>';
        if(i==0){
            let PLDayC = PLDay + 1;
            if(PLDay !== 6){
                for(let k=0; k< PLDayC; k++){
                    html += '<td id="nullTD">'+'&nbsp;'+'</td>';
                }
            }
            for(let k=1; k<= 7 - PLDayC; k++){
                if (viewMonth === today.getMonth() && 
                    viewYear === today.getFullYear() &&
                    DateCount === today.getDate()){
                        html += '<td id="dayTD"><p id="today">'+DateCount+'</p></td>';
                    }
                    
                else{
                    html += '<td id="dayTD"><p id="dayId">'+DateCount+'</p></td>';
                }
                DateCount++;
            }
            
        }
        else{
            
            for(let k=1; k<= 7; k++){
                if(TLDate < DateCount){
                   html += '<td id="nullTD">'+'&nbsp;'+'</td>';
                    DateCount++;
                }
                else{
                    if (viewMonth === today.getMonth() && 
                    viewYear === today.getFullYear() &&
                    DateCount === today.getDate()){
                        html += '<td id="dayTD"><p id="today">'+DateCount+'</p></td>';
                    }
                    
                else{
                    html += '<td id="dayTD"><p id="dayId">'+DateCount+'</p></td>';
                }
                    DateCount++;
                }
                
            }
        }
        html += '<tr/>';
        
    }
    console.log(html);
    $('#dateBody').empty();
    $('#dateBody').append(html);

}

function dateMyListAjax(year, mouth, day){
    let dateStr = new Date();
    if(dateStr.getFullYear() == year && (dateStr.getMonth()+1) == mouth && dateStr.getDate() == day){
        $('#calendarListDate').html("오늘");
    }
    else{
        let clickDate = year+'년 '+mouth +'월 '+ day + '일';
        $('#calendarListDate').html(clickDate);
    }
    let mouthInt = Number(mouth);

    if(mouthInt < 10 && mouth != ("0"+mouth)){
        mouth = "0"+mouth;
    }

    let dayInt = Number(day);
    if(dayInt < 10 && day != ("0"+day)){
        day = "0"+day;
        
    }
    let dateTime = year+'-'+mouth +'-'+ day;
    console.log(dateTime);
    $.ajax({
        type:"post",
        url:"/healthcare/calendarMyList",
        data: {"date":dateTime,},
        dataType:'json',
        success:function(result){
            console.log(result);
            $('.listItemUl').empty();
            let html = "";
            $.each(result.myList, function(k,v){
                html+='<li class="listItemLi">';
                html+='  <div class="routineItemBt">';
                html+='    <img src="/image/healthcare/checkX.png">';
                html+='  </div>';
                html+='  <div id="routineItemName" class="itemName"><a href="/exercise/detailViewRoutineInfo/'+v.routineNo+'">'+v.routineName+'</a></div>';
                html+='  <div id="routineItemTime" class="itemTime">'+timeMyListText(v.myRoutineDate)+'</div>';
                html+='  <div id="routineItemRoutine" class="itemRoutine">'+v.myRoutine+'</div>';
                html+='</li>';
            })
            $('.listItemUl').append(html);
        },
        error:function(){
        }
    }); // ajax 종료 	
}

function timeMyListText(dateStr){
    let routineDate = new Date(dateStr);
    let theH = routineDate.getHours();
    let theM = routineDate.getMinutes();
    let result = '';

    if(theH > 11){
        theH -=12;
        result +='오후 ' + theH + '시 ' + theM +'분';
    }
    else{
        result +='오전 ' + theH + '시 ' + theM +'분';
    }
    return result;
}
function recommendListAjax(arr){
    console.log(arr.length);
    $.ajax({
        type:"post",
        url:"/healthcare/exerciseRecommendList",
        data: {"arrItem":arr},
        dataType:'json',
        traditional:true,
        success:function(result){
            console.log(result);
            $('.slides-list').empty();
            let html = "";
            $.each(result.aList, function(k,v){
                html+='<li class="slide">';
                html+='<input id="routineNo'+v.routineNo+'" type="hidden" value="'+v.routineNo+'">';
                html+='  <div class="slideListDivView">';
                html+='    <div class="listItemName"><a href="/exercise/detailViewRoutineInfo/'+v.routineNo+'">'+v.routineName+ '</a></div>';
                html+='    <div class="listItemType">'+ v.routineCategory+ '</div>';
                html+='    <div class="listItemBtDiv">';
                html+='      <button id="'+v.routineNo+'" class="listItemInputBt">운동예약</button>';
                html+='      </div></div>';
                html+='  <div id="slideListDiv'+v.routineNo+'" class="slideListDivInput">';
                html+='    <form id="'+v.routineNo+'" class="listSubmitForm">';
                html+='      <div id="datepicker'+v.routineNo+'" class="datepicker">';
                html+='        <input type="text" id="date'+v.routineNo+'" class="routineDate" name="trip-start">';
                html+='        <input type="time" id="time'+v.routineNo+'" class="routineTime" name="routineTime" required>';
                html+='      </div><input type="text" id="routineText'+v.routineNo+'" class="routineInput" name="routineInput" placeholder="운동루틴을 입력하세요.">';
                html+='        <input type="submit" id="'+v.routineNo+'"  class="routineInputBt" value="예약">';
                html+='        <input type="button" id="'+v.routineNo+'"  class="routineCancelBt" value="취소">';
                html+='    </form><div class="exRoutine">';
                html+='         <div class="exRoutineNameDiv">';
                html+='           <p id="exRoutineText'+v.routineNo+'" class="exRoutineText">운동루틴 ex)</p></div>';
                html+='         <div class="exRoutineTextDiv">';
                html+='           <p id="exRoutineText'+v.routineNo+'" class="exRoutineText">'+v.recExercise1+'</p>';
                html+='           <p id="exRoutineText'+v.routineNo+'" class="exRoutineText">'+v.recExercise2+'</p>';
                html+='           <p id="exRoutineText'+v.routineNo+'" class="exRoutineText">'+v.recExercise3+'</p>';
                html+='    </div></div></div></li>';
            });
            $('.slides-list').append(html);
            $(".ui-datepicker-trigger").remove();
            $(".routineDate").removeClass('hasDatepicker').datepicker({
                dateFormat: 'yy-mm-dd', //달력 날짜 형태
                inline: true,
                showOtherMonths: true,
                showOn:"button",
                buttonImage:"../../image/healthcare/calendarIcon.png",
                buttonImageOnly:true,
                showMonthAfterYear: true,
                monthNames: [ '01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12' ],
                dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
                showButtonPanel: true
            });
            //초기값을 오늘 날짜로 설정해줘야 합니다.
       $('.datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
        
        },
        error:function(){
        }
    }); // ajax 종료 	
}
function dateListAjax(){

    $.ajax({
        type:"post",
        url:"/healthcare/exerciseMyList",
        dataType:'json',
        success:function(result){
            $('.slides-list').empty();
            let html = "";
            $.each(result.aList, function(k,v){
                html+='<li id="linum' +v.elNo+ '" class="slide">';
                html+='<input id="routineNonum'+v.elNo+'" type="hidden" value="'+v.routineNo+'">';
                html+='  <div class="slideListDivView">';
                html+='    <div class="listItemName"><a href="/exercise/detailViewRoutineInfo/'+v.routineNo+'">'+v.routineName+ '</a></div>';
                html+='    <div class="listItemType">'+ v.routineCategory+ '</div>';
                html+='    <div class="listItemBtDiv">';
                html+='      <button id="num'+v.elNo+'" class="listItemInputBt">운동예약</button>';
                html+='      <button id="num'+v.elNo+'" class="listItemRemoveBt">삭제</button></div></div>';
                html+='  <div id="slideListDivnum'+v.elNo+'" class="slideListDivInput">';
                html+='    <form id="num'+v.elNo+'" class="listSubmitForm">';
                html+='      <div id="datepickernum'+v.elNo+'" class="datepicker">';
                html+='        <input type="text" id="datenum'+v.elNo+'" class="routineDate" name="trip-start">';
                html+='        <input type="time" id="timenum'+v.elNo+'" class="routineTime" name="routineTime" required>';
                html+='      </div><input type="text" id="routineTextnum'+v.elNo+'" class="routineInput" name="routineInput" placeholder="운동루틴을 입력하세요.">';
                html+='        <input type="submit" id="num'+v.elNo+'"  class="routineInputBt" value="예약">';
                html+='        <input type="button" id="num'+v.elNo+'"  class="routineCancelBt" value="취소">';
                html+='    </form><div class="exRoutine">';
                html+='         <div class="exRoutineNameDiv">';
                html+='           <p id="exRoutineTextnum'+v.elNo+'" class="exRoutineText">운동루틴 ex)</p></div>';
                html+='         <div class="exRoutineTextDiv">';
                html+='           <p id="exRoutineTextnum'+v.elNo+'" class="exRoutineText">'+v.recExercise1+'</p>';
                html+='           <p id="exRoutineTextnum'+v.elNo+'" class="exRoutineText">'+v.recExercise2+'</p>';
                html+='           <p id="exRoutineTextnum'+v.elNo+'" class="exRoutineText">'+v.recExercise3+'</p>';
                html+='    </div></div></div></li>';
            });
            $('.slides-list').append(html);
            $(".ui-datepicker-trigger").remove();
            $(".routineDate").removeClass('hasDatepicker').datepicker({
                dateFormat: 'yy-mm-dd', //달력 날짜 형태
                inline: true,
                showOtherMonths: true,
                showOn:"button",
                buttonImage:"../../image/healthcare/calendarIcon.png",
                buttonImageOnly:true,
                showMonthAfterYear: true,
                monthNames: [ '01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12' ],
                dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
                showButtonPanel: true
            });
            //초기값을 오늘 날짜로 설정해줘야 합니다.
       $('.datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
        },
        error:function(){
        }
        
    }); // ajax 종료 	
}

function dateMyListCreateAjax(date, routine, routineNo){

    $.ajax({
        type:"post",
        url:"/healthcare/createMyList",
        data: {"date":date,
                "routine":routine,
                "routineNo":routineNo},
        dataType:'text',
        success:function(result){
            
        },
        error:function(){
        }
    }); // ajax 종료 	
}

function dateListDeleteAjax(elNo){

    $.ajax({
        type:"post",
        url:"/healthcare/deleteList",
        data: {"elNo":elNo},
        dataType:'text',
        success:function(result){
            
        },
        error:function(){
        }
    }); // ajax 종료 	
}

function tagItem(){
    $('#exerciseTag').empty();
    let html ='';
    let bmiValue = $('#BMIStateValue').html();
    if(bmiValue === "저체중"){
        html += '<p class="tagItem">저체중</p>'
    }
    else if(bmiValue === "과체중"){
        html += '<p class="tagItem">과체중</p>'
    }
    else if(bmiValue === "비만"){
        html += '<p class="tagItem">비만</p>'
    }
    else{
        html += '<p class="tagItem">체중 정상</p>'
    }

    let bsValue = $('#BSStateValue').html();
    if(bsValue === "공복혈당장애"){
        html += '<p class="tagItem">공복혈당장애</p>'
    }
    else if(bsValue === "당뇨병"){
        html += '<p class="tagItem">당뇨병</p>'
    }
    else{
        html += '<p class="tagItem">당뇨 정상</p>'
    }

    let bpValue = $('#BPStateValue').html();
    if(bpValue === "주의혈압"){
        html += '<p class="tagItem">주의혈압</p>'
    }
    else if(bpValue === "고혈압 전 단계"){
        html += '<p class="tagItem">고혈압 전 단계</p>'
    }
    else if(bpValue === "고혈압 1기"){
        html += '<p class="tagItem">고혈압 1기</p>'
    }
    else if(bpValue === "고혈압 2기"){
        html += '<p class="tagItem">고혈압 2기</p>'
    }
    else if(bpValue === "수축기단독고혈압"){
        html += '<p class="tagItem">수축기단독고혈압</p>'
    }
    else{
        html += '<p class="tagItem">혈압 정상</p>'
    }
    $('#exerciseTag').append(html);
    
}