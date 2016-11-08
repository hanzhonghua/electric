package com.electric.mapper;

import java.util.List;

import com.electric.mapper.base.BaseMapper;
import com.electric.pojo.ElecCommonMsg;

public interface SystemMapper extends BaseMapper{

	int savePending(ElecCommonMsg msg);
	List<ElecCommonMsg> selectstationMsgList();

}
