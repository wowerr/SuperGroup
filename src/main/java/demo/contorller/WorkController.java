package demo.contorller;

import demo.model.Classes;
import demo.model.Notice;
import demo.model.Work;
import demo.service.ClassesService;
import demo.service.NoticeService;
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
    @Autowired
    NoticeService noticeService;
    @Autowired
    StudentService studentService;

    private void list() {
        session.setAttribute("work", workService.list());
    }

    @RequestMapping("/queryWork")
    private String queryWork(Work work) {
        session.setAttribute("works", studentService.list("work.queryWork", work));
        return "redirect:/student/student.jsp";
    }
    @RequestMapping("/queryAllWork")
    private String queryAllWork(Work work) {
        session.setAttribute("works", studentService.list("work.queryWork", work));
        return "redirect:/work/manageWork.jsp";
    }

    @RequestMapping("/create")
    private String create(Work work) {
        workService.create(work);
        return "redirect:/work/queryAllWork";
    }

    @RequestMapping("/queryWorkById/{id}")
    private String queryWorkById(@PathVariable("id") Integer id) {
        session.setAttribute("work", studentService.list("work.queryWorkById", id));
        return "redirect:/work/editWork.jsp";
    }
    @RequestMapping("/editWork")
    private String editWork(Work work) {
        workService.modify(work);
        return "redirect:/work/queryAllWork";
    }

    @RequestMapping("/removeWork/{id}")
    private String removeWork(@PathVariable("id") Integer id) {
        workService.remove(id);
        return "redirect:/work/queryAllWork";
    }
}
