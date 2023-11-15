package co.yedam.review.mapper;

import java.util.List;

import co.yedam.review.service.ReviewVO;

public interface ReviewMapper {
	public List<ReviewVO> selectList();
}
