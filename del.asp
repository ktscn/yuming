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
<%
id = Request.QueryString("id")
if id <> "" or Session("listname") <> "" or Session("listpwd") <> "" then
	StrSQL="Delete * from domainlist where 编号 =" & id
	cn.Execute StrSQL
	cn.close
	Response.Redirect "list.asp?page=" & CLng(Session("ListPage"))
else
	Response.Write "<center><font color=red>对不起，你不是管理员，不能删除订单！</font><br><a href=""login.asp"">请先登陆</a><p>21cndns.com 域名查询系统&nbsp;&nbsp;&nbsp;&nbsp;制作人：^e^boy<br>Email:<a href=""mailto:webmaster@kesee.com"">eboy888@msn.com</a>&nbsp;&nbsp;&nbsp;&nbsp;主页：<a href=""http://www.kesee.com"">http://www.KeSee.com</a></p></font>"
end if
%>