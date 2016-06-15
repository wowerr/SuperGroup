package demo.contorller;

import demo.model.Classes;
import demo.service.ClassesService;
import demo.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/6/13.
 */
@Controller
@RequestMapping("/classes")
public class ClassesController extends BaseController {

    @Autowired
    ClassesService classesService;
    @Autowired
    StudentService studentService;

    private void list() {
        session.setAttribute("classes", classesService.list());
    }

    @RequestMapping("/create")
    private String create(Classes classes) {
        classesService.create(classes);
        return "redirect:/classes/queryAllClasses";
    }

    @RequestMapping("/queryAllClasses")
    private String queryAllClasses() {
        list();
        return "redirect:/class/queryAllClasses.jsp";
    }

    @RequestMapping("searchById/{id}")
    private String search(@PathVariable("id") Integer id) {
        session.setAttribute("aClasses", classesService.search(id));
        return "redirect:/class/modifyClasses.jsp";
    }

    @RequestMapping("/modify")
    private String modify(Classes classes) {
        classesService.modify(classes);
        return "redirect:/classes/queryAllClasses";
    }

    @RequestMapping("searchClassStudent/{id}")
    private String searchClassStudent(@PathVariable("id") Integer id) {
        session.setAttribute("classes", classesService.search("classes.searchStudent", id));
        return "redirect:/class/studentInClass.jsp";
    }

    @RequestMapping("removeStudent/{id}&{classID}")
    private String removeStudent(@PathVariable("id") Integer studentId, @PathVariable("classID") Integer id) {

        studentService.remove(studentId);

        return searchClassStudent(id);
    }


}
