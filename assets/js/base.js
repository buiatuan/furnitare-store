// js Header

// Scroll top show header
var lastScrollTop = 0;
var navHeader = document.getElementById('header');

window.addEventListener('scroll', function () {
    var scrollTop = this.window.pageYOffset || this.document.documentElement.scrollTop;
    if (scrollTop > lastScrollTop) {
        navHeader.style.top = '-76px';
    } else {
        navHeader.style.top = '0';
    }
    lastScrollTop = scrollTop;
});
// End Scroll top show header

// Show hidden Modal search nav-header
var headerSearch = document.querySelector('.nav-search');
var headerModal = document.querySelector('.modal-header-search');
var modalClose = document.querySelector('.modal-search-close');
var modalWrapper = document.querySelector('.modal-header-search');
var modalMainSearch = document.querySelector('.modal-search-main');

var showModal = function (e) {
    headerModal.classList.add('modal-show');
    document.querySelector('.modal-search-main-input').focus();
};

var hiddenModal = function (e) {
    headerModal.classList.remove('modal-show');
};

headerSearch.addEventListener('click', showModal);
modalClose.addEventListener('click', hiddenModal);
modalWrapper.addEventListener('click', hiddenModal);

modalMainSearch.addEventListener('click', function (e) {
    e.stopPropagation();
});
// End Show hidden Modal
