package co.yedam.cart.mapper;

import java.util.List;
import java.util.Map;

import co.yedam.cart.service.CartMenuJoinVO;
import co.yedam.cart.service.CartVO;

public interface CartMapper {
	public List<CartVO> selectList(String userId);
	
	public CartVO selectCartOne(int CartNum);

	public int insertCart(CartVO vo);

	public Integer cartListCheck(String userId);
	
	public int deleteCartList(String CartNum);
	
	public CartMenuJoinVO joinCartMenu(Map<String, Object> map);
	public CartMenuJoinVO joinCartMenuAll(String userId);
	public List<CartVO> selectListUseCartNum(Map<String, Object> map);
	public int updateCartPlus(CartVO vo);
	public int updateCartMinus(CartVO vo);
}
