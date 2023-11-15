package co.yedam.common;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.cart.mapper.CartMapper;
import co.yedam.cart.service.CartVO;


public class MainExe {
	public static void main(String[] args) {
		SqlSession session = DataSourceMybatis.getInstance().openSession(true);
		CartMapper mapper = session.getMapper(CartMapper.class);
		
		List<CartVO> map = mapper.selectList();
		System.out.println(map);
	}
}
