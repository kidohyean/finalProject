$(document).ready(function(){
 $('.flex1 a').click(function(){
            let index = $(this).index();
            index++;
            $('.flex1 a').removeClass('active');
            $(this).addClass('active');

            $('.content1').removeClass('on');
            $('#contents1-'+index).addClass('on');
        })
});
