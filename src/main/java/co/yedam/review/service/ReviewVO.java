package co.yedam.review.service;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {
	private int orderDetailNumber;
	private int reviewBoomup;
	private String menuName;
	private int reviewStar;
	private String reviewImage;
	private String userId;
	private Date reviewDate;
	private String reviewContent;
}
