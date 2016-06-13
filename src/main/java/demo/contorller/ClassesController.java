package demo.contorller;

import demo.model.Classes;
import demo.service.ClassesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/6/13.
 */
@Controller
@RequestMapping("/classes")
public class ClassesController extends BaseController {

    @Autowired
    ClassesService classesService;

    @RequestMapping("/create")
    private String create(Classes aClass) {
        classesService.create(aClass);
        return "/classes/queryAllClasses";
    }

    @RequestMapping("/queryAllClasses")
    private String queryAllClasses() {
        session.setAttribute("classes", classesService.list());
        return "redirect:/class/queryAllClasses.jsp";
    }
}