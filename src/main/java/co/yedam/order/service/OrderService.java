package co.yedam.order.service;

import java.util.List;
import java.util.Map;

import co.yedam.cart.service.CartVO;

public interface OrderService {
	public List<CartVO> orderList(Map<String, Object> map);
	
	
}
