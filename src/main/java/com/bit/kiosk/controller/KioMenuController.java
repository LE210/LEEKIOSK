package com.bit.kiosk.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.kiosk.dao.KioDao;
import com.bit.kiosk.dto.CartDto;
import com.bit.kiosk.dto.MenuDto;
import com.bit.kiosk.dto.OrderDto;

@Controller
public class KioMenuController {

	@Autowired
	private SqlSession sqlsession;
	private static ArrayList<ArrayList<MenuDto>> menuAllList;
	public static  ArrayList<ArrayList<CartDto>> cartList;
	public static  ArrayList<CartDto> cartItems;
	static private int totalPrice = 0;

	@RequestMapping(value = "/home")
	public String home(HttpSession session) {
		

		
		if (menuAllList == null) {
			KioDao kDao = sqlsession.getMapper(KioDao.class);
			ArrayList<String> categoryList = kDao.findCategoryList();
			menuAllList = new ArrayList<ArrayList<MenuDto>>();
			for (String categoryNum : categoryList) {
				System.out.print("헤이맨!");
				ArrayList<MenuDto> menuListByCategory = kDao.kioMenu(categoryNum);
				menuAllList.add(menuListByCategory);
				
			}

		}
		
		if (session.getAttribute("menuAllList")==null) {
			session.setAttribute("menuAllList", menuAllList);
			cartItems = new ArrayList<CartDto>();
			cartList = new ArrayList<ArrayList<CartDto>>();
			session.setAttribute("cartList", cartList);
			session.setAttribute("cartItems",cartItems);
			session.setAttribute("hi", "ho");
		}
		
		int orderNum = 1;
		if(session.getAttribute("orderNum")==null) {
			//주문번호 생성
			session.setAttribute("orderNum", orderNum);
		}else {
			orderNum++;
			session.setAttribute("orderNum", orderNum);
			
		}
		
		
		return "home";
	}

	@RequestMapping(value = "/main")
	public String main() {

		return "main";
	}

	@RequestMapping(value = "/kioMenu", method=RequestMethod.GET)
	public String kioMenu(Model model, HttpSession session) {
		KioDao kDao = sqlsession.getMapper(KioDao.class);
		
		totalPrice = 0;
		for(CartDto dto : cartItems) {
			totalPrice = totalPrice + Integer.parseInt((String)dto.getP_price());
		}
		
		session.setAttribute("totalPrice", totalPrice);
		session.setMaxInactiveInterval(60);
		return "kioMenu";
	}
	
	@RequestMapping(value = "/addCart", method=RequestMethod.POST)
	public String addCart(Model model, CartDto cDto) {
		
		cartItems.add(cDto);
		System.out.println(cartItems);
		
		totalPrice = 0;
		for(CartDto dto : cartItems) {
			totalPrice = totalPrice + Integer.parseInt((String)dto.getP_price());
		}
		
		return "redirect:kioMenu";
	}
	
	@RequestMapping(value = "/removeCart", method=RequestMethod.GET)
	public String removeCart(Model model, int itemNum) {
		
		cartItems.remove(itemNum);
		
		totalPrice = 0;
		for(CartDto dto : cartItems) {
			totalPrice = totalPrice + Integer.parseInt((String)dto.getP_price());
		}
		return "redirect:kioMenu";
	}

	/*
	 * @RequestMapping("/menuOption") public String kioMenu2(Model model) { KioDao
	 * kDao = sqlsession.getMapper(KioDao.class); model.addAttribute("menuList",
	 * kDao.kioMenu()); return "kioMenu"; }
	 */

	@RequestMapping("/menuOption")
	public String optionModal(Model model) {
		KioDao kDao = sqlsession.getMapper(KioDao.class);
		
		return "menuOption";
	}

	@RequestMapping("/numberKeyboard")
	public String numberKeyboard(Model model) {
		return "numberKeyboard";
	}
	

	
	 @RequestMapping(value = "/cash") 
	 public String insertKioMenu(Model model, HttpSession session) {
		
		 //cartItems = new ArrayList<CartDto>();
		 //cartItems = (ArrayList)session.getAttribute("cartItems");
		 System.out.println("cartItems.........." + cartItems.size());
	
		 System.out.println(cartItems+"여기");
		 KioDao kdao = sqlsession.getMapper(KioDao.class);
		 
		 kdao.insertKioMenu(cartItems);
		 
		
	  
	  
	  return "cash"; 
	  }
	 
		/*
		 * @RequestMapping(value="cartList") public String cartList(Model model) {
		 * KioDao kdao = sqlsession.getMapper(KioDao.class);
		 * 
		 * 
		 * 
		 * 
		 * return null;
		 * 
		 * }
		 */
	 

}
