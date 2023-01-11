

$(document).ready(function(){
    console.log("start");
    $(".boardList").on('click',function(){
        console.log("on");
        location.href="/community/listdetail";
    })

})