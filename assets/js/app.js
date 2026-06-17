const roles = [
    "CS Student",
    "AI Researcher",
    "Computer Vision Researcher",
];

let roleIndex = 0;
let charIndex = 0;

const typingElement = document.getElementById("typing");

function typeEffect(){

    if(charIndex < roles[roleIndex].length){

        typingElement.innerHTML += roles[roleIndex].charAt(charIndex);

        charIndex++;

        setTimeout(typeEffect,100);

    }else{

        setTimeout(eraseEffect,1500);

    }

}

function eraseEffect(){

    if(charIndex > 0){

        typingElement.innerHTML =
        roles[roleIndex].substring(0,charIndex-1);

        charIndex--;

        setTimeout(eraseEffect,50);

    }else{

        roleIndex++;

        if(roleIndex >= roles.length){
            roleIndex = 0;
        }

        setTimeout(typeEffect,300);

    }

}

/* START TYPING */

document.addEventListener("DOMContentLoaded",function(){

    if(typingElement){
        typeEffect();
    }

});

/* SCROLL PROGRESS BAR */

window.addEventListener("scroll",function(){

    let scrollTop =
    document.documentElement.scrollTop;

    let scrollHeight =
    document.documentElement.scrollHeight -
    document.documentElement.clientHeight;

    let progress =
    (scrollTop / scrollHeight) * 100;

    document.getElementById("progress-bar")
    .style.width = progress + "%";

});

/* BACK TO TOP */

const backToTop =
document.getElementById("backToTop");

window.addEventListener("scroll",function(){

    if(window.scrollY > 300){

        backToTop.style.display = "block";

    }else{

        backToTop.style.display = "none";

    }

});

backToTop.addEventListener("click",function(){

    window.scrollTo({
        top:0,
        behavior:"smooth"
    });

});

/* DARK LIGHT MODE */

const themeToggle =
document.getElementById("theme-toggle");

themeToggle.addEventListener("click",function(){

    document.body.classList.toggle("light-mode");

});