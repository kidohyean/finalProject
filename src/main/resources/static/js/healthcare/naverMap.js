$(document).ready(function(){
    $('.pharmacySlider .trigger').on('click', function() {
        if ($(this).hasClass('trigger-left')) {
          
          var $slide = $('.slides-list .slide').last()
                                               .clone()
                                               .css('margin-top','-70px');
          if(!$('.slides-list .slide').eq(0).is(':animated')) {
            $('.slides-list').prepend($slide);
            $('.slides-list .slide').eq(0).animate({'margin-top':'6px'}, 500, function(){
              $('.slides-list .slide').last().remove();
            });
          };
        } else {
          var $slide = $('.slides-list .slide').eq(0)
                                               .clone();
            $('.slides-list .slide').eq(0).animate({'margin-top':'-70px'}, 500, function(){
              $('.slides-list').append($slide);
              $(this).remove();
            });
        };
      });
});