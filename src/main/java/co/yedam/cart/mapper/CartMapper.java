package co.yedam.cart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.yedam.cart.service.CartVO;
import co.yedam.menu.service.MenuVO;

public interface CartMapper {
public List<CartVO> selectList();
public int insertCart(CartVO vo );
}
