package demo.contorller;

import demo.model.Admin;
import demo.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/6/7.
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController {

    @Autowired
    AdminService adminService;

    @RequestMapping("/login")
    private String login(Admin admin) {
        admin = adminService.login(admin);
        if (admin != null) {

            session.setAttribute("admin", admin);
            return "redirect:/classes/queryAllClasses";
        } else {
            request.setAttribute("message","用户名和密码错误");
            return "/admin/admin";

        }

    }
    @RequestMapping("/logout")
    private String logout(){
        session.invalidate();
        return "/index";
    }

}
