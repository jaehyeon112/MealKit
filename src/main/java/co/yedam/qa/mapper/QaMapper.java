package co.yedam.qa.mapper;

import java.util.List;

import co.yedam.qa.service.QaVO;

public interface QaMapper {
	public List<QaVO> selectList(String userId);
	public QaVO select(int QaNo);
	public int insert(QaVO vo);
	public int update(QaVO vo);
	public int delete(int QaNo);
	
	public List<QaVO> selectListAll();
}
