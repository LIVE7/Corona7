package com.project.corona7.service;

import java.util.List;

import com.project.corona7.domain.CoronaVO;

public interface CoronaService {
	
	/** 환자 등록하기 */
	int insertcorona(CoronaVO corona);
	
	/** 환자 목록 보기*/
	List<CoronaVO> getcorona();
	
	/** 최근 등록된 환자 목록 보기*/
	List<CoronaVO> getrecentcorona();

	
}
