var box = document.getElementById("box");
var length = img.length;
this.creat();
var slideImg = document.querySelectorAll("#box .small-box img");
var dot = document.getElementsByClassName("dot");
var pre = 0;
var now = 0;
var timerId;
slideImg[0].style.opacity = "1";
dot[0].style.opacity = "1";
this.inter();
// 上一张
function backing() {
    clearInterval(timerId);
    pre = now;
    now--;
    if (now == -1) now = length - 1;
    this.change();
    this.dotAppear();
    this.inter();
}
// 下一张
function nexting() {
    clearInterval(timerId);
    pre = now;
    now++;
    if (now == length) now = 0;
    this.change();
    this.dotAppear();
    this.inter();
}
// 是否透明
function change() {
    slideImg[pre].style.opacity = "0";
    slideImg[now].style.opacity = "1";
}
// 循环
function inter() {
    timerId = setInterval(() => {
        pre = now;
        now++;
        if (now == slideImg.length) now = 0;
        this.change();
        this.dotAppear();
    }, time);
}
// 圆点显现
function dotAppear() {
    dot[pre].style.opacity = "0";
    dot[now].style.opacity = "1";
}
// 点击圆点，更换图片
function changeDot(i) {
    clearInterval(timerId);
    pre = now;
    now = i;
    this.change();
    this.dotAppear();
    this.inter();
}
// 动态创建
function creat() {
    var smallBox = document.createElement("div");
    smallBox.className = "small-box";
    var nextBtn = document.createElement("div");
    nextBtn.className = "btn"
    nextBtn.addEventListener("click",()=>{this.nexting()});
    var preBtn = document.createElement("div");
    preBtn.className = "btn";
    preBtn.addEventListener("click",()=>{this.backing()});
    var dotBox = document.createElement("div");
    dotBox.setAttribute("id","dot")

    // 创建图片
    for (let i = 0; i < length; i++) {
        var img = document.createElement("img");
        img.src = imgPath + "/" + this.img[i];
        var a = document.createElement("a");
        a.className = "imga";
        a.href = "#";
        // a.href = "../html/music/" + i + ".html";
        a.append(img);
        smallBox.append(a);
    }
    // 下一个按钮内部
    var nextDiv = document.createElement("div");
    nextBtn.append(nextDiv);
    // 上一个按钮内部
    var preDiv = document.createElement("div");
    preBtn.append(preDiv);
    // 圆点
    for (let i = 0; i < length; i++) {
        var spanBox = document.createElement("span");
        spanBox.addEventListener("click", () => {
            this.changeDot(i)
        })
        var span = document.createElement("span");
        span.classList = "dot";
        spanBox.append(span);
        dotBox.append(spanBox);
    }
   
    box.append(smallBox);
    box.append(nextBtn);
    box.append(preBtn);
    box.append(dotBox);
}