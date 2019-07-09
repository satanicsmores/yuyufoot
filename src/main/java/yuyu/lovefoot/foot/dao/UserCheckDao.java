package yuyu.lovefoot.foot.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import yuyu.lovefoot.foot.entity.User;

@Repository
@Mapper
public interface UserCheckDao {

    //验证用户名密码，如正确且存在，则返回登录的User实体类
    public User userCheck(@Param("username") String username, @Param("password") String password);


}
