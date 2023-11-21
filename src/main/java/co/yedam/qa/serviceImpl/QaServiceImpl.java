package co.yedam.qa.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSourceMybatis;
import co.yedam.qa.mapper.QaMapper;
import co.yedam.qa.service.QaService;
import co.yedam.qa.service.QaVO;

public class QaServiceImpl implements QaService{
	SqlSession sqlSession = DataSourceMybatis.getInstance().openSession(true);
	QaMapper mapper = sqlSession.getMapper(QaMapper.class);
	
	@Override
	public boolean addQa(QaVO vo) {
		return mapper.insert(vo) == 1;
	}
	@Override
	public boolean editQa(QaVO vo) {
		return mapper.update(vo) == 1;
	}
	@Override
	public QaVO getQa(int qaNo) {
		return mapper.select(qaNo);
	}
	@Override
	public List<QaVO> qaList() {
		return mapper.selectList();
	}
	@Override
	public boolean removeQa(int qaNo) {
		return mapper.delete(qaNo) == 1;
	}
}
