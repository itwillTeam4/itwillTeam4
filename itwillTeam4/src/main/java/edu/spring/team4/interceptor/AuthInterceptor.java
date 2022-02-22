package edu.spring.team4.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriUtils;

public class AuthInterceptor implements HandlerInterceptor{

	private static final Logger log = LoggerFactory.getLogger(AuthInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		log.info("preHandle 호출");
		
		// 로그인 상태 여부
		HttpSession session = request.getSession();
		String signInUserCode = (String)session.getAttribute("signInUserCode");
		
		if (signInUserCode != null) {
			log.info("로그인한 유저 코드: {}", signInUserCode);
			return true;
		} else {
			log.info("로그인 해.");
			// 요청 URL 정보를 찾아서 signin 요청에 요청 파라미터 추가
			String reqUrl = request.getRequestURL().toString();
			log.debug("request URL: {}", reqUrl);
			reqUrl = UriUtils.encode(reqUrl, "UTF-8");
			
			response.sendRedirect("/team4/user/signin?url=" + reqUrl);
			return false;
		}
		
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		log.info("postHandle 호출");
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		log.info("after 호출");
	}
}