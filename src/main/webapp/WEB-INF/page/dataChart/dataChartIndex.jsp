

<%@ page language="java" pageEncoding="UTF-8"%>



<html>

<head>
<title>资料图纸管理</title>

<link href="${pageContext.request.contextPath }/css/Style.css" type="text/css" rel="stylesheet">
<script language="javascript" src="${pageContext.request.contextPath }/script/function.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/script/pub.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/script/validate.js"></script>
<script language="javascript" src="${pageContext.request.contextPath }/script/changePageBackUp.js" charset="gb2312"></script>
<script language="javascript">

  	function  gotopage(path,where){
       
     var page=document.Form2.pageNO;
     
     document.Form1.addnewflag.value=0;    //不一定是去最后一页



     
     //如果传过来的参数不在下列之中，则还是回到当前页(修改和删除完之后)
     if(where=="next"){ 
     
       page.value=document.Form2.nextpageNO.value;
      
     }else if(where=="prev"){
     
       page.value=document.Form2.prevpageNO.value;
     }else if(where=="end"){
     
       page.value=document.Form2.sumPage.value;
     }else if(where=="start"){
       page.value=1;
     }else if(where=="go"){
         
         var theForm = document.Form2;   
  
         if(Trim(theForm.goPage.value)=="")
	     {
		    alert("请输入页数"); 
		    theForm.goPage.focus();   
		    return false;
	     }
	 
	    if(!checkNumber(theForm.goPage))
	    {
		    alert("请输入正确页数(数字)"); 
		    theForm.goPage.focus();     
		    return false;
	     }
	     
	     var objgo=parseInt(theForm.goPage.value);
	     var objsum=parseInt(theForm.sumPage.value);
	     
	    if(objgo<=0||objgo>objsum){
	 
	       alert("不存在此页，请重新输入页数"); 
		   theForm.goPage.focus();     
		   return false; 
	    }
         
       page.value=theForm.goPage.value;                
     } 
     
     //新增站点时，应去最后一页，在此做标记



     if(where=="addNewJctBuilds"){
       document.Form1.addnewflag.value=0;
     }
     
      document.Form1.ifnewquery.value="0";
      document.Form1.pageNO.value=document.Form2.pageNO.value;
      document.Form1.querysql.value=document.Form2.querysql.value; 
      document.Form1.pageSize.value=document.Form2.pageSize.value;
     
      Pub.submitActionWithForm('Form2',path,'Form1'); 
           
  }
  
   function gotoquery(path){
    document.Form1.ifnewquery.value="1";  //新的查询应去第一页 ，用新的查询条件，标志给业务处理类用
    document.Form1.addnewflag.value=0;    //不去最后一页，标志给pageInfo类用
    document.Form1.pageNO.value=1;
    document.Form1.pageSize.value=10;
    Pub.submitActionWithForm('Form2',path,'Form1'); 
     
  }
  
function getUrl(ssdw, filename){
			var strUrl = "";
			strUrl = "${pageContext.request.contextPath }/UploadFile/Paper/"+ssdw+"/" ;
			
			strUrl = strUrl + filename;	
			openWindow(strUrl,800,450);
		}
		
		function onloadForm2() {
		var str ='informationAndPaper.do?pageNO=1&pageSize=10';
		Pub.submitActionWithForm('Form2',str,'Form1');
		}
		
</script>
</head>

<body>

