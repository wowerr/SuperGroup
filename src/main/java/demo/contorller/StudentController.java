package demo.contorller;

import demo.model.Classes;
import demo.model.Student;
import demo.model.Work;
import demo.service.ClassesService;
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
    @Autowired
    private ClassesService classesService;

    private void list() {
        session.setAttribute("students", studentService.list());
    }

    @RequestMapping("login")
    private String login(Student student) {
        student = studentService.login(student);
        if (student != null) {
            session.setAttribute("student", student);
            return "redirect:/work/queryWork";
        } else {
            request.setAttribute("message", "invalid username or password!");
            return "/student/index";
        }
    }

    @RequestMapping("/createStudent")
    private String createAssistant(Student student) {
        student.setPassword(Encryptor.getEncryptor().encryptPassword(student.getPassword()));
        studentService.create(student);
        return "redirect:/student/queryAll";
    }

    @RequestMapping("/editStudent")
    private String modify(Student student) {
        studentService.modify(student);
        return "redirect:/student/student.jsp";
    }

    @RequestMapping("/removeStudent/{id}")
    private String remove(@PathVariable("id") Integer id) {
        studentService.remove(id);
        return "redirect:/student/queryAll";
    }

    @RequestMapping("/queryAll")
    private String query(Student student) {
        session.setAttribute("classes", classesService.list());
        session.setAttribute("classStudents", studentService.list("student.search", student));
        return "redirect:/student/studentRoll.jsp";
    }

    @RequestMapping("/queryById/{id}")
    private String queryById(@PathVariable("id") Integer id) {
        session.setAttribute("studentSelf", studentService.search("student.queryById", id));
        return "redirect:/student/editStudent.jsp";
    }
    @RequestMapping("/queryByIdStudent/{id}")
    private String queryByIdStudent(@PathVariable("id") Integer id) {
        System.out.print(id);
        session.setAttribute("studentSelf", studentService.search("student.studentIdClass", id));
        return "redirect:/student/studentEdit.jsp";
    }

    @RequestMapping("/searchClassStudent/{id}")
    private String searchClassAllStudent(@PathVariable("id") Integer id) {
        session.setAttribute("classesStudents", studentService.search("student.searchStudent", id));
        return "redirect:/student/classStudent.jsp";
    }

    @RequestMapping("/searchClassById")
    private String searchClassById(Integer id) {
        session.setAttribute("searchClass", studentService.search("classes.search",id));
        return "redirect:/student/studentRoll.jsp";
    }

    @RequestMapping("/logout")
    private String logout(){
        session.invalidate();
        return "/index";
    }
}
