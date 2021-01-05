// 搜索歌曲
function search() {
    if (document.getElementById("search_input").value != "") {
        window.location.href = "https://y.qq.com/portal/search.html#page=1&searchid=1&remoteplace=txt.yqq.top&t=song&w=" + document.getElementById("search_input").value;
        document.getElementById("search_input").value = "";
    }
    return false;
}

// 打开注册窗口
function openwindow() {
    signWindow = document.getElementsByClassName("signbox")[0];
    signWindow.style.display = "block";
}

// 关闭注册窗口
function closewindow() {
    signWindow = document.getElementsByClassName("signbox")[0];
    signWindow.style.display = "none";
}

// 清除cookie
function clearCookie() {
    document.cookie = "user" + "=" + "; expires=Thu, 01-Jan-70 00:00:01 GMT";
    window.location.replace('./index.php');
}

// 自动提交头像的表单
function submitform(){  
    document.forms["txform"].submit();  
}  

// 榜单切换
function selectbd(i){
    for(var n = 0 ; n < 13 ; n++)
    {
        bd = document.getElementsByClassName("bd-box1-min")[n];
        bba1 = document.getElementsByClassName("bd-box2")[n]
        bd.style.background = "rgb(249, 249, 249)";
        bba1.style.display = "none"
    }
    bda = document.getElementsByClassName("bd-box1-min")[i];
    bda.style.background = "#e1e1e1";
    bba1 = document.getElementsByClassName("bd-box2")[i];
    bba1.style.display = "block";
}


// 打开歌单内容
function openGedan(){
    message = document.getElementsByClassName("gdd-message")[0];
    gedan = document.getElementsByClassName("bd-box2-3")[0];
    gedan.style.display = "block";
    message.style.display = "none";
}

// 打开歌单评论区
function openMessage(){
    message = document.getElementsByClassName("gdd-message")[0];
    gedan = document.getElementsByClassName("bd-box2-3")[0];
    gedan.style.display = "none";
    message.style.display = "block";
}

// 打开信息更改框
function openMessagebox(){
    Messagebox = document.getElementsByClassName("ms-setting-box")[0];
    Messagebox.style.display = "block"
}

// 关闭信息更改框
function closeMessagebox(){
    Messagebox = document.getElementsByClassName("ms-setting-box")[0];
    Messagebox.style.display = "none"
}