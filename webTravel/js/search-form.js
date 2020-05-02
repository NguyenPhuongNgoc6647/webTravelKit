//window.onload = function () {
//    var search_tour = document.getElementById('search-form--title__search-tour');
//    var search_hotel = document.getElementById('search-form--title__search-hotel');
//    var search_ticket = document.getElementById('search-form--title__search-ticket');
//    var search_car = document.getElementById('search-form--title__search-car');
//    var choose_search = document.querySelectorAll('.search-form--title li');
//    var active = document.querySelector('.active-search');
//    var tab_search = document.querySelectorAll('.tab-content--search-tour');
//    for (var i = 0; i < choose_search.length; i++) {
//        tab_search[i].onclick = function () {
//            active.classList.remove('active-search');
//            tab_search[i].classList.add('active-search');
//        }
//    }
//}


$(document).ready(function () {
    $('.search-form--title li').click(function () {
        
        $('.search-form--title li').removeClass('dark-color');
        var x = $(this).index();
        $(this).addClass('dark-color');
        $('.active-search').removeClass('active-search');
        $('.tab-content--search-tour').eq(x).addClass('active-search');
        return false;
    })
})
