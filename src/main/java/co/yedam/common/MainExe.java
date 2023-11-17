package co.yedam.common;


import org.apache.ibatis.session.SqlSession;

import co.yedam.cart.mapper.CartMapper;
import co.yedam.cart.service.CartMenuJoinVO;
import co.yedam.cart.service.CartService;
import co.yedam.cart.serviceImpl.CartServiceImpl;
public class MainExe {

	public static void main(String[] args) {
		
		SqlSession session = DataSourceMybatis.getInstance().openSession(true);
		CartMapper mapper = session.getMapper(CartMapper.class);
		
		CartMenuJoinVO vo = mapper.joinCartMenu("12345");
		System.out.println(vo);
		
	}
}
