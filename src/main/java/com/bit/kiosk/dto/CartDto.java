package com.bit.kiosk.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter

public class CartDto {
	
	private String o_num ="1";
	private String p_num;
	private String p_name;
	private String p_image;
	private String o_shot;
	private String o_whipping;
	private String o_size;
	private String o_quantity;
	private String p_price;
	private String o_pickup;
	
	@Override
	public String toString() {
		return "CartDto [o_num=" + o_num + ", p_num=" + p_num + ", p_name=" + p_name + ", p_image=" + p_image + ", o_shot=" + o_shot
				+ ", o_whipping=" + o_whipping + ", o_size=" + o_size + ", o_quantity=" + o_quantity + ", p_price="
				+ p_price + ", o_pickup=" + o_pickup + "]";
	}

	
}
