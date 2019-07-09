$(document).ready(function () {

    //获取videoid参数
    var videoId = getQueryString("videoid").videoid;

    //获取单个视频信息
    $.ajax({
        url: "/getSinVideo",
        type: "POST",
        data: {
            videoId: videoId
        },
        dataType: "json",
        success: function (res) {
            //视频描述
            var htmldes = "<h2>视频描述：</h2>"
                + "<p>" + res.videoDescribe + "</p>";
            document.getElementById("videodes").innerHTML = htmldes + "<hr>";
        }
    });

    //获取单个视频所有图片
    $.ajax({
        url: "/getPicture",
        type: "POST",
        data: {
            videoId: videoId
        },
        dataType: "json",
        success: function (res) {
            //视频图片
            var htmlpic = "<h3>视频图片：<h3>";
            for (var i = 0; i < res.length; i++) {
                htmlpic = htmlpic + "<p><img src='" + res[i].pictureUrl + "'></p>"
            }
            document.getElementById("videopicture").innerHTML = htmlpic + "<p>" +
                "如需喜欢想购买视频请返回刚才的页面点击支付，谢谢~！</p>";
        }
    });
});

//获取videoid参数函数
function getQueryString() {
    var qs = location.search.substr(1), // 获取url中"?"符后的字串
        args = {}, // 保存参数数据的对象
        items = qs.length ? qs.split("&") : [], // 取得每一个参数项,
        item = null,
        len = items.length;

    for (var i = 0; i < len; i++) {
        item = items[i].split("=");
        var name = decodeURIComponent(item[0]),
            value = decodeURIComponent(item[1]);
        if (name) {
            args[name] = value;
        }
    }
    return args;
}