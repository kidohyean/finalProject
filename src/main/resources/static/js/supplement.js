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

 
 $(document).ready(function(){

  $(".sidebar-menu > li.have-children a").on("click", function(i){
    if( ! $(this).parent().hasClass("active") ){
      $(".sidebar-menu li ul").slideUp();
      $(this).next().slideToggle();
      $(".sidebar-menu li").removeClass("active");
      $(this).parent().addClass("active");
    }
    else{
      $(this).next().slideToggle();
      $(".sidebar-menu li").removeClass("active");
        }
    });
});
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 