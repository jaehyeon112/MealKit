package co.yedam.order.serviceImpl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import co.yedam.cart.service.CartVO;
import co.yedam.common.DataSourceMybatis;
import co.yedam.order.mapper.OrderMapper;
import co.yedam.order.service.OrderService;

public class OrderServiceImpl implements OrderService {
	SqlSession session = DataSourceMybatis.getInstance().openSession(true);
	OrderMapper mapper = session.getMapper(OrderMapper.class);
	
	@Override
	public List<CartVO> orderList(Map<String, Object> map) {
		return mapper.orderList(map);
	}

	@Override
	public String getPoint(Map<String, Object> map) {
		return mapper.gainPoint(map);
	}

	@Override
	public int updateUserInfo(Map<String, Object> map) {
		return mapper.UpdateUserinfoAfterdecideOrder(map);
	}

	@Override
	public int updateMenuInfo(String menuId, int menuCount) {
		return mapper.menuUpdate(menuId, menuCount);
	}
	
	//String[] cartNum, String userId

	
}
