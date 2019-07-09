package yuyu.lovefoot.foot.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import yuyu.lovefoot.foot.entity.Menu;
import yuyu.lovefoot.foot.entity.Picture;
import yuyu.lovefoot.foot.entity.Video;
import yuyu.lovefoot.foot.entity.page.PageResultBean;


import java.util.List;

@Service
public interface MainService {

    //获得所有菜单目录
    List<Menu> getMenu();

    //获取点击菜单所有视频，如参数为0，返回所有，分页参数
    PageResultBean<Video> getVideo(int menuId,int pageNum,int pageSize);

    //获取单个菜单视频
    Video getSinVideo(int videoId);

    //获取单个视频所有图片
    List<Picture> getPicture(int videoId);

    //获取单个菜单视频下载链接
    Video getSinVideoUrl(int videoId);





}
