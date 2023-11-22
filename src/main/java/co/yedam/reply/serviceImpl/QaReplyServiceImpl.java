package co.yedam.reply.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSourceMybatis;
import co.yedam.reply.mapper.QaReplyMapper;
import co.yedam.reply.service.QaReplyService;
import co.yedam.reply.service.QaReplyVO;

public class QaReplyServiceImpl implements QaReplyService{
	SqlSession sqlSession = DataSourceMybatis.getInstance().openSession(true);
	QaReplyMapper mapper = sqlSession.getMapper(QaReplyMapper.class);
	
	@Override
	public boolean addReply(QaReplyVO vo) {
		return mapper.insertReply(vo) == 1;
	}
	@Override
	public boolean editReply(QaReplyVO vo) {
		return mapper.updateReply(vo) == 1;
	}
	@Override
	public boolean removeReply(int replyNo) {
		return mapper.deleteReply(replyNo) == 1;
	}
	@Override
	public List<QaReplyVO> replyList(int qaNo) {
		return mapper.replyList(qaNo);
	}
}
