var pageSize = 10;

$(document).ready(function () {

    //如果已经登录，则显示登录用户；
    if (getUsername("username") != null) {
        var username = getUsername("username");
        document.getElementById("right").innerHTML = "<h3>欢迎 " + username + " 用户回来~!</h3>" +
            "<input type='button' value='退出' id='backUser' onclick='backUser()'>";
    }

    //点击登录，进行用户密码登录判断；
    $("#login").click(function () {
        var username = document.getElementById("username").value;
        var password = document.getElementById("password").value;
        $.ajax({
            url: "/userCheck/check",
            type: "POST",
            data: {
                username: username,
                password: password
            },
            dataType: "json",
            success: function (res) {
                if (res == 0) {
                    alert("登录失败，用户名密码错误或用户不存在，请注册或查看用户名密码");
                    location.href = "/index";
                }
                else {
                    alert("登录成功，请点击确认回到首页");
                    location.href = "/index";
                }
            }
        })
    });

    //目录接口ajax，获取所有目录信息
    $.ajax({
        url: "/getMenu",
        type: "POST",
        data: {},
        dataType: "json",
        success: function (res) {
            //返回成功后刷新目录显示；
            var html = "<ul>";
            html=html+"<li menuid='0' onclick='clickMenu(this)'><a>所有</a></li>";
            for (var i = 0; i < res.length; i++) {
                var h = "<li menuid='" + res[i].id + "' onclick='clickMenu(this)'>" + "<a>" + res[i].menuName + "</a>" + "</li>";
                html = html + h;
            }
            html = html + "</ul>";
            document.getElementById("catalog").innerHTML = html;
        }
    });

    //主页显示视频查询接口，menuid参数为0，查询所有视频
    //主页上显示所有视频，传递参数
    var index = new Object();
    index.menuid = 0;
    clickMenu(index);

});

//获取cookie中username函数，如有则返回用户名，如没有，则返回0；
function getUsername(username) {
    var name = username + "";
    var ca = document.cookie.split(";");
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i].trim();
        if (c.indexOf(name) == 0) return c.substring(name.length + 1, c.length);
    }
    return null;
}

//退出用户，删除当前用户cookie；
function backUser() {
    document.cookie = "username=;expires=Thu, 01 Jan 1970 00:00:00 GMT";
    alert("退出成功，请点击确认回到首页");
    location.href = "/index";
}

//点击每个菜单之后运行函数，主页也运行此函数，传递相关参数
function clickMenu(obj) {
    //判断是主页过来的还是选择菜单过来的，获取参数不一样
    //主页过来的
    if (obj.menuid != null) {
        var getCon = new Object();
        getCon.menuid = obj.menuid;
        getCon.pagenumber = 1;
        getContent(getCon);
        //获取分页
        var getViPa = new Object();
        getViPa.menuId = obj.menuid;
        getViPa.pageNumber = 1;
        getVideoPages(getViPa);
    }
    //获取视频
    else {
        var getCon = new Object();
        getCon.menuid = obj.attributes.menuid.nodeValue;
        getCon.pagenumber = 1;
        getContent(getCon);
        //获取分页
        var getViPa = new Object();
        getViPa.menuId = obj.attributes.menuid.nodeValue;
        getViPa.pageNumber = 1;
        getVideoPages(getViPa);
    }

}

