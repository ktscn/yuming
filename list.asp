<!-- #INCLUDE FILE = "config.asp" -->
<%
'################################################################################
'#  世纪中国域名查询系统（第二版）
'#
'#  版权所有: 世纪中国虚拟主机网
'#
'#  制作人  : ^e^boy
'#
'#  主页地址: http://www.21cndns.com/    世纪中国虚拟主机网
'#		      http://www.kesee.com/      可视网络           
'#           
'#  21cndns.com 域名主机服务 给您实惠 让您放心 
'#
'#  请保留以上版权信息，谢谢合作！
'#  在使用中如果遇到什么问题可以来 http://www.21cndns.com/kesee/guestbook/ 留言
'################################################################################
%>
<!--#include file="adovbs.inc" -->
<%
public id
if Session("listpwd") = "" or Session("listname") = "" then
	Response.Redirect "login.asp"
else
	Set rs = Server.CreateObject("ADODB.Recordset")
	sql = "select * from domainlist order by 编号"
	rs.Open sql, cn, adOpenStatic
	%>
	<html>

	<head>
	<title>21cndns.com::: ::: 域名主机服务 ::: ::: 域名预注册表单查看</title>
	<META NAME="Author" CONTENT="^e^boy">
	<META NAME="HomePage" CONTENT="http://www.KeSee.com">
	<script language="JavaScript1.2">
	<!--
	function confirm_delete(){
		if (confirm("你确定要删除这个订单吗？")){
			return true;
		}
		return false;
	}
	//-->
	</script>
	<STYLE type=text/css>TD {
		FONT-FAMILY: "宋体"; FONT-SIZE: 9pt
	}
	A {
		COLOR: blue; FONT-FAMILY: "宋体"; TEXT-DECORATION: none
	}
	A:visited {
		COLOR: blue; FONT-FAMILY: 宋体; TEXT-DECORATION: none
	}
	A:hover {
		COLOR: #ff6600; FONT-FAMILY: "宋体"; TEXT-DECORATION: underline
	}
	.input {  border: 1px #000000 dotted; height: 17px; font-size: 9pt; line-height: 15px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px}
	</STYLE>
	</head>
	<div align=center>
	<hr>
	<%
	   rs.PageSize =1
	   Page = CLng(Request("Page"))
	   If Page < 1 Then Page = 1
	   If Page > rs.PageCount Then Page = rs.PageCount
	   ShowOnePage rs, Page
	%>
	<table width="100%">
	<hr>
	<tr>
	<td><form method="get" action="del.asp">
	<input TYPE="TEXT" Name="id" SIZE="3" value=<% =id %>>
	<input type="submit" name="del" value="删除此订单" onclick="return confirm_delete()">
	</form>
	</td>
	<td>
	<a href="password.asp">更改管理员名和管理密码</a>
	</td>
	<td align=right>
	<form Action="list.asp" Method="GET" id=form1 name=form1>
	<% 
	   If Page <> 1 Then
		  Response.Write "<A HREF=list.asp?Page=1>第一个</A>"
		  Response.Write "<A HREF=list.asp?Page=" & (Page-1) & ">上一个</A>"
	   End If
	   If Page <> rs.PageCount Then
		  Response.Write "<A HREF=list.asp?Page=" & (Page+1) & ">下一个</A>"
		  Session("ListPage") = Page + 1
		  Response.Write "<A HREF=list.asp?Page=" & rs.PageCount & ">最后一个</A>"
	   End If
	%>
	页数：<font COLOR="Red"><%=Page%>/<%=rs.PageCount%></font> 
	输入页数：<input TYPE="TEXT" Name="Page" SIZE="3"> 
	<input type="submit" name="Submit" value="确定" style="font-size:9pt">
	</tr>
	</td>
	</table>
	<%
	sub ShowOnePage(rs,page)
	rs.AbsolutePage = Page
	Response.Write"<center><p><strong><font size='3' color='#008080'>国际域名注册申请表</font></strong></p></center>"
	Response.Write "<table align=center>"
	Response.Write "<tr><td>0.编号：</td><td> "&rs.Fields(0)&"</td></tr>"
	Response.Write "<tr><td>1.域名：</td><td>"&rs.Fields(1) &"</td></tr>"
	Response.Write "<tr><td>2.姓名（中文）：</td><td>"&rs.Fields(2) &"</td></tr>"
	Response.Write "<tr><td>3.姓名（英文或拼音）：</td><td>"&rs.Fields(3) &"</td></tr>"
	Response.Write"<tr><td>4.注册组织名称（中文）：</td><td>"&rs.Fields(4) &"</td></tr>"
	Response.Write "<tr><td>5.注册组织名称（英文）：</td><td>"&rs.Fields(5) &"</td></tr>"
	Response.Write "<tr><td>6.通讯地址（中文）：</td><td>"&rs.Fields(6) &"</td></tr>"
	Response.Write "<tr><td>7.通讯地址（英文）：</td><td>"&rs.Fields(7) &"</td></tr>"
	Response.Write "<tr><td>8.城市（中文）：</td><td>"&rs.Fields(8) &"</td></tr>"
	Response.Write "<tr><td>9.城市（英文）：</td><td>"&rs.Fields(9) &"</td></tr>"
	Response.Write "<tr><td>10.省份（英文）：</td><td>"&rs.Fields(10) &"</td></tr>"
	Response.Write "<tr><td>11.省份（英文）：</td><td>"&rs.Fields(11) &"</td></tr>"
	Response.Write "<tr><td>12.国家（英文）：</td><td>"&rs.Fields(12) &"</td></tr>"
	Response.Write "<tr><td>13.邮政编码：</td><td>"&rs.Fields(13) &"</td></tr>"
	Response.Write "<tr><td>14.电话：</td><td>"&rs.Fields(14) &"</td></tr>"
	Response.Write "<tr><td>15.传真：</td><td>"&rs.Fields(15) &"</td></tr>"
	Response.Write "<tr><td>16.电子邮件：</td><td>"&rs.Fields(16) &"</td></tr>"
	Response.Write "<tr><td>17.主机类型：</td><td>"&rs.Fields(17) &"</td></tr>"
	Response.Write "<tr><td>18.注册年限：</td><td>"&rs.Fields(18) &"</td></tr>"
	Response.Write "<tr><td>19.付款方式：</td><td>"&rs.Fields(19) &"</td></tr>"
	Response.Write "<tr><td rowspan=2>20.如果您用自己的<br>dns服务器请您指明</td><td>主域名服务器信息：&nbsp;"&rs.Fields(20) &"</td></tr>"
	Response.Write "<tr><td>副域名服务器信息：&nbsp;"&rs.Fields(21) &"</td></tr>"
	Response.Write "<tr><td>21.客户的其它要求：</td><td>"&rs.Fields(22) &"</td></tr>"
	Response.Write "<tr><td>22.表单提交日期：</td><td>"&rs.Fields(23) &"</td></tr></table> "
	id=rs.Fields(0)
	rs.MoveNext 
	end sub
end if
%>

</form>
<font size="2">
<p>21cndns.com 域名查询系统&nbsp;&nbsp;&nbsp;&nbsp;制作人：^e^boy<br>Email:<a href="mailto:webmaster@kesee.com">eboy888@msn.com</a>&nbsp;&nbsp;&nbsp;&nbsp;主页：<a href="http://www.kesee.com">http://www.KeSee.com</a></p></font>
</div>
</body>
</html>
