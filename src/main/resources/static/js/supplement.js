/**
 *  supplement.js
 */
 
 /*
$(document).ready(function(){
 $('.flex a').click(function(){
            let index = $(this).index();
            index++;
            $('.flex a').removeClass('active');
            $(this).addClass('active');
            
            $('.content').removeClass('on');
            $('#contents'+index).addClass('on');
        })
});
*/

$(function(){
  var str = '#len'; //increment by 1 up to 1-nelemnts
  $(document).ready(function(){
    var i, stop;
    i = 1;
    stop = 6; //num elements
    setInterval(function(){
      if (i > stop){
        return;
      }
      $('#len'+(i++)).toggleClass('bounce');
    }, 500)
  });
});

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 