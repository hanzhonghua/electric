package com.electric.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.electric.mapper.SystemMapper;
import com.electric.pojo.ElecCommonMsg;
import com.electric.service.SystemService;

@Service
public class SystemServiceImpl implements SystemService{

	@Resource
	private SystemMapper systemMapper;
	@Value("${JDBC_URL}")
	private String JDBC_URL;
	
	/**
	 * 添加设别运行信息
	 *<p>savePending()</p>
	 * @author Hanzhonghua
	 * @data 2016年8月2日下午2:31:44
	 * @param msg
	 * @return
	 */
	public int savePending(ElecCommonMsg msg) throws Exception{
		System.out.println(JDBC_URL);
		int result = systemMapper.savePending(msg);
		return result;
	}

	/**
	 * 查询当天站点设备运行信息
	 *<p>selectstationMsgList()</p>
	 * @author Hanzhonghua
	 * @data 2016年8月2日下午4:18:00
	 * @return
	 */
	public List<ElecCommonMsg> selectstationMsgList() {
		return systemMapper.selectstationMsgList();
	}

	
}
