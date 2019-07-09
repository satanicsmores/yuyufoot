$(document).ready(function () {

    var videoId = getQueryString("videoid").videoid;

    //获取单个视频信息
    $.ajax({
        url: "/getSinVideoUrl",
        type: "POST",
        data: {
            videoId: videoId
        },
        dataType: "json",
        success: function (res) {
            //视频下载地址
            var htmldes = "百度云下载地址:" + "<p>" + res.videoUrl + "</p>"
                + "<p>百度云提取码:" + res.videoTiquma + "</p>"
                + "<p>解压密码:" + res.videoCode + "</p>"
                + "<p>请妥善保管好下载地址与提取码和解压密码，如关闭此页以上记录还没有记录下来本网站概不负责，谢谢理解!</p>"
            document.getElementById("content").innerHTML = htmldes;
        }
    });


});

//获取路径参数函数
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