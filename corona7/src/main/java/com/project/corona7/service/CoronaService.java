package com.project.corona7.service;

import java.util.List;

import com.project.corona7.domain.CoronaVO;

public interface CoronaService {
	
	/** ȯ�� ����ϱ� */
	int insertcorona(CoronaVO corona);
	
	/** ȯ�� ��� ����*/
	List<CoronaVO> getcorona();
	
	/** �ֱ� ��ϵ� ȯ�� ��� ����*/
	List<CoronaVO> getrecentcorona();

	
}
