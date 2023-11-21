package co.yedam.qa.service;

import java.util.List;

public interface QaService {
	public boolean addQa(QaVO vo);
	public boolean editQa(QaVO vo);
	public boolean removeQa(int qaNo);
	public List<QaVO> qaList(String userId);
	public QaVO getQa(int qaNo);
	
	public List<QaVO> qaListAll();
	
}
