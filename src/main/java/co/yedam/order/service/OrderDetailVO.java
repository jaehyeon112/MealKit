package co.yedam.order.service;

import java.util.Date;

import lombok.Data;

@Data
public class OrderDetailVO {
	private int orderDetailNumber;
	private String orderNumber;
	private Date orderDate;
	private String menuId;
	private int menuCount;
	private String userId;
}
