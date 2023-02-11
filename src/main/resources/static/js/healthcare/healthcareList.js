$(document).ready(function(){
  $(document).on('click','#listBt .trigger',function(){
    if ($(this).hasClass('triggerUp')) {
      if($('.slideList .slide').length > 5){
        let $slideLists = $('.slideList .slide').first();
        $('.slideList').append($slideLists);
      }
      
    }else{
      if($('.slideList .slide').length > 5){
        let $slideLists = $('.slideList .slide').last();
        $('.slideList').prepend($slideLists);
      }
      
    }
  })

      
});

/*
 if ($(this).hasClass('trigger-up')) {
          
      var $slideLists = $('.slideList .slide').last()
                                           .clone()
                                           .css('margin-up','300px');
      if(!$('.slideList .slide').eq(0).is(':animated')) {
        $('.slideList').prepend($slideLists);
        $('.slideList .slide').eq(0).animate({'margin-up':'-10px'}, 500, function(){
          $('.slideList .slide').last().remove();
        });
      };
    } else {
      var $slideLists = $('.slideList .slide').eq(0)
                                           .clone();
        $('.slideList .slide').eq(0).animate({'margin-up':'-160px'}, 500, function(){
          $('.slideList').append($slideLists);
          $(this).remove();
        });
    };
*/ 