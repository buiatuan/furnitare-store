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
var modalMainSearch = document.querySelector('.modal-search-main');

var showModalSearch = function (e) {
    headerModal.classList.add('show');
    document.querySelector('.modal-search-main-input').focus();
};

var hiddenModalSearch = function (e) {
    headerModal.classList.remove('show');
};

headerSearch.addEventListener('click', showModalSearch);
modalClose.addEventListener('click', hiddenModalSearch);
headerModal.addEventListener('click', hiddenModalSearch);

modalMainSearch.addEventListener('click', function (e) {
    e.stopPropagation();
});
// End Show hidden Modal

// Show hidden Cart modal

var shoppingCart = document.querySelector('.nav-shopping-cart');
var modalCart = document.querySelector('.modal-cart');
var closeModalCart = document.querySelector('.modal-cart-close');
var modalMainCart = document.querySelector('.modal-main-cart');

var showModalCart = (e) => {
    modalCart.classList.add('show');
};

var hiddenModalCart = (e) => {
    modalCart.classList.remove('show');
};

shoppingCart.addEventListener('click', showModalCart);
closeModalCart.addEventListener('click', hiddenModalCart);
modalCart.addEventListener('click', hiddenModalCart);
modalMainCart.addEventListener('click', function (e) {
    e.stopPropagation();
});
