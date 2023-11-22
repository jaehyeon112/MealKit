package co.yedam.menu.service;

import lombok.Data;

@Data
public class MenuVO {
	private String menuId;
	private String menuName;
	private String menuNameInfo;
	private String menuImage1;
	private String menuImage2;
	private String menuImage3;
	private String menuKind;
	private int menuPrice;
	private int menuPriceOff;
	private String menuContent;
	private int menuCount;
	private int menuPoint;
	private int menuTime;
	private int menuMany;
	private String menuTip;
}
