package com.project.corona7.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.corona7.dao.CoronaDao;
import com.project.corona7.domain.CoronaVO;

import lombok.extern.log4j.Log4j;

@Service("CoronaServiceImpl")
@Log4j

public class CoronaServiceImpl implements CoronaService {
	
	@Inject
	private CoronaDao coronaDao;

	/** 환자 등록하기 */
	@Override
	public int insertcorona(CoronaVO corona) {
		return this.coronaDao.insertcorona(corona);
	}
	
	/** 환자 목록 보기*/
	@Override
	public List<CoronaVO> getcorona() {
		return this.coronaDao.getcorona();
	}
	
	/** 최근 등록된 환자 목록 보기*/
	@Override
	public List<CoronaVO> getrecentcorona() {
		return this.coronaDao.getrecentcorona();
	}
	

}
