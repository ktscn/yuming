<%@ Language=VBScript %>
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
if Session("listpwd") = "" or Session("listname") = "" then%>
<html><head>
<title><title>21cndns.com::: ::: ������������ ::: ::: ����Ԥע����ύ�ɹ�</title>
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
<form method="post" action="listcheck.asp">
	<table cellSpacing="0" cellPadding="0" width="200" border="0">
      <tr>
        <td bgColor="#ff9900" style="font-family: ����; font-size: 9pt">
        <table cellSpacing="1" borderColorDark="#ffffff" cellPadding="0" width="100%" borderColorLight="#ff3333">
          <tr align="middle" bgColor="#ffe3bb">
            <td bgColor="#ffe3bb" height="20" style="font-family: ����; font-size: 9pt">
            <span class="L13"><b>����ע�ᶩ���������</b></span></td>
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
<font size="2">
<p>21cndns.com ������ѯϵͳ&nbsp;&nbsp;&nbsp;&nbsp;�����ˣ�^e^boy<br>Email:<a href="mailto:webmaster@kesee.com">eboy888@msn.com</a>&nbsp;&nbsp;&nbsp;&nbsp;��ҳ��<a href="http://www.kesee.com">http://www.KeSee.com</a></p></font>
</div>
<%Response.end
else
	Response.Redirect "list.asp"
end if
%>