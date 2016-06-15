package demo.contorller;


import demo.model.Work;
import demo.service.WorkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/6/7.
 *
 */
@Controller
@RequestMapping("/work")
public class WorkController extends BaseController {

    @Autowired
    private WorkService workService;

    @RequestMapping("modify")
    private String modify(Work work){
        workService.modify(work);
        return "redirect:list";
    }

    @RequestMapping("create")
    private String create(Work work){
        workService.create(work);
        return "redirect:/work/index.jsp";
    }

    @RequestMapping("remove/{id}")
    private String remove(@PathVariable("id") Integer id){
        workService.remove(id);
        return "redirect:/work/list.jsp";
    }

    @RequestMapping("search/{id}")
    private String search(@PathVariable("id") Integer id){
        session.setAttribute("work",workService.search(id));
        return "redirect:/work/edit.jsp";
    }

    @RequestMapping("query")
    private String query(){
        session.setAttribute("works",workService.list());
        return "redirect:/work/list.jsp";
    }

    @RequestMapping("queryById")
    private String queryById(){
        session.setAttribute("works",workService.list());
        return "redirect:/work/list.jsp";
    }
}
