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