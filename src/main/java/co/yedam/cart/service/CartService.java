package co.yedam.cart.service;

import java.util.List;

import co.yedam.menu.service.MenuVO;

public interface CartService {
	public List<CartVO> CartList();
	public boolean addCartList(CartVO vo);
}
