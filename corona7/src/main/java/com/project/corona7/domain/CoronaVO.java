package com.project.corona7.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CoronaVO {
	
	private int idx;
	private float latitude;
	private float longitude;
	private String info;
	private Date indate;
}
