package co.yedam.cart.mapper;

import java.util.List;

import co.yedam.cart.service.CartVO;

public interface CartMapper {
List<CartVO> selectList();
}
