package co.yedam.cart.service;

import lombok.Data;

@Data
public class CartMenuJoinVO {
	private String userId;
	private int price;
	private int priceOff;
	private int delivery;
	private int total;
}
