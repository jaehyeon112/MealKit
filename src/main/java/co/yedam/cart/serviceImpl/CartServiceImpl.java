package co.yedam.cart.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.cart.mapper.CartMapper;
import co.yedam.cart.service.CartService;
import co.yedam.cart.service.CartVO;
import co.yedam.common.DataSourceMybatis;
import co.yedam.menu.service.MenuVO;

public class CartServiceImpl implements CartService{

	SqlSession session = DataSourceMybatis.getInstance().openSession(true);
	CartMapper mapper = session.getMapper(CartMapper.class);
	@Override
	public List<CartVO> CartList() {
		return mapper.selectList();
	}
	@Override
	public boolean addCartList(CartVO vo) {
		return mapper.insertCart(vo)==1;
	}
}
