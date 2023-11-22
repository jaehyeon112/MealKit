package co.yedam.order.service;

import java.util.Date;

import lombok.Data;

@Data
public class OrdersVO {
	private String orderNumber;
	private String userId;
	private Date orderDate;
	private int totalPay; 
	private int gainPoint; 
	private String orderStatus;
	
	
}
