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
}
