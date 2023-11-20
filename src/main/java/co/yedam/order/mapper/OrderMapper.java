package co.yedam.order.mapper;

import java.util.List;

import co.yedam.cart.service.CartVO;

public interface OrderMapper {
	public List<CartVO> orderList(String[] cartNum);

}
