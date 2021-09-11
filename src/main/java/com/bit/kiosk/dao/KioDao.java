package com.bit.kiosk.dao;

import java.util.ArrayList;

import com.bit.kiosk.dto.CartDto;
import com.bit.kiosk.dto.MenuDto;

public interface KioDao {
	
	//	메뉴 select
	public ArrayList<MenuDto> findMenuAll();
	public ArrayList<String> findCategoryList();
	
	//메뉴출력
	public ArrayList<MenuDto> kioMenu(String p_category);
	
	public MenuDto kioNum(int p_num);
	
//	메뉴 insert
	/*
	 * public void insertMenu(int o_num, int p_num, String p_name, String o_shot,
	 * String o_whipping, String o_size, String o_quantity, String o_pickup);
	 */	
	
	//메뉴 insertKioMenu
	//public void insertKioMenu(int o_num, int p_num, String p_name, String o_shot, String o_whipping, String o_size, String o_quantity, String o_pickup);

	public void insertKioMenu(ArrayList<CartDto> cartItems);

	
}