//显示所选菜单或者点击翻页返回视频内容
function getContent(obj) {
    //判断来源是主页来的没有参数还是分页跳转过来的，含有参数。
    if (obj.menuid != null && obj.pagenumber != null) {
        var menuId = obj.menuid;
        var pageNumber = obj.pagenumber;
    }
    else {
        var menuId = obj.attributes.menuid.nodeValue;
        var pageNumber = obj.attributes.pagenumber.nodeValue;
    }

    $.ajax({
        url: "/getVideo",
        type: "POST",
        data: {
            menuId: menuId,
            pageSize: pageSize,
            pageNumber: pageNumber
        },
        dataType: "json",
        success: function (res) {
            //返回成功后刷新目录显示视频；
            var html = "";
            for (var i = 0; i < res.length; i++) {
                html = html + "<span id='sin_content'><img src='"
                    + res[i].videoPicUrl + "' width='480px'"
                    + "height='480px'><p>视频名称:" + res[i].videoName
                    + "</p><p>视频价格(元):" + res[i].videoPrice
                    + "</p>" + "<p><input id='button' type='button'value='查看详情与更多图片' "
                    + "videoid='" + res[i].id + "' onclick='seePic(this)'>"
                    + "&nbsp;<input id='button' type='button'value='立即支付购买此视频' "
                    + "videoid='" + res[i].id + "' " + "videoprice='" + res[i].videoPrice + "' onclick='pay(this)'></p></span>&nbsp;"
            }
            document.getElementById("content").innerHTML = html;
            document.getElementById("nowpage").innerHTML = "<div id='nowp'>" + "当前页数:" + pageNumber + "</div>";
        }
    })
}

//得到显示页数，翻页功能函数
function getVideoPages(obj) {
    var menuId = obj.menuId;
    //主页显示视频接口ajax，获取当前所有视频页数，并且在视频最下方显示
    $.ajax({
        url: "/getVideoPages",
        type: "POST",
        data: {
            menuId: menuId,
            pageSize: pageSize,
            //其实不用传递pageNumber，但是需要调用分页查询接口需要提供pageNumber参数，这里随便写就是了，定量为1；
            pageNumber: 1
        },
        dataType: "json",
        success: function (res) {
            //返回成功后刷新page分页显示；
            var html = "<span style='float: left;'>翻页:</span>";
            for (var i = 1; i <= res; i++) {
                html = html + "<li style='list-style: none;float:left;cursor:pointer;width: 20px' menuid='"
                    + menuId + "' pagenumber='"
                    + i + "' " + "onclick='getContent(this)'>"
                    + "<a>" + i + " " + "</a>" + "</li>";
            }
            document.getElementById("page").innerHTML = html;
        }
    })

}

//点击查询视频描述和图片按钮
function seePic(obj) {
    var videoId = obj.attributes.videoid.nodeValue;
    var url = "/getSinVideoView?videoid=" + videoId;
    open(url);
}

//点击购买视频触发函数
function pay(obj) {
    //paysapi接口参数
    var videoId = obj.attributes.videoid.nodeValue;
    var url = "https://pay.bbbapi.com/";
    var uid = "3bbbd44a732a3b975ba462b0";
    var price = obj.attributes.videoprice.nodeValue;
    var istype = 2;
    var notify_url = "http://www.yuyufoot.cn/notifyUrl";
    var return_url = "http://www.yuyufoot.cn/getvideourl.html?videoid=" + videoId;
    var orderid = RndNum(16).toString();
    var orderuid = returnCitySN['cip'] + returnCitySN['cname'];
    var goodsname = price + "元视频";
    var token = "448591135cb513270ed03a8e89d59a30";
    var key = md5utf8(goodsname + istype + notify_url + orderid + orderuid + price + return_url + token + uid);
    key = key.toLowerCase();

    //调用paysapi接口参数并跳转页面
    post(url, {
        uid: uid
        , price: price
        , istype: istype
        , notify_url: notify_url
        , return_url: return_url
        , orderid: orderid
        , orderuid: orderuid
        , goodsname: goodsname
        , token: token
        , key: key
    });

}

//js，post跳转页面，post传参数
function post(url, params) {
    var temp_form = document.createElement("form");
    temp_form.action = url;
    temp_form.target = "_blank";
    temp_form.method = "post";
    temp_form.style.display = "none";
    for (var x in params) {
        var opt = document.createElement("textarea");
        opt.name = x;
        opt.value = params[x];
        temp_form.appendChild(opt);
    }
    document.body.appendChild(temp_form);
    temp_form.submit();
}

//产生随机数函数
function RndNum(n) {
    var rnd = "";
    for (var i = 0; i < n; i++)
        rnd += Math.floor(Math.random() * 10);
    return rnd;
}