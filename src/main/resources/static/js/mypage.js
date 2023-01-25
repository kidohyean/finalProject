/**
 * 
 */
 
$(document).ready(function(){
    console.log("js 확인");
         $('.modifyBtn').on('click',function(){
             console.log("click확인");
             $('.updateBtn').css("visibility","hidden");
        });
    });