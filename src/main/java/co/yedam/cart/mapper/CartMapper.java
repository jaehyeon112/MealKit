package co.yedam.cart.mapper;

import java.util.List;

import co.yedam.cart.service.CartMenuJoinVO;
import co.yedam.cart.service.CartVO;

public interface CartMapper {
	public List<CartVO> selectList(String userId);

	public int insertCart(CartVO vo);

	public Integer cartListCheck(String userId);
	
	public int deleteCart(int CartNum);
	
	public CartMenuJoinVO joinCartMenu(String userId);
}
