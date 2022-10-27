// Btn scroll top when click
$(function () {
    $('.btn-go-top').click(function (ev) {
        ev.preventDefault();
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    });

    window.onscroll = function () {
        scrollFunction();
    };

    function scrollFunction() {
        if (document.body.scrollTop > 1000 || document.documentElement.scrollTop > 1000) {
            $('.btn-go-top').css('display', 'block');
        } else {
            $('.btn-go-top').css('display', 'none');
        }
    }
});
