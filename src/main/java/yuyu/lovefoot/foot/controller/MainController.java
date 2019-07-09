package yuyu.lovefoot.foot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import yuyu.lovefoot.foot.entity.Menu;
import yuyu.lovefoot.foot.entity.Picture;
import yuyu.lovefoot.foot.entity.Video;
import yuyu.lovefoot.foot.service.MainService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@RestController
@RequestMapping("/")
public class MainController {

    @Autowired
    MainService mainService;

    //进入主页面
    @RequestMapping("/index")
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
        return new ModelAndView("index");
    }

    //获取所有菜单目录接口
    @RequestMapping("/getMenu")
    public List<Menu> getMenu() {
        return mainService.getMenu();
    }

    //获取所有菜单需要显示视频接口，注意提供分页参数
    @RequestMapping("/getVideo")
    public List<Video> getVideo(HttpServletRequest request, HttpServletResponse response) {
        //获取相关参数，分页参数
        int menuId = Integer.valueOf(request.getParameter("menuId"));
        int pageNum = Integer.valueOf(request.getParameter("pageNumber"));
        int pageSize = Integer.valueOf(request.getParameter("pageSize"));
        return mainService.getVideo(menuId, pageNum, pageSize).getRows();
    }

    //获取所有菜单需要显示视频接口的页数
    @RequestMapping("/getVideoPages")
    public int getVideoPages(HttpServletRequest request, HttpServletResponse response) {
        //获取相关参数，分页参数
        int menuId = Integer.valueOf(request.getParameter("menuId"));
        int pageNum = Integer.valueOf(request.getParameter("pageNumber"));
        int pageSize = Integer.valueOf(request.getParameter("pageSize"));
        return mainService.getVideo(menuId, pageNum, pageSize).getPages();
    }

    //返回单个视频详细页面
    @RequestMapping("/getSinVideoView")
    public ModelAndView getSinVideoView(HttpServletRequest request, HttpServletResponse response) {
        return new ModelAndView("seepicture");
    }

    //返回单个视频
    @RequestMapping("/getSinVideo")
    public Video getSinVideo(HttpServletRequest request, HttpServletResponse response) {
        int videoId = Integer.valueOf(request.getParameter("videoId"));
        return mainService.getSinVideo(videoId);
    }

    //返回单个视频图片
    @RequestMapping("/getPicture")
    public List<Picture> getPicture(HttpServletRequest request, HttpServletResponse response) {
        int videoId = Integer.valueOf(request.getParameter("videoId"));
        return mainService.getPicture(videoId);
    }

    //返回单个视频下载链接
    @RequestMapping("/getSinVideoUrl")
    public Video getSinVideoUrl(HttpServletRequest request, HttpServletResponse response) {
        int videoId = Integer.valueOf(request.getParameter("videoId"));
        return mainService.getSinVideoUrl(videoId);
    }

    //回调记录
    @RequestMapping("/notifyUrl")
    public void notifyUrl(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("paysapi_id:" + request.getParameter("paysapi_id") + " "
                + "orderid:" + request.getParameter("orderid") + " "
                + "price:" + request.getParameter("price") + " "
                + "realprice:" + request.getParameter("realprice") + " "
                + "orderuid:" + request.getParameter("orderuid") + " "
        );
    }


}
