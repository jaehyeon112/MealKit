package co.yedam.cart.serviceImpl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import co.yedam.cart.mapper.CartMapper;
import co.yedam.cart.service.CartMenuJoinVO;
import co.yedam.cart.service.CartService;
import co.yedam.cart.service.CartVO;
import co.yedam.common.DataSourceMybatis;

public class CartServiceImpl implements CartService{

	SqlSession session = DataSourceMybatis.getInstance().openSession(true);
	CartMapper mapper = session.getMapper(CartMapper.class);
	@Override
	public List<CartVO> CartList(String userId) {
		return mapper.selectList(userId);
	}
	@Override
	public boolean addCartList(CartVO vo) {
		return mapper.insertCart(vo)==1;
	}
	@Override
	public Integer checkCartList(String userId) {
		return mapper.cartListCheck(userId);
	} 
	
	
	@Override
	public CartVO updateCartList(CartVO vo, int cartNum ,boolean check) {
		
		if(check) {
			mapper.updateCartPlus(vo);
		}else {
			mapper.updateCartMinus(vo);
		}
		
		CartVO vo2 = mapper.selectCartOne(cartNum);
		return vo2;
	}
		
	
	
	@Override
	public CartVO cartOne(int CartNum) {
		return mapper.selectCartOne(CartNum);
	}
	@Override
	public CartMenuJoinVO joinCartMenu(Map<String, Object> map) {
		return mapper.joinCartMenu(map);
	}
	
	@Override
	public List<CartVO> removeCart(String CartNum, String userId) {
		mapper.deleteCartList(CartNum);
		
		
		return mapper.selectList(userId);
	}
	@Override
	public CartMenuJoinVO joinCartMenuAll(String userId) {
		return mapper.joinCartMenuAll(userId);
	}
}
