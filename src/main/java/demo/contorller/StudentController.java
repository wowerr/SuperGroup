package demo.contorller;

import demo.model.Student;
import demo.service.StudentService;
import demo.util.Encryptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by dell on 2016-6-13.
 */
@Controller
@RequestMapping("student")
public class StudentController extends BaseController {
    @Autowired
    private StudentService studentService;

    @RequestMapping("login")
    private String login(Student student) {
        student = studentService.login(student);
        if (student != null) {
            session.setAttribute("student", student);
            return "redirect:/student/student.jsp";
        } else {
            request.setAttribute("message", "invalid username or password!");
            return "/student/index";
        }
    }

    @RequestMapping("/createStudent")
    private String createAssistant(Student student) {
        student.setPassword(Encryptor.getEncryptor().encryptPassword(student.getPassword()));
        studentService.create(student);
        return "redirect:/admin/studentRoll.jsp";
    }
    @RequestMapping("/editStudent")
    private String modify(Student student) {
        studentService.modify(student);
        return "redirect:/admin/studentRoll.jsp";
    }

    @RequestMapping("/removeStudent/{id}")
    private String remove(@PathVariable int id) {
        studentService.remove(id);
        return "redirect:/admin/queryAll";
    }
    @RequestMapping("/searchStudent")
    private String search(Student student) {
        //session.setAttribute("students", studentService.list("student.search", student));
        Student student1= (Student) studentService.list("student.queryClasses", student);
       System.out.println( student1.getIdNumber());
        session.setAttribute("students",student1);
        return "redirect:/admin/studentRoll.jsp";
    }
    @RequestMapping("/queryAllStudent")
    private String query(Student student) {
        session.setAttribute("students", studentService.list("student.search", student));
        return "redirect:/admin/studentRoll.jsp";
    }
}
