<!-- #INCLUDE FILE = config.asp -->
<%
'################################################################################
'#  �����й�������ѯϵͳ���ڶ��棩
'#
'#  ��Ȩ����: �����й�����������
'#
'#  ������  : ^e^boy
'#
'#  ��ҳ��ַ: http://www.21cndns.com/    �����й�����������
'#		      http://www.kesee.com/      ��������           
'#           
'#  21cndns.com ������������ ����ʵ�� �������� 
'#
'#  �뱣�����ϰ�Ȩ��Ϣ��лл������
'#  ��ʹ�����������ʲô��������� http://www.21cndns.com/kesee/guestbook/ ����
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
<HTML><HEAD><TITLE><title>21cndns.com::: ::: ������������ ::: ::: ������ʾ</title>
<META NAME="Author" CONTENT="^e^boy">
<META NAME="HomePage" CONTENT="http://www.KeSee.com">
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
	<BODY>
	<table cellSpacing="0" cellPadding="0" width="580" border="0">
      <tr>
        <td bgColor="#ff9900" style="font-family: ����; font-size: 9pt">
        <table cellSpacing="1" borderColorDark="#ffffff" cellPadding="0" width="100%" borderColorLight="#ff3333">
          <tr align="middle" bgColor="#ffe3bb">
            <td bgColor="#ffe3bb" height="20" style="font-family: ����; font-size: 9pt">
            <span class="L13"><b>�� �� �� ʾ</b></span></td>
          </tr>
          <tr bgColor="#fffbf7">
            <td style="font-family: ����; font-size: 9pt" align=center>
				<font color=red>�û������������</font>
				<p><a href='javascript:history.go(-1)'>����</a></p>
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