package com.electric.service;

import java.util.List;

import com.electric.pojo.ElecCommonMsg;

public interface SystemService {

	int savePending(ElecCommonMsg msg) throws Exception;

	List<ElecCommonMsg> selectstationMsgList();

}
