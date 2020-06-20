<%@ Language=VBScript %>
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
if Session("listpwd") = "" or Session("listname") = "" then%>
<html><head>
<title><title>21cndns.com::: ::: 域名主机服务 ::: ::: 域名预注册表单提交成功</title>
<META NAME="Author" CONTENT="^e^boy">
<META NAME="HomePage" CONTENT="http://www.KeSee.com"></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
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
<body>
<div align=center>
<form method="post" action="listcheck.asp">
	<table cellSpacing="0" cellPadding="0" width="200" border="0">
      <tr>
        <td bgColor="#ff9900" style="font-family: 宋体; font-size: 9pt">
        <table cellSpacing="1" borderColorDark="#ffffff" cellPadding="0" width="100%" borderColorLight="#ff3333">
          <tr align="middle" bgColor="#ffe3bb">
            <td bgColor="#ffe3bb" height="20" style="font-family: 宋体; font-size: 9pt">
            <span class="L13"><b>域名注册订单管理入口</b></span></td>
          </tr>
          <tr bgColor="#fffbf7">
            <td style="font-family: 宋体; font-size: 9pt" align=center>
				<p>	用户名：<input name="name" size="20" style="font-size: 12" type="text">
				<br>
					密　码：<input name="pwd" size="20" style="font-size: 12" type="password">
				<br><input type="submit" name="Submit" value="进入" style="font-size:9pt">
				</p>
			</td>
		  </tr>
		</table>
	</td>
  </tr>
</table>
</form>
<font size="2">
<p>21cndns.com 域名查询系统&nbsp;&nbsp;&nbsp;&nbsp;制作人：^e^boy<br>Email:<a href="mailto:webmaster@kesee.com">eboy888@msn.com</a>&nbsp;&nbsp;&nbsp;&nbsp;主页：<a href="http://www.kesee.com">http://www.KeSee.com</a></p></font>
</div>
<%Response.end
else
	Response.Redirect "list.asp"
end if
%>