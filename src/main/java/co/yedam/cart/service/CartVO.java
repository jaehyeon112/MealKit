package co.yedam.cart.service;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartVO {
	private int cartNum;
	private String menuId;
	private String menuName;
	private String menuImage1;
	private int menuPrice;
	private int menuPriceOff;
	private int cartCount;
	private String userId;
	//재고 수량
	private int restCount;
}