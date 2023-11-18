package co.yedam.cart.service;

import java.util.List;

import co.yedam.menu.service.MenuVO;

public interface CartService {
	public List<CartVO> CartList(String userId);
	public boolean addCartList(CartVO vo);
	public Integer checkCartList(String userId);
	public CartVO cartOne(int CartNum);
	public CartVO updateCartList(CartVO vo, int cartNum, boolean check);
	public CartMenuJoinVO joinCartMenu(String userId);
}
