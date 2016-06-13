package demo.contorller;

import demo.model.Student;
import demo.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by dell on 2016-6-13.
 */
@Controller
@RequestMapping("student")
public class StudentController extends BaseController{
    @Autowired
    private StudentService studentService;

@RequestMapping("login")
    private String login(Student student ){
    student = studentService.login(request,student);
    if (student != null) {
        session.setAttribute("student", student);
        return "redirect:/student/index.jsp";
    } else {
        request.setAttribute("message", "invalid email or password!");
        return "/index";
    }
}
}
