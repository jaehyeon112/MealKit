package co.yedam.order.service;

import java.util.List;
import java.util.Map;

import co.yedam.cart.service.CartVO;

public interface OrderService {
	public List<CartVO> orderList(Map<String, Object> map);
	public String getPoint(Map<String, Object> map);
	public int updateUserInfo(Map<String, Object> map);
	public int updateMenuInfo(String menuId, int menuCount);
	public int deleteCartNum(int cartNum);
	public int insertOrder(OrdersVO vo);
	public int insertDetail(OrderDetailVO vo);
}
