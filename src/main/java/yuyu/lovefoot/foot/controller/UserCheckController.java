package yuyu.lovefoot.foot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import yuyu.lovefoot.foot.entity.User;
import yuyu.lovefoot.foot.service.UserCheckService;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@RestController
@RequestMapping("/userCheck")
public class UserCheckController {

    @Autowired
    UserCheckService userCheckService;

    //登录跳转页面，返回0失败，1成功，弹出提示框后自动跳转主页，如成功，用户已进入session；
    @RequestMapping("/check")
    public int check(HttpServletRequest request, HttpServletResponse response) {
        //获取用户输入参数；
        String username = (String) request.getParameter("username");
        String password = (String) request.getParameter("password");
        User user = userCheckService.userCheck(username, password);
        if (user != null) {
            //登录成功创建session,并且在session中加入登录用户；
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            //增加cookie；
            Cookie c = new Cookie("username", user.getUsername());
            c.setMaxAge(30 * 60); //半小时
            c.setPath("/");
            response.addCookie(c);
            return 1;
        } else return 0;
    }

}
