$(document).ready(function(){
    $('.listSlider .triggerList').on('click', function() {
        if ($(this).hasClass('trigger-left')) {
          
          var $slideList = $('.slidesList-list .slideList').last()
                                               .clone()
                                               .css('margin-left','300px');
          if(!$('.slidesList-list .slideList').eq(0).is(':animated')) {
            $('.slidesList-list').prepend($slideList);
            $('.slidesList-list .slideList').eq(0).animate({'margin-left':'10px'}, 100, function(){
              $('.slidesList-list .slideList').last().remove();
            });
          };
        } else {
          var $slideList = $('.slidesList-list .slideList').eq(0)
                                               .clone();
            $('.slidesList-list .slideList').eq(0).animate({'margin-left':'-300px'}, 100, function(){
              $('.slidesList-list').append($slideList);
              $(this).remove();
            });
        };
      });
});