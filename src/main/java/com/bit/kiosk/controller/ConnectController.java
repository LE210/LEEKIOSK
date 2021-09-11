package com.bit.kiosk.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bit.kiosk.dto.CartDto;

@Controller
public class ConnectController {
	/*
	 * @RequestMapping(value = "/receipt") public String Cash(HttpServletRequest
	 * req) { HttpSession session = req.getSession();
	 * session.removeAttribute("totalPrice"); return "receipt"; }
	 */
	
	@RequestMapping(value = "/payForm")
	public String payForm()  {

		return "payForm";
	}
	
	@RequestMapping(value = "/receipt")
	public String receipt(HttpServletRequest req)  {
		
		return "receipt";
	}
	
	
	
	@RequestMapping(value = "/chatpage")
	public String chatpage() {
		
		return "chatpage";
	}
	


	@RequestMapping(value = "/paymentProc")
	public String paymentProc() {
		
		return "paymentProc";
	}
	
	@RequestMapping(value = "/payProc")
	public String payProc() {
		
		return "payProc";
	}

	@RequestMapping(value = "/togo")
	public ModelAndView test(String o_pickup, HttpServletRequest request) throws Exception {
        
	    HttpSession session = request.getSession();
	    session.setAttribute("o_pickup", o_pickup);
	 
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("/kioMenu");
	 
	    return mv;
	}
	


	
	
	
}
