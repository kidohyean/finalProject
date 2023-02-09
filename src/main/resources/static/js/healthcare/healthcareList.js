$(document).ready(function(){
    $('.triggerList').on('click', function() {
        if ($(this).hasClass('trigger-left')) {
          
          var $slideList = $('.slidesList-list .slideList').last()
                                               .clone()
                                               .css('margin-left','-160px');
          if(!$('.slidesList-list .slideList').eq(0).is(':animated')) {
            $('.slidesList-list').prepend($slideList);
            $('.slidesList-list .slideList').eq(0).animate({'margin-left':'0px'}, 500, function(){
              $('.slidesList-list .slideList').last().remove();
            });
          };
        } else {
          var $slideList = $('.slidesList-list .slideList').eq(0)
                                               .clone();
            $('.slidesList-list .slideList').eq(0).animate({'margin-left':'-160px'}, 500, function(){
              $('.slidesList-list').append($slideList);
              $(this).remove();
            });
        };
      });


      
});