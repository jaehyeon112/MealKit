package co.yedam.order.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.cart.service.CartVO;
import co.yedam.common.DataSourceMybatis;
import co.yedam.order.mapper.OrderMapper;
import co.yedam.order.service.OrderService;

public class OrderServiceImpl implements OrderService {
	SqlSession session = DataSourceMybatis.getInstance().openSession(true);
	OrderMapper mapper = session.getMapper(OrderMapper.class);
	
	@Override
	public List<CartVO> orderList(String[] cartNum) {
		return mapper.orderList(cartNum);
	}
	
}
