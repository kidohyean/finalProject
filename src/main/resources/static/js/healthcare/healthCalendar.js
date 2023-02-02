$(document).ready(function(){
    console.log("dnfjs");
    let date = new Date();
    renderCalendar(date);

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
    var html = '';
    let DateCount = 1;
    const today = new Date();
    console.log(today.getDate());
    for(let i =0; i <5; i++){
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
                        html += '<td><p id="today">'+DateCount+'</p></td>';
                    }
                    
                else{
                    html += '<td>'+DateCount+'</td>';
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
                        html += '<td id="today">'+DateCount+'</td>';
                    }
                    
                else{
                    html += '<td>'+DateCount+'</td>';
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