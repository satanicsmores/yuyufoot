package yuyu.lovefoot.foot.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import yuyu.lovefoot.foot.entity.User;

@Service
public interface UserCheckService {

    //验证用户名密码，如正确且存在，则返回登录的User实体类
    public User userCheck(String username,String password);

}
