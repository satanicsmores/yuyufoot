package yuyu.lovefoot.foot.service.impl;


import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import yuyu.lovefoot.foot.entity.Menu;
import yuyu.lovefoot.foot.dao.MainDao;
import yuyu.lovefoot.foot.entity.Picture;
import yuyu.lovefoot.foot.entity.Video;
import yuyu.lovefoot.foot.entity.page.PageResultBean;
import yuyu.lovefoot.foot.service.MainService;

import java.util.List;

@Service
public class MainServiceImpl implements MainService {

    @Autowired
    MainDao mainDao;

    //获得所有菜单目录
    public List<Menu> getMenu(){
        return mainDao.getMenu();
    }

    //获取点击菜单视频，分页参数
    public PageResultBean<Video> getVideo(int menuId,int pageNum,int pageSize){
        //分页
        PageHelper.startPage(pageNum,pageSize);
        //返回查询视频
        return new PageResultBean<Video>(mainDao.getVideo(menuId));
    }

    //获取单个菜单视频
    public Video getSinVideo(int videoId){
        return mainDao.getSinVideo(videoId);
    }

    //获取单个视频所有图片
    public List<Picture> getPicture(int videoId){
        return mainDao.getPicture(videoId);
    }

    //获取单个菜单视频下载链接
    public Video getSinVideoUrl(int videoId){
        return mainDao.getSinVideoUrl(videoId);
    }



}
