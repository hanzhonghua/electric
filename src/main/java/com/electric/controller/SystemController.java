package com.electric.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.electric.pojo.ElecCommonMsg;
import com.electric.service.SystemService;
import com.electric.utils.Common;
import com.electric.utils.UUIDUtil;

@Controller
@RequestMapping(value = "/system")
public class SystemController {
	
	private static Logger logger = LoggerFactory.getLogger(SystemController.class);
	@Resource
	private SystemService systemService;

	/**
	 * 待办事宜页面
	 *<p>actingIndex()</p>
	 * @author Hanzhonghua
	 * @data 2016年8月2日下午2:07:53
	 * @return String
	 */
	@RequestMapping(value = "/actingIndex")
	public ModelAndView actingIndex(ModelAndView mv){
		//查询当天所有站点运行信息
		List<ElecCommonMsg> list = systemService.selectstationMsgList();
		mv.addObject("stationMsgList", list);
		mv.setViewName("/system/actingIndex");
		return mv;
	}
	
	/**
	 * 添加站点、设备运行情况描述
	 *<p>savePending()</p>
	 * @author Hanzhonghua
	 * @data 2016年8月2日下午2:16:21 void
	 */
	@RequestMapping(value = "/savePending")
	public ModelAndView savePending(ElecCommonMsg elecCommonMsg){
		ModelAndView mv = new ModelAndView();
		String uuid = UUIDUtil.getUUID32Str();
		try {
			elecCommonMsg.setComId(uuid);
			elecCommonMsg.setCreateDate(Common.fromDateH());
			//添加站点设备运行信息
			int result = systemService.savePending(elecCommonMsg);
			if(result == 1){
				logger.info("添加站点设备信息成功");
			}
		} catch (Exception e) {
			logger.error("添加站点设备信息失败");
			e.printStackTrace();
		}
		//查询所有站点运行信息
		List<ElecCommonMsg> list = systemService.selectstationMsgList();
		mv.addObject("stationMsgList", list);
		mv.setViewName("/system/actingIndex");
		return mv;
	}
	
	@RequestMapping(value = "/dictionaryIndex")
	public ModelAndView ddlIndex(ModelAndView mv){
		mv.setViewName("/system/dictionaryIndex");
		return mv;
	}
}
