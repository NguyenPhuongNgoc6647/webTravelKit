$(document).ready(function () {
    var x = $('.active').index();
    $('#slider--btn-next').click(function () {
        if (x == $('.slider img').length-1) {
            x = -1;
        }
        x++;
        $('.active').removeClass('active');
        $('.slider img').eq(x).addClass('active');     
    })
    $('#slider--btn-prev').click(function () {
        if (x == 0) {
            x = $('.slider img').length;
        }
        x--;
        $('.active').removeClass('active');
        $('.slider img').eq(x).addClass('active');
    })
    var auto = setInterval(function () {
        if (x == $('.slider img').length - 1) {
            x = -1;
        }
        x++;
        $('.active').removeClass('active');
        $('.slider img').eq(x).addClass('active'); 
    },4000)
});