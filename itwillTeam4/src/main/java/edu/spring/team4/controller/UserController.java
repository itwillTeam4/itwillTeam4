package edu.spring.team4.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.spring.team4.domain.User;
import edu.spring.team4.service.UserService;

@Controller  
@RequestMapping(value = "/user")
public class UserController {
	
	private static final Logger log = LoggerFactory.getLogger(UserController.class);
	
	@Autowired private UserService userService;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void register() {
		log.info("register() GET 호출");
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(User user) {
		log.info("register({}) POST 호출", user);
		
		userService.registerNewUser(user);
		
		return "redirect:/";  
	}
	
	@RequestMapping(value = "/checkid", method = RequestMethod.POST)
	@ResponseBody
	public String checkUserId(String user_id) {
		log.info("checkUserId(user_id={})", user_id);
		
		if (userService.isValidId(user_id)) {
			return "valid_id";
		} else {
			return "invalid_id";
		}
	}
	
	@RequestMapping(value = "/checknn", method = RequestMethod.POST)
	@ResponseBody
	public String checkUserNn(String user_nn) {
		if (userService.isValidNn(user_nn)) {
			return "valid_nn";
		} else {
			return "invalid_nn";
		}
	}
	
	@RequestMapping(value = "/signin", method = RequestMethod.GET)
	public void signIn(String url, Model model) {
		log.info("signIn() GET 호출");
		
		
//		if (url != null && !url.equals("")) { 
//			model.addAttribute("url", url); 
//		}
	}
	
	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public String signIn(User user, HttpSession session) {
		log.info("signIn({}) POST 호출", user);
		
		User signInUser = userService.checkSignIn(user);
		if (signInUser != null) {
			session.setAttribute("signInUserId", signInUser.getUser_id());
			return "redirect:/";
		} else {
			return "redirect:/user/signin";
		}
		
	}

	@RequestMapping(value = "/signout", method = RequestMethod.GET)
	public String signOut(HttpSession session) {
		session.removeAttribute("signInUserId");
		session.invalidate();
		return "redirect:/";
	}
	
}
