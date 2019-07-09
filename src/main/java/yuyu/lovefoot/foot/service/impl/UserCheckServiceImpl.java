package yuyu.lovefoot.foot.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import yuyu.lovefoot.foot.entity.User;
import yuyu.lovefoot.foot.dao.UserCheckDao;
import yuyu.lovefoot.foot.service.UserCheckService;

@Service
public class UserCheckServiceImpl implements UserCheckService {

    @Autowired
    UserCheckDao userCheckDao;

    //验证用户名密码，如正确且存在，则返回登录的User实体类,登录失败或者不存在，则返回null
    public User userCheck(String username, String password){
        return userCheckDao.userCheck(username,password);
    }



}
