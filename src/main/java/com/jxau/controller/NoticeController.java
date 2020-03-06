package com.jxau.controller;


import com.jxau.model.Notice;
import com.jxau.utils.Page;
import com.jxau.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@SessionAttributes(value = "notice")
@RequestMapping("/notice")
public class NoticeController {
    @Autowired
    NoticeService noticeService;


    //所有notice数据分页显示----------------------------------
    @RequestMapping("/getAllNoticeByPage")
    public String getAllNoticeByPage(HttpServletRequest request, HttpServletResponse response, Model model) {
        String currentPage = request.getParameter("currentPage");
        if (currentPage == null) {
            currentPage = "1";
        }
        int current = Integer.parseInt(currentPage);
        int pageNum = 5;
        List<Notice> notices = noticeService.getAllNoticeByPage(current, pageNum);
        int totals = noticeService.getTotalNotice();
        Page page = new Page(current, pageNum);
        page.setResult(notices, totals);
        model.addAttribute("page", page);
        model.addAttribute("notices", notices);
        return "noticeIndex";
    }

    //查看当前id的公告信息
    @RequestMapping("/lookCurrentNotice")
    public String lookCurrentNotice(int id, Model model,String update) {
        Notice notice = noticeService.lookCurrentNotice(id);
        model.addAttribute("notice", notice);
        if(update != null){
            return "noticeUpdate";
        }
        return "noticeView";//回到一个页面
    }

    //模糊查询-->通过content，title------------------------
    @RequestMapping(path = "/getAllNoticeByContentTitle")
    public String getAllNoticeByContentTitle(String content, String title, Model model, HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        String currentPage = request.getParameter("currentPage");
        if (currentPage == null) {
            currentPage = "1";
        }
        int current = Integer.parseInt(currentPage);
        int pageNum = 5;

        //map的名字要和sql里面的名字一致  "%"++"%"
        map.put("content", "%" + content + "%");
        map.put("title", "%" + title + "%");
        int c = (current - 1) * pageNum;
        map.put("currentPage", c);
        map.put("pageNum", pageNum);
        List<Notice> notices = noticeService.getAllNoticeByContentTitle(map);
        int totals = notices.size();
        Page page = new Page(current, pageNum);
        page.setResult(notices, totals);
        model.addAttribute("page", page);
        model.addAttribute("notices", notices);
        return "noticeList";//查询成功，返回到一个页面
    }


    //增加公告信息
    @RequestMapping("addNotice")
    public String addNotice(Notice notice) {
        int result = noticeService.addNotice(notice);
        if(result > 0){
            return "redirect:/notice/getAllNoticeByPage";
        }else{
            System.out.println("失败");
            return "redirect:/notice/getAllNoticeByPage";
        }
    }

    //删除公告信息--->通过id删除
    @RequestMapping("/deleteNotice")
    public String deleteNotice(int id) {
        noticeService.deleteNotice(id);
        return "redirect:/notice/getAllNoticeByPage";
    }

    //修改公告信息
    @RequestMapping("/noticeUpdate")
    public String noticeUpdate(Notice notice) {
        noticeService.noticeUpdate(notice);
        return "redirect:/notice/getAllNoticeByPage";
    }

    //根据categoryid查询title
    @RequestMapping("/getAllTitleByCategoryId")
    public String getAllTitleByCategoryId(int categoryId,Notice notice, Model model) {
        List<Notice> notices = noticeService.getAllTitleByCategoryId(notice);
        model.addAttribute("notices", notices);
        //return "forward:${basePath}/teacher/getAllTeacher";
       return "noticeIndex";
    }
}
