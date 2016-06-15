function scroll(element, delay, speed, lineHeight) {
    var numpergroup = 1;
    var slideBox = (typeof element == 'string') ? document.getElementById(element) : element;
    var delay = delay || 1000;
    var speed = speed || 20;
    var lineHeight = lineHeight || 20;
    var tid = null, pause = false;
    var liLength = slideBox.getElementsByTagName('li').length;
    var lack = numpergroup - liLength % numpergroup;
    for (i = 0; i < lack; i++) {
        slideBox.appendChild(document.createElement("li"));
    }
    var start = function () {
        tid = setInterval(slide, speed);
    }
    var slide = function () {
        if (pause) return;
        slideBox.scrollTop += 2;
        if (slideBox.scrollTop % lineHeight == 0) {
            clearInterval(tid);
            for (i = 0; i < numpergroup; i++) {
                slideBox.appendChild(slideBox.getElementsByTagName('li')[0]);
            }
            slideBox.scrollTop = 0;
            setTimeout(start, delay);
        }
    }
    slideBox.onmouseover = function () {
        pause = true;
    }
    slideBox.onmouseout = function () {
        pause = false;
    }
    setTimeout(start, delay);
}
scroll('list', 1000, 1, 20);//停留时间，相对速度（越小越快）,每次滚动多少，最好和Li的Line-height一致。