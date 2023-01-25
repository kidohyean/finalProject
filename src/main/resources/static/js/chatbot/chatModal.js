$(document).ready(function(){
    $('.openmodale').click(function (e) {
        e.preventDefault();
        $('.modale').addClass('opened');
        $(".modal-content").load("/chatBotModal");
   });
$('.closemodale').click(function (e) {
        e.preventDefault();
        $('.modale').removeClass('opened');
   });
});