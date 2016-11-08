package com.electric.controller;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 页面展示
 *<p>File name:LoginController</p>
 * @author Hanzhonghua
 * @data 2016年8月2日上午9:50:30
 */
@Controller
public class ShowController {

	/**
	 * 跳转到系统首页
	 *<p>login()</p>
	 * @author Hanzhonghua
	 * @data 2016年8月2日上午9:50:15
	 * @return String
	 */
	@RequestMapping(value = "/home")
	public String login(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.setAttribute("user", "");
		return "/menu/home";
	}
	
	/**
	 * 头部信息
	 *<p>title()</p>
	 * @author Hanzhonghua
	 * @data 2016年8月2日上午9:56:33
	 * @return String
	 */
	@RequestMapping(value = "/title")
	public String title(){
		return "/menu/title";
	}
	
	/**
	 * 展示左侧菜单
	 *<p>left()</p>
	 * @author Hanzhonghua
	 * @data 2016年8月2日上午9:51:25
	 * @return String
	 */
	@RequestMapping(value = "/left")
	public String left(){
		return "/menu/left";
	}
	
	@RequestMapping(value = "/change")
	public String change(){
		return "/menu/change1";
	}
	
	/**
	 * 右侧功能区
	 *<p>loading()</p>
	 * @author Hanzhonghua
	 * @data 2016年8月2日上午9:57:29
	 * @return String
	 */
	@RequestMapping(value = "/loading")
	public String loading(){
		return "/menu/loading";
	}
	
	@RequestMapping(value = "/alermXZ")
	public String alermXZ(){
		return "/menu/alermXZ";
	}
	@RequestMapping(value = "/alermJX")
	public String alermJX(){
		return "/menu/alermJX";
	}
	/**
	 * 站点运行情况
	 *<p>alermZD()</p>
	 * @author Hanzhonghua
	 * @data 2016年8月3日下午2:00:09
	 * @return String
	 */
	@RequestMapping(value = "/alermZD")
	public String alermZD(){
		return "/menu/alermZD";
	}
	/**
	 * 设备运行情况
	 *<p>alermSB()</p>
	 * @author Hanzhonghua
	 * @data 2016年8月3日下午2:00:27
	 * @return String
	 */
	@RequestMapping(value = "/alermSB")
	public String alermSB(){
		return "/menu/alermSB";
	}
	/**
	 * 验收提醒
	 *<p>alermYS()</p>
	 * @author Hanzhonghua
	 * @data 2016年8月3日下午2:00:46
	 * @return String
	 */
	@RequestMapping(value = "/alermYS")
	public String alermYS(){
		return "/menu/alermYS";
	}
	
}
