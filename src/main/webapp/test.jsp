<%@ page language="java" contentType="text/html; charset=utf-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<script src="${pageContext.request.contextPath }/script/jquery-1.11.3.min.js" type="text/javascript"></script>
<script type="text/javascript">
function addCol() {
  $th = $("<th>增加的列头</th>");
  $col = $("<td>增加的列</td>");
  $("#tab1>thead>tr").append($th);
  $("#tab1>tbody>tr").append($col);
}
function delCol() {
  //移除最后一列
  $("#tab1 tr :last-child").remove();
  //移除第一列
  $("#tab1 tr :first-child").remove();
  //移除指定的列, 注:这种索引从1开始
  $("#tab1 tr :nth-child(2)").remove();
  //移除第一列之外的列
  $("#tab1 tr :not(:nth-child(1))").remove();
}
// </script>
</head>
<body>
<input id="Button1" type="button" onclick="addCol()" value="增加列" />
<input id="Button2" type="button" onclick="delCol()" value="减少列" />
  <table id="tab1" border="1" style="width: 200px;">
    <thead>
    <tr>
      <th>Id</th>
      <th>Name</th>
    </tr>
    </thead>
    <tbody>
    <tr>
      <td>1</td>
      <td>叶子</td>
    </tr>
    <tr>
      <td>2</td>
      <td>王子</td>
    </tr>
    </tbody>
  </table>
</body>
</html>
