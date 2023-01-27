
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

