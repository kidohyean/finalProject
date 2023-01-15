/**
 * 
 */

$(document).ready(function(){

    $('#delete').on('click', function(){
      event.preventDefault();
      var pageNum = $('#deletePageNum').val();
      if (confirm("삭제하시겠습니까?") == true){ 
        location.href="/community/delete/"+pageNum;
        alert("삭제했습니다.");
     }else{
       alert("취소합니다");
       console.log("취소되었습니다");
     }
    
     });
     })