package com.bit.kiosk.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class KioDto {
	
	private int o_num;
	private int p_num;
	private String p_name;
	private String o_shot;
	private String o_whipping;
	private String o_size;
	private int o_quantity;
	private String o_pickup;

	
	@Override
	public String toString() {
		return "KioDto [o_num=" + o_num + ", p_num=" + p_num + ", o_shot=" + o_shot + ", p_name=" + p_name
				+ ", o_whipping=" + o_whipping + ", o_size=" + o_size + ", o_quantity=" + o_quantity + ", o_pickup="
				+ o_pickup + "]";
	}
	
	
}
