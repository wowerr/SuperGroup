package demo.contorller;

import demo.model.Classes;
import demo.model.Work;
import demo.service.ClassesService;
import demo.service.StudentService;
import demo.service.WorkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/6/13.
 */
@Controller
@RequestMapping("/work")
public class WorkController extends BaseController {

    @Autowired
    WorkService workService;

    @RequestMapping("/queryWork")
    private String queryWork(Work work) {
        session.setAttribute("works", studentService.list("work.queryWork", work));
        return "redirect:/student/student.jsp";
    }

    @Autowired
    StudentService studentService;

    private void list() {
        session.setAttribute("work", workService.list());
    }

    @RequestMapping("/create")
    private String create(Work work) {
        workService.create(work);
        return "redirect:/classes/queryAllClasses";
    }

    @RequestMapping("/queryAllClasses")
    private String queryAllClasses() {
        list();
        return "redirect:/class/queryAllClasses.jsp";
    }

    @RequestMapping("searchById/{id}")
    private String search(@PathVariable("id") Integer id) {
        session.setAttribute("aClasses", workService.search(id));
        return "redirect:/class/modifyClasses.jsp";
    }

    @RequestMapping("/modify")
    private String modify(Work work) {
        workService.modify(work);
        return "redirect:/classes/queryAllClasses";
    }

    @RequestMapping("searchClassStudent/{id}")
    private String searchClassStudent(@PathVariable("id") Integer id) {
        session.setAttribute("classes", workService.search("classes.searchStudent", id));
        return "redirect:/class/studentInClass.jsp";
    }

    @RequestMapping("removeStudent/{id}&{classID}")
    private String removeStudent(@PathVariable("id") Integer studentId, @PathVariable("classID") Integer id) {

        studentService.remove(studentId);

        return searchClassStudent(id);
    }


}
