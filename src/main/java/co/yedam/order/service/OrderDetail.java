package co.yedam.order.service;

import lombok.Data;

@Data
public class OrderDetail {
	private int orderDetailNumber;
	private String orderNumber;
	private String menuId;
	private int menuCount;
	private String userId;
}
