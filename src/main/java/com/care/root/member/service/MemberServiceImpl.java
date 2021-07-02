package com.care.root.member.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.root.member.dto.MemberDTO;
import com.care.root.mybatis.member.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired MemberMapper mapper;
	public int user_check(HttpServletRequest request, 
												 Model model,
												 HttpSession session) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
		MemberDTO dto = mapper.user_check(request.getParameter("memberId"));
		if(dto != null) {
			//if(request.getParameter("pw").equals(dto.getPw())) {
			if(encoder.matches(request.getParameter("memberPassword"), dto.getMemberPassword()) ||
								request.getParameter("memberPassword").equals(dto.getMemberPassword())) {
				model.addAttribute("userDataOnThisPageRequest", mapper.user_check(request.getParameter("memberId")));
				session.setAttribute("userSessionData", mapper.user_check(request.getParameter("memberId")));
				return 0;
			}
		}
		return 1;
		
	}
	public void memberInfo(Model model) {
		ArrayList<MemberDTO> list = mapper.memberInfo();
		model.addAttribute("memberList", list);
		//model.addAttribute("memberList", mapper.memberInfo());
	}
	public void info(String memberId, Model model) {
		model.addAttribute("info",mapper.info(memberId)) ;
	}
	public int register(MemberDTO dto) {
		dto.setMemberId(dto.getMemberId());
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		//dto.setPw(encoder.encode(dto.getPw()));
		System.out.println("비밀번호 변경 전 : "+dto.getMemberPassword());
		String pw = encoder.encode(dto.getMemberPassword());
		System.out.println("암호화 후 : "+pw);
		dto.setMemberIdx(UUID.randomUUID().toString().replace("-", "")); 
		
		dto.setMemberPassword(pw);
		dto.setMemberName(dto.getMemberName());
		dto.setMemberPhone(dto.getMemberPhone());
		dto.setMemberAddress(dto.getMemberAddress());
		dto.setMemberEmail(dto.getMemberEmail());
		
		dto.setMemberLimitTime(new Date(System.currentTimeMillis()));
		dto.setMemberSessionId("nan");
		
		dto.setMemberRole("user");
		Date createDate = new Date(System.currentTimeMillis());
		dto.setMemberCreateDate(createDate);
		
		try {
			return mapper.register(dto);
		}catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	public void keepLogin(String memberSessionId, Date memberLimitTime, String memberId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("memberSessionId", memberSessionId);
		map.put("memberLimitTime", memberLimitTime);
		map.put("memberId", memberId);
		mapper.keepLogin(map);
	}
	public MemberDTO getUserSessionId(String memberSessionId) {
		return mapper.getUserSessionId(memberSessionId);
	}
}








