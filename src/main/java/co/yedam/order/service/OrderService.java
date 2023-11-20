package co.yedam.order.service;

import java.util.List;

import co.yedam.cart.service.CartVO;

public interface OrderService {
	public List<CartVO> orderList(String[] cartNum);
	
	
}
