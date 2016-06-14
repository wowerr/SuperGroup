package demo.contorller;

import demo.model.Student;
import demo.model.Work;
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

    private void list() {
        session.setAttribute("students", studentService.list());
    }
    @RequestMapping("login")
    private String login(Student student) {
        student = studentService.login(student);
        if (student != null) {
            session.setAttribute("student", student);
            return "redirect:/student/queryWork";
        } else {
            request.setAttribute("message", "invalid username or password!");
            return "/student/index";
        }
    }

    @RequestMapping("/queryWork")
    private String queryWork(Work work) {
        session.setAttribute("works", studentService.list("student.queryWork", work));
        return "redirect:/student/student.jsp";
    }

    @RequestMapping("/createStudent")
    private String createAssistant(Student student) {
        student.setPassword(Encryptor.getEncryptor().encryptPassword(student.getPassword()));
        studentService.create(student);
        return "redirect:/student/queryAllStudent";
    }
    @RequestMapping("/editStudent")
    private String modify(Student student) {
        studentService.modify(student);
        return "redirect:/student/queryAllStudent";
    }

    @RequestMapping("/removeStudent/{id}")
    private String remove(@PathVariable("id") Integer id) {
        studentService.remove(id);
        return "redirect:/student/queryAllStudent";
    }

    @RequestMapping("/queryAllStudent")
    private String query(Student student) {
        session.setAttribute("classStudents", studentService.list("student.search", student));
        return "redirect:/student/studentRoll.jsp";
    }

    @RequestMapping("/queryById/{id}")
    private String queryById(@PathVariable("id") Integer id) {
        session.setAttribute("studentSelf", studentService.list("student.queryById", id));
        return "redirect:/student/editStudent.jsp";
    }
    @RequestMapping("/queryClassesStudents/{id}")
    private String searchClassStudent(@PathVariable("id") Integer id) {
        session.setAttribute("classStudents", studentService.search("student.queryClassesStudent",id));
        return "redirect:/student/studentRoll.jsp";
    }
}
