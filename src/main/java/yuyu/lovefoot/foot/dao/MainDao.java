package yuyu.lovefoot.foot.dao;

import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;
import yuyu.lovefoot.foot.entity.Menu;
import yuyu.lovefoot.foot.entity.Picture;
import yuyu.lovefoot.foot.entity.Video;

import java.util.List;

@Repository
@Mapper
public interface MainDao {

    //获得所有菜单目录
    List<Menu> getMenu();

    //获取点击菜单当前视频
    List<Video> getVideo(@Param("menuId") int menuId);

    //获取单个菜单视频
    Video getSinVideo(@Param("videoId") int videoId);

    //获取单个视频所有图片
    List<Picture> getPicture(@Param("videoId") int videoId);

    //获取单个菜单视频下载链接
    Video getSinVideoUrl(@Param("videoId") int videoId);


}
