package com.care.root.member.controller;

import java.io.PrintWriter;
import java.sql.Date;
import java.util.Calendar;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.care.root.member.dto.MemberDTO;
import com.care.root.member.service.MemberService;
import com.care.root.member.session_name.MemberSessionName;
import com.care.root.mileage.service.MileageService;
import com.care.root.order.service.OrderService;
import com.care.root.review.service.ReviewService;
import com.care.root.wish.service.WishService;

@Controller
@RequestMapping("member")
public class MemberController implements MemberSessionName{
	
	@Autowired MemberService ms;
	@Autowired OrderService os;
	@Autowired WishService ws;
	@Autowired MileageService mls;
	@Autowired ReviewService rs;
	
	@GetMapping("/login")
	public String login() {
		return "member/login";
	}
	
	@PostMapping("/user_check")
	public String user_check(HttpServletRequest request, 
													   RedirectAttributes rs, 
													   Model model,
													   HttpSession session,
													   HttpServletResponse response) {
	
		int result = ms.user_check(request, model, session);
		if(result == 0) {
			rs.addAttribute("id", request.getParameter("memberId"));
			rs.addAttribute("autoLogin", request.getParameter("autoLogin"));

			return "redirect:successLogin";
		}
		return "redirect:login";
	}
	
	@RequestMapping("/successLogin")
	public String successLogin(@RequestParam String id,
			@RequestParam( value="autoLogin", required = false) String autoLogin,
								HttpSession session,
								HttpServletResponse response) {
		session.setAttribute(LOGIN, id);
		if(autoLogin != null) {
			int limitTime = 60*60*24*90; //90일 
			Cookie loginCookie = new Cookie("loginCookie", session.getId() );
			loginCookie.setPath("/");
			loginCookie.setMaxAge(limitTime);
			response.addCookie(loginCookie);
			
			//long expiredDate = System.currentTimeMillis() + (limitTime*1000);
			
			Calendar cal = Calendar.getInstance();
			cal.setTime(new java.util.Date());
			cal.add(Calendar.MONTH, 3);
			
			Date limitDate = new Date(cal.getTimeInMillis());
			ms.keepLogin(session.getId(), limitDate, id);
		}
		return "member/successLogin";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session , HttpServletResponse response,
			@CookieValue(value="loginCookie", required = false) Cookie loginCookie) {
		if(session.getAttribute(LOGIN) != null) {
			if(loginCookie != null) {
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				ms.keepLogin("nan", new Date(System.currentTimeMillis()),
									(String)session.getAttribute(LOGIN));
			}
			session.invalidate();
		}
		return "redirect:/index";
	}
	
	@GetMapping("memberInfo")
	public String memberInfo(Model model) {
		ms.memberInfo(model);
		return "member/memberInfo";
	}
	
	@GetMapping("info")
	public String info(@RequestParam("memberId") String userId, Model model) {
		ms.info(userId,model);
		return "member/info";
	}
	
	@GetMapping("save")
	public String save(Model model) {
		// ms.save(사용자 정보를); 서비스로 이동해서 데이터를 저장한다
		return "redirect:/member/memberInfo";
	}
	
	@GetMapping("register_form")
	public String register_form() {
		return "member/register";
	}
	
	@PostMapping("register")
	public String register(MemberDTO dto) {
		int result = ms.register(dto);
		if(result==1) {
			return "redirect:login";
		}
		return "redirect:register_form";
	}
	
	
//	myPage

	@GetMapping("readOrders")
	public String readOrders(MemberDTO dto,
														HttpServletRequest request, 
													    Model model, 
													    HttpSession session) {
		os.getUserOrdersDeleveryStates(request, model, session);
		os.getUserOrders(model, session);
		
		return "eunbin/readOrders";
	}
	
	@GetMapping("readWishes")
	public String readWishes(MemberDTO dto,
														HttpServletRequest request, 
													    Model model, 
													    HttpSession session) {
		ws.getUserWishes(model, session);
		return "eunbin/readWishes";
	}

	@GetMapping("readMileage")
	public String readMileage(MemberDTO dto,
														HttpServletRequest request, 
													    Model model, 
													    HttpSession session) {
		mls.getUserMileages(model, session);
		mls.getUserTotalMileage(model, session);
		mls.getUserMileageStateList(request, model, session);
		return "eunbin/readMileage";
	}

	@GetMapping("/createReview")
	public String createReview(MemberDTO dto, 
															MultipartHttpServletRequest mul,
															HttpServletRequest request,
															HttpServletResponse response,
															@RequestParam(name= "orderProductId", required = false) String orderProductId,
															@RequestParam(name="orderProductName", required = false) String orderProductName
															) throws Exception
															{
		
		HttpSession session = request.getSession();
		session.setAttribute("orderProductId", orderProductId );														
		session.setAttribute("orderProductName", orderProductName );
		
		return "eunbin/createReview";
	}
	
	@PostMapping("saveReview")
	public void saveReview(MemberDTO dto, 
			MultipartHttpServletRequest mul,
			HttpServletRequest request,
			HttpServletResponse response) throws Exception{
		
		String message = rs.reviewSave(mul, request, "test");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(message);
		
	}
	
}






