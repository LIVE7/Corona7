package com.project.corona7.dao;

import java.util.List;

import com.project.corona7.domain.CoronaVO;


public interface CoronaDao {
	
	/** ȯ�� ����ϱ� */
	int insertcorona(CoronaVO corona);
	
	/** ȯ�� ��� ����*/
	List<CoronaVO> getcorona();
	
	/** �ֱ� ��ϵ� ȯ�� ��� ����*/
	List<CoronaVO> getrecentcorona();
	
}
