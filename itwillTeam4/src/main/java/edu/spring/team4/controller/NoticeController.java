package edu.spring.team4.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.spring.team4.domain.Notice;
import edu.spring.team4.service.NoticeService;

@Controller
@RequestMapping(value="/notice")
public class NoticeController {
	private static final Logger log = LoggerFactory.getLogger(NoticeController.class);
	
	@Autowired private NoticeService noticeService;
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public void main(Model model) {
		
		log.info("main() 호출");
		
		List<Notice> noticeList = noticeService.select();
		System.out.println(noticeList);
		
		model.addAttribute("noticeList", noticeList);
		
		
	}
	
	@RequestMapping(value="/insert", method=RequestMethod.GET)
	public void insert() {
		log.info("insert() GET 방식 호출");
	}
	
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public String insert(Notice notice) {
		log.info("insert({}) POST 방식 호출",notice);
		
		noticeService.insert(notice);
		
		return "redirect:/notice/main";
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public void detail(int notice_idx, Model model) {
		log.info("detail(notice_idx={}) GET 호출", notice_idx);
		
		Notice notice = noticeService.select(notice_idx);
		model.addAttribute("notice",notice);
	}
	
	@RequestMapping(value="/update", method = RequestMethod.GET)
	public void update(int notice_idx, Model model) {
		log.info("update(notice_idx={}) 호출",notice_idx);
		
		Notice notice = noticeService.select(notice_idx);
		model.addAttribute("notice",notice);
		
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(Notice notice) {
		log.info("update({}) POST 호출", notice);
		
		noticeService.update(notice);
		
		return "redirect:/notice/main";
		
	}
	
	@RequestMapping(value="/delete", method = RequestMethod.GET)
	public String delete(int notice_idx) {
		log.info("delete(notice_idx={}) 호출",notice_idx);
		
		noticeService.delete(notice_idx);
		
		return "redirect:/notice/main";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(int type, String keyword, Model model) {
		log.info("search(type={}, keyword={})", type, keyword);
		
		List<Notice> list = noticeService.select(type, keyword);
		
		model.addAttribute("noticeList", list);
		
		
		
		return "notice/main";
	}
}
