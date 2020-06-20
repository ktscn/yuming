<!-- #INCLUDE FILE = config.asp -->
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
Response.Expires = 0 
pwd = Request.Form("pwd")
name = Request.Form("name")
Set rs = Server.CreateObject("ADODB.Recordset")
strSQL = "SELECT * FROM use WHERE id=1"
Set rs = cn.Execute(strSQL)
if rs.Bof or rs.Eof or pwd <> rs("password") then %>
<DIV ALIGN =CENTER>
<HTML><HEAD><TITLE><title>21cndns.com::: ::: 域名主机服务 ::: ::: 出错提示</title>
<META NAME="Author" CONTENT="^e^boy">
<META NAME="HomePage" CONTENT="http://www.KeSee.com">
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
	<BODY>
	<table cellSpacing="0" cellPadding="0" width="580" border="0">
      <tr>
        <td bgColor="#ff9900" style="font-family: 宋体; font-size: 9pt">
        <table cellSpacing="1" borderColorDark="#ffffff" cellPadding="0" width="100%" borderColorLight="#ff3333">
          <tr align="middle" bgColor="#ffe3bb">
            <td bgColor="#ffe3bb" height="20" style="font-family: 宋体; font-size: 9pt">
            <span class="L13"><b>出 错 提 示</b></span></td>
          </tr>
          <tr bgColor="#fffbf7">
            <td style="font-family: 宋体; font-size: 9pt" align=center>
				<font color=red>用户名或密码错误</font>
				<p><a href='javascript:history.go(-1)'>返回</a></p>
			</td>
		  </tr>
		</table>
	</td>
  </tr>
</table>
<%
else
	Session("listpwd") = rs("password")
	Session("listname") = rs("name")
	Response.Redirect "list.asp"
end if
%>
</div>
<body>
<html>