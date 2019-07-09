package yuyu.lovefoot.foot.entity;

//视频实体类
public class Video {

    private Integer id;
    private Integer menuId;
    private String videoName;
    private String videoDescribe;
    private String videoPicUrl;
    private String videoPrice;
    private String videoUrl;
    private String videoTiquma;
    private String videoCode;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMenuId() {
        return menuId;
    }

    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }

    public String getVideoName() {
        return videoName;
    }

    public void setVideoName(String videoName) {
        this.videoName = videoName;
    }

    public String getVideoDescribe() {
        return videoDescribe;
    }

    public void setVideoDescribe(String videoDescribe) {
        this.videoDescribe = videoDescribe;
    }

    public String getVideoPicUrl() {
        return videoPicUrl;
    }

    public void setVideoPicUrl(String videoPicUrl) {
        this.videoPicUrl = videoPicUrl;
    }

    public String getVideoPrice() {
        return videoPrice;
    }

    public void setVideoPrice(String videoPrice) {
        this.videoPrice = videoPrice;
    }

    public String getVideoUrl() {
        return videoUrl;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl;
    }

    public String getVideoTiquma() {
        return videoTiquma;
    }

    public void setVideoTiquma(String videoTiquma) {
        this.videoTiquma = videoTiquma;
    }

    public String getVideoCode() {
        return videoCode;
    }

    public void setVideoCode(String videoCode) {
        this.videoCode = videoCode;
    }
}
