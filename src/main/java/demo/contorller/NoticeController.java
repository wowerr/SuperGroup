package demo.contorller;

import demo.model.Notice;
import demo.service.ClassesService;
import demo.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/6/15.
 */
@Controller
@RequestMapping("/notice")
public class NoticeController extends BaseController {
    @Autowired
    NoticeService noticeService;

    @Autowired
    ClassesService classesService;

    @RequestMapping("/create")
    private String create(Notice notice) {
        noticeService.create(notice);
        return "redirect:/classes/queryAllClasses";
    }

    @RequestMapping("/queryByClassId/{id}")
    private String queryByClassId(@PathVariable("id") Integer id) {
        session.setAttribute("classes", classesService.search("classes.searchNotice", id));
        return "redirect:/notice/editNotice.jsp";
    }

    @RequestMapping("/remove/{noticeId}&{classId}")
    private String remove(@PathVariable("noticeId") Integer noticeId, @PathVariable("classId") Integer classId) {
        noticeService.remove(noticeId);
        return queryByClassId(classId);
    }

    @RequestMapping("/searchById/{id}")
    private String queryById(@PathVariable("id") Integer id) {
        session.setAttribute("notice", noticeService.search("notice.search", id));
        return "redirect:/notice/modify.jsp";
    }

    @RequestMapping("/modify/{classId}")
    private String modify(Notice notice, @PathVariable("classId") Integer classId) {
        noticeService.modify(notice);

        return queryByClassId(classId);
    }

}
