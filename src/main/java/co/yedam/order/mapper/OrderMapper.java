package co.yedam.order.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import co.yedam.cart.service.CartVO;

public interface OrderMapper {
	//@Param("cartArr")String[] cartNum, @Param("userId")String userId
	public List<CartVO> orderList(Map<String, Object> map);
	public String gainPoint(Map<String, Object> map);
	public int UpdateUserinfoAfterdecideOrder(Map<String, Object> map);
	public int menuUpdate(@Param("menuId")String menuId, @Param("menuCount")int menuCount);
}
