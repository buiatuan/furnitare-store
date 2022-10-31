const plus =document.querySelector(".qtyplus"),
    minus = document.querySelector(".qtyminus"),
    num = document.querySelector(".qty");

    let a = 1;

    plus.addEventListener("click",()=>{
        a++;
        a = (a < 10) ? "0" + a : a;
        num.value = a;
    });
    minus.addEventListener("click",()=>{
        if (a>1){
            a--;
            a = (a < 10) ? "0" + a : a;
            num.value = a;
        }
    });