<form name="Form1"  id="Form1" style="margin:0px;"> 
	<table cellspacing="1" cellpadding="0" width="90%" align="center" bgcolor="#f5fafe" border="0">
		<tr>
			<td class="ta_01" align="center" background="${pageContext.request.contextPath }/images/b-info.gif">
			<font face="宋体" size="2"><strong>资料图纸管理</strong></font>
			</td>
		</tr>
		<TR height=10><td></td></TR>
		<tr>
			<td>
			<table cellpadding="0" cellspacing="0" border="0" width="100%">
				
				<tr>
					<td class="ta_01" align="center" bgcolor="#f5fafe" height="22">
					所属单位：</td>
					<td class="ta_01" >
						<select name="ssdw" id="ssdw" style="width:160px" >
						
		                <option value="0">全部</option>
		                	
						
						<option value="1">540</option>		
						
						<option value="2">560</option>		
						
						<option value="3">成都台</option>		
						
						<option value="4">厦门台</option>		
						
						<option value="5">553台</option>		
						
						<option value="6">201台</option>		
						
						<option value="7">202台</option>		
						
						<option value="8">203台</option>		
						
						<option value="9">哈尔滨台</option>		
						
						<option value="10">西安台</option>		
						
						<option value="11">中心</option>		
						
						<option value="12">北京台</option>		
						
						<option value="13">海南台</option>		
								
						</select>
					</td>
					<input type="hidden" name="initflag"   value="0">
					<input type="hidden" name="addnewflag" value="0">
					<input type="hidden" name="pageNO"     value="" >                
                    <input type="hidden" name="querysql"   value="" >                 
                    <input type="hidden" name="pageSize"   value="" >
                    <input type="hidden" name="ifnewquery"  >
					<td width="100" class="ta_01" align="center" bgcolor="#f5fafe" height="22">
					图纸类别：</td>
					<td class="ta_01" >
						 <font face="宋体" color="red"> 
					  <select name ="belongTo" id="belongTo" style="WIDTH: 160px">
					   <option value="0">全部</OPTION>
					   
						  <option value="1">国内图书</option>	
					   
						  <option value="2">香港图书</option>	
					   
					  </select> 
					 </font>
					</td>
		     </tr>
		     <tr>
		        <td class="ta_01" align="center" bgcolor="#f5fafe" height="22">
		           图纸名称：</td>
		          <td class="ta_01">
		           <input name="fileName" type="text" id="fileName" size="21" onkeydown="if(event.keyCode==13) return false;">   
		           </td>
		           <td width="100" colspan="2" class="ta_01" align="center" bgcolor="#f5fafe" height="22">
		            &nbsp;</td>
		           </tr>
		    </table>
		   </td>
		</tr>
    </table>	
</form>

<br>
<form name="Form2"  id="Form2" style="margin:0px;">
  <table cellspacing="0" cellpadding="0" width="90%" align="center" bgcolor="#f5fafe" border="0">
	<TR>
		<TD align="center" background="${pageContext.request.contextPath }/images/cotNavGround.gif" width=25><img src="${pageContext.request.contextPath }/images/yin.gif" width="15"></TD>
		<TD class="DropShadow" background="${pageContext.request.contextPath }/images/cotNavGround.gif" width=100>资料图纸列表</TD>
		<td class="ta_01" align="right" bgcolor="#ffffff">
			<input type="button" name="BT_Search" value="查询" style="font-size:12px; color:black; height=20;width=50" id="BT_Search" onclick="gotoquery('informationAndPaper.do')">
			
			<input  id="BT_Add" type="button" value="添加" name="BT_Add" style="font-size:12px; color:black; height=20;width=50"   onclick="openWindow('dataChartAdd.jsp',800,400);">
				
		</td>
	</TR>
  </TABLE>		
 <table cellspacing="1" cellpadding="0" width="90%" align="center" bgcolor="#f5fafe" border="0">
		<tr>
			<td class="ta_01" align="center" bgcolor="#f5fafe">
			<table cellspacing="0" cellpadding="1" rules="all" bordercolor="gray" border="1" id="DataGrid1" style="BORDER-RIGHT:gray 1px solid; BORDER-TOP:gray 1px solid; BORDER-LEFT:gray 1px solid; WIDTH:100%; WORD-BREAK:break-all; BORDER-BOTTOM:gray 1px solid; BORDER-COLLAPSE:collapse; BACKGROUND-COLOR:#f5fafe; WORD-WRAP:break-word">
				<tr style="FONT-WEIGHT:bold;FONT-SIZE:12pt;HEIGHT:25px;BACKGROUND-COLOR:#afd1f3">
					<td align="center" width="6%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">序号</td>
					<td align="center" width="20%"  height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">所属单位</td>
					<td align="center" width="20%"  height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">图纸类别</td>
					<td align="center" width="48%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">图纸名称</td>
					
					<td width="6%" align="center" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">删除</td>
						
				</tr>
				
				
				
				<tr onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
					<td  align="center" width="6%">1</td>
					<td align="center"  width="20%">成都台</td>
					<td align="center"  width="20%">国内图书</td>
					<td align="center"  width="48%">
					<a href="javascript:;" onclick="getUrl('成都台', '刘阳同志点评.doc')">刘阳同志点评.doc</a></td>
					
					<td align="center" style="HEIGHT: 21px">
					<a href="javascript:gotopage('removeInfAndPaper.do?seqId=239','nowpage')" onclick="return confirm('你确定要删除  刘阳同志点评.doc？')">
					<img src="${pageContext.request.contextPath }/images/delete.gif" width="15" height="14" border="0" style="CURSOR:hand"></a>
					</td>
						
				</tr>
				
				<tr onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
					<td  align="center" width="6%">2</td>
					<td align="center"  width="20%">成都台</td>
					<td align="center"  width="20%">国内图书</td>
					<td align="center"  width="48%">
					<a href="javascript:;" onclick="getUrl('成都台', '国家电网离退休管理系统软件.doc')">国家电网离退休管理系统软件.doc</a></td>
					
					<td align="center" style="HEIGHT: 21px">
					<a href="javascript:gotopage('removeInfAndPaper.do?seqId=238','nowpage')" onclick="return confirm('你确定要删除  国家电网离退休管理系统软件.doc？')">
					<img src="${pageContext.request.contextPath }/images/delete.gif" width="15" height="14" border="0" style="CURSOR:hand"></a>
					</td>
						
				</tr>
				
				<tr onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
					<td  align="center" width="6%">3</td>
					<td align="center"  width="20%">540</td>
					<td align="center"  width="20%">国内图书</td>
					<td align="center"  width="48%">
					<a href="javascript:;" onclick="getUrl('540', 'SoTower.doc')">SoTower.doc</a></td>
					
					<td align="center" style="HEIGHT: 21px">
					<a href="javascript:gotopage('removeInfAndPaper.do?seqId=237','nowpage')" onclick="return confirm('你确定要删除  SoTower.doc？')">
					<img src="${pageContext.request.contextPath }/images/delete.gif" width="15" height="14" border="0" style="CURSOR:hand"></a>
					</td>
						
				</tr>
				
				<tr onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
					<td  align="center" width="6%">4</td>
					<td align="center"  width="20%">成都台</td>
					<td align="center"  width="20%">国内图书</td>
					<td align="center"  width="48%">
					<a href="javascript:;" onclick="getUrl('成都台', 'SoTower.doc')">SoTower.doc</a></td>
					
					<td align="center" style="HEIGHT: 21px">
					<a href="javascript:gotopage('removeInfAndPaper.do?seqId=236','nowpage')" onclick="return confirm('你确定要删除  SoTower.doc？')">
					<img src="${pageContext.request.contextPath }/images/delete.gif" width="15" height="14" border="0" style="CURSOR:hand"></a>
					</td>
						
				</tr>
				
				<tr onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
					<td  align="center" width="6%">5</td>
					<td align="center"  width="20%">成都台</td>
					<td align="center"  width="20%">国内图书</td>
					<td align="center"  width="48%">
					<a href="javascript:;" onclick="getUrl('成都台', 'SoTower平台问题应答凭单.doc')">SoTower平台问题应答凭单.doc</a></td>
					
					<td align="center" style="HEIGHT: 21px">
					<a href="javascript:gotopage('removeInfAndPaper.do?seqId=235','nowpage')" onclick="return confirm('你确定要删除  SoTower平台问题应答凭单.doc？')">
					<img src="${pageContext.request.contextPath }/images/delete.gif" width="15" height="14" border="0" style="CURSOR:hand"></a>
					</td>
						
				</tr>
				
				<tr onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
					<td  align="center" width="6%">6</td>
					<td align="center"  width="20%">成都台</td>
					<td align="center"  width="20%">国内图书</td>
					<td align="center"  width="48%">
					<a href="javascript:;" onclick="getUrl('成都台', '安全测试问题反馈.doc')">安全测试问题反馈.doc</a></td>
					
					<td align="center" style="HEIGHT: 21px">
					<a href="javascript:gotopage('removeInfAndPaper.do?seqId=234','nowpage')" onclick="return confirm('你确定要删除  安全测试问题反馈.doc？')">
					<img src="${pageContext.request.contextPath }/images/delete.gif" width="15" height="14" border="0" style="CURSOR:hand"></a>
					</td>
						
				</tr>
				
				<tr onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
					<td  align="center" width="6%">7</td>
					<td align="center"  width="20%">540</td>
					<td align="center"  width="20%">国内图书</td>
					<td align="center"  width="48%">
					<a href="javascript:;" onclick="getUrl('540', 'i-Test3.0.doc')">i-Test3.0.doc</a></td>
					
					<td align="center" style="HEIGHT: 21px">
					<a href="javascript:gotopage('removeInfAndPaper.do?seqId=226','nowpage')" onclick="return confirm('你确定要删除  i-Test3.0.doc？')">
					<img src="${pageContext.request.contextPath }/images/delete.gif" width="15" height="14" border="0" style="CURSOR:hand"></a>
					</td>
						
				</tr>
				
				<tr onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
					<td  align="center" width="6%">8</td>
					<td align="center"  width="20%">540</td>
					<td align="center"  width="20%">国内图书</td>
					<td align="center"  width="48%">
					<a href="javascript:;" onclick="getUrl('540', 'tempdat.rar')">tempdat.rar</a></td>
					
					<td align="center" style="HEIGHT: 21px">
					<a href="javascript:gotopage('removeInfAndPaper.do?seqId=225','nowpage')" onclick="return confirm('你确定要删除  tempdat.rar？')">
					<img src="${pageContext.request.contextPath }/images/delete.gif" width="15" height="14" border="0" style="CURSOR:hand"></a>
					</td>
						
				</tr>
				
				<tr onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
					<td  align="center" width="6%">9</td>
					<td align="center"  width="20%">540</td>
					<td align="center"  width="20%">国内图书</td>
					<td align="center"  width="48%">
					<a href="javascript:;" onclick="getUrl('540', 'import.xml')">import.xml</a></td>
					
					<td align="center" style="HEIGHT: 21px">
					<a href="javascript:gotopage('removeInfAndPaper.do?seqId=224','nowpage')" onclick="return confirm('你确定要删除  import.xml？')">
					<img src="${pageContext.request.contextPath }/images/delete.gif" width="15" height="14" border="0" style="CURSOR:hand"></a>
					</td>
						
				</tr>
				
				<tr onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">
					<td  align="center" width="6%">10</td>
					<td align="center"  width="20%">540</td>
					<td align="center"  width="20%">国内图书</td>
					<td align="center"  width="48%">
					<a href="javascript:;" onclick="getUrl('540', 'New Project 20080416 1741.sql')">New Project 20080416 1741.sql</a></td>
					
					<td align="center" style="HEIGHT: 21px">
					<a href="javascript:gotopage('removeInfAndPaper.do?seqId=223','nowpage')" onclick="return confirm('你确定要删除  New Project 20080416 1741.sql？')">
					<img src="${pageContext.request.contextPath }/images/delete.gif" width="15" height="14" border="0" style="CURSOR:hand"></a>
					</td>
						
				</tr>
				
				
				
				
			</table>
			</td>
		</tr>
	<tr>
       <td width="100%" height="1"  >
         <table border="0" width="100%" cellspacing="0" cellpadding="0">
         
           <tr>
             <td width="28%" align="left">总记录数：105 条</td> 
             <td width="15%" align="right"></td>                 
             
             <td width="5%" align="center">首页&nbsp;&nbsp;|</td>
             <td width="7%" align="center">上一页&nbsp;&nbsp;&nbsp;|</td>
             
             
			 
             
             <td width="7%" align="center"><u><a href="#" onClick="gotopage('informationAndPaper.do','next')">下一页&nbsp;&nbsp;&nbsp;|</a></u></td>
             <td width="5%" align="center"><u><a href="#" onClick="gotopage('informationAndPaper.do','end')">末页</a></u></td>
             
             <td width="6%" align="center">第1页</td>
             <td width="6%" align="center">共11页</td>
             <td width="18%" align="right">至第<input size="1" type="text" name="goPage" >页



             <u><a href="#" onClick="gotopage('informationAndPaper.do','go')">确定</a></u></td>
             <td width="3%"></td> 
             <td><input type="hidden" name="pageNO" value="1" ></td> 
             <td><input type="hidden" name="prevpageNO" value="0"></td>
             <td><input type="hidden" name="nextpageNO" value="2"></td>
             <td><input type="hidden" name="querysql" value=""></td> 
             <td><input type="hidden" name="sumPage" value="11" ></td>
             <td><input type="hidden" name="pageSize" value="" ></td> 
           </tr>
         </table>       
       </td>
     </tr> 
 </table>
</form>
</body>
</html>
