<!-- #INCLUDE FILE = "config.asp" -->
<% 
if Session("listname") = "" or Session("listpwd") = "" then
	Response.Write "<center><font color=red>�Բ����㲻�ǹ���Ա�������޸����룡</font><br><a href=""login.asp"">���ȵ�½</a><p>21cndns.com ������ѯϵͳ&nbsp;&nbsp;&nbsp;&nbsp;�����ˣ�^e^boy<br>Email:<a href=""mailto:webmaster@kesee.com"">eboy888@msn.com</a>&nbsp;&nbsp;&nbsp;&nbsp;��ҳ��<a href=""http://www.kesee.com"">http://www.KeSee.com</a></p></font>"
else
%>
<html><head>
<title>21cndns.com::: ::: ������������ ::: ::: ����Ա���͹��������޸�</title>
<META NAME="Author" CONTENT="^e^boy">
<META NAME="HomePage" CONTENT="http://www.KeSee.com"></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<STYLE type=text/css>TD {
	FONT-FAMILY: "����"; FONT-SIZE: 9pt
}
A {
	COLOR: blue; FONT-FAMILY: "����"; TEXT-DECORATION: none
}
A:visited {
	COLOR: blue; FONT-FAMILY: ����; TEXT-DECORATION: none
}
A:hover {
	COLOR: #ff6600; FONT-FAMILY: "����"; TEXT-DECORATION: underline
}
.input {  border: 1px #000000 dotted; height: 17px; font-size: 9pt; line-height: 15px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px}
</STYLE>
</head>
<body>
<div align=center>
<form method="post" action="password.asp">
	<table cellSpacing="0" cellPadding="0" width="200" border="0">
      <tr>
        <td bgColor="#ff9900" style="font-family: ����; font-size: 9pt">
        <table cellSpacing="1" borderColorDark="#ffffff" cellPadding="0" width="100%" borderColorLight="#ff3333">
          <tr align="middle" bgColor="#ffe3bb">
            <td bgColor="#ffe3bb" height="20" style="font-family: ����; font-size: 9pt">
            <span class="L13"><b>����Ա���͹��������޸�</b></span></td>
          </tr>
          <tr bgColor="#fffbf7">
            <td style="font-family: ����; font-size: 9pt" align=center>
				<p>	�û�����<input name="name" size="20" style="font-size: 12" type="text">
				<br>
					�ܡ��룺<input name="pwd" size="20" style="font-size: 12" type="password">
				<br><input type="submit" name="Submit" value="����" style="font-size:9pt">
				</p>
			</td>
		  </tr>
		</table>
	</td>
  </tr>
</table>
</form>
</div>
<%
name = Request.Form("name")
pwd = Request.Form("pwd")
if name<>"" or pwd<>"" then
	StrSQL="UPDATE use SET name ='"& name &"', password = '"& pwd &"' WHERE id =1"
	cn.Execute (StrSQL)
	cn.close
	Session("listname") = name
	Session("listpwd") = pwd
	Response.Write "<center><font color=red>�޸�����ɹ�</font><br><a href=""list.asp"">����</a></center>"
end if
end if
%>
<font size="2">
<p align=center>21cndns.com ������ѯϵͳ&nbsp;&nbsp;&nbsp;&nbsp;�����ˣ�^e^boy<br>Email:<a href="mailto:webmaster@kesee.com">eboy888@msn.com</a>&nbsp;&nbsp;&nbsp;&nbsp;��ҳ��<a href="http://www.kesee.com">http://www.KeSee.com</a></p></font>