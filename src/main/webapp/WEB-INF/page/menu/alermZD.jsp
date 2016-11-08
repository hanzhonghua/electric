<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
  <head>
    <title>load</title>
    <link href="${pageContext.request.contextPath }/css/Style.css" type="text/css" rel="stylesheet" />
   </head>
  <script type="text/javascript" src="${pageContext.request.contextPath }/script/jquery-1.11.3.min.js"></script>
  <body>
    <table width="100%" border="0" id="table8">
		<tr>
			<td align="left" valign="middle"  style="word-break: break-all">
			<span class="style1">123
			</span></td>
		</tr>		
	</table>
  </body>
  <script type="text/javascript">
      $(function(){
 		  $.ajax({
    		  type:'GET',
    		  url:'',
    		  success:function(data){
    			  for(var i=0;i<data.length;i++){
    				  
    			  }
    		  }
    	  });
      });
  </script>
</html>