<!-- #INCLUDE FILE = "config.asp" -->
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
<!--#include file="adovbs.inc" -->
<%
public id
if Session("listpwd") = "" or Session("listname") = "" then
	Response.Redirect "login.asp"
else
	Set rs = Server.CreateObject("ADODB.Recordset")
	sql = "select * from domainlist order by ���"
	rs.Open sql, cn, adOpenStatic
	%>
	<html>

	<head>
	<title>21cndns.com::: ::: ������������ ::: ::: ����Ԥע����鿴</title>
	<META NAME="Author" CONTENT="^e^boy">
	<META NAME="HomePage" CONTENT="http://www.KeSee.com">
	<script language="JavaScript1.2">
	<!--
	function confirm_delete(){
		if (confirm("��ȷ��Ҫɾ�����������")){
			return true;
		}
		return false;
	}
	//-->
	</script>
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
	<input type="submit" name="del" value="ɾ���˶���" onclick="return confirm_delete()">
	</form>
	</td>
	<td>
	<a href="password.asp">���Ĺ���Ա���͹�������</a>
	</td>
	<td align=right>
	<form Action="list.asp" Method="GET" id=form1 name=form1>
	<% 
	   If Page <> 1 Then
		  Response.Write "<A HREF=list.asp?Page=1>��һ��</A>�@"
		  Response.Write "<A HREF=list.asp?Page=" & (Page-1) & ">��һ��</A>�@"
	   End If
	   If Page <> rs.PageCount Then
		  Response.Write "<A HREF=list.asp?Page=" & (Page+1) & ">��һ��</A>�@"
		  Session("ListPage") = Page + 1
		  Response.Write "<A HREF=list.asp?Page=" & rs.PageCount & ">���һ��</A>�@"
	   End If
	%>
	ҳ����<font COLOR="Red"><%=Page%>/<%=rs.PageCount%></font> 
	����ҳ����<input TYPE="TEXT" Name="Page" SIZE="3"> 
	<input type="submit" name="Submit" value="ȷ��" style="font-size:9pt">
	</tr>
	</td>
	</table>
	<%
	sub ShowOnePage(rs,page)
	rs.AbsolutePage = Page
	Response.Write"<center><p><strong><font size='3' color='#008080'>��������ע�������</font></strong></p></center>"
	Response.Write "<table align=center>"
	Response.Write "<tr><td>0.��ţ�</td><td> "&rs.Fields(0)&"</td></tr>"
	Response.Write "<tr><td>1.������</td><td>"&rs.Fields(1) &"</td></tr>"
	Response.Write "<tr><td>2.���������ģ���</td><td>"&rs.Fields(2) &"</td></tr>"
	Response.Write "<tr><td>3.������Ӣ�Ļ�ƴ������</td><td>"&rs.Fields(3) &"</td></tr>"
	Response.Write"<tr><td>4.ע����֯���ƣ����ģ���</td><td>"&rs.Fields(4) &"</td></tr>"
	Response.Write "<tr><td>5.ע����֯���ƣ�Ӣ�ģ���</td><td>"&rs.Fields(5) &"</td></tr>"
	Response.Write "<tr><td>6.ͨѶ��ַ�����ģ���</td><td>"&rs.Fields(6) &"</td></tr>"
	Response.Write "<tr><td>7.ͨѶ��ַ��Ӣ�ģ���</td><td>"&rs.Fields(7) &"</td></tr>"
	Response.Write "<tr><td>8.���У����ģ���</td><td>"&rs.Fields(8) &"</td></tr>"
	Response.Write "<tr><td>9.���У�Ӣ�ģ���</td><td>"&rs.Fields(9) &"</td></tr>"
	Response.Write "<tr><td>10.ʡ�ݣ�Ӣ�ģ���</td><td>"&rs.Fields(10) &"</td></tr>"
	Response.Write "<tr><td>11.ʡ�ݣ�Ӣ�ģ���</td><td>"&rs.Fields(11) &"</td></tr>"
	Response.Write "<tr><td>12.���ң�Ӣ�ģ���</td><td>"&rs.Fields(12) &"</td></tr>"
	Response.Write "<tr><td>13.�������룺</td><td>"&rs.Fields(13) &"</td></tr>"
	Response.Write "<tr><td>14.�绰��</td><td>"&rs.Fields(14) &"</td></tr>"
	Response.Write "<tr><td>15.���棺</td><td>"&rs.Fields(15) &"</td></tr>"
	Response.Write "<tr><td>16.�����ʼ���</td><td>"&rs.Fields(16) &"</td></tr>"
	Response.Write "<tr><td>17.�������ͣ�</td><td>"&rs.Fields(17) &"</td></tr>"
	Response.Write "<tr><td>18.ע�����ޣ�</td><td>"&rs.Fields(18) &"</td></tr>"
	Response.Write "<tr><td>19.���ʽ��</td><td>"&rs.Fields(19) &"</td></tr>"
	Response.Write "<tr><td rowspan=2>20.��������Լ���<br>dns����������ָ��</td><td>��������������Ϣ��&nbsp;"&rs.Fields(20) &"</td></tr>"
	Response.Write "<tr><td>��������������Ϣ��&nbsp;"&rs.Fields(21) &"</td></tr>"
	Response.Write "<tr><td>21.�ͻ�������Ҫ��</td><td>"&rs.Fields(22) &"</td></tr>"
	Response.Write "<tr><td>22.���ύ���ڣ�</td><td>"&rs.Fields(23) &"</td></tr></table> "
	id=rs.Fields(0)
	rs.MoveNext 
	end sub
end if
%>

</form>
<font size="2">
<p>21cndns.com ������ѯϵͳ&nbsp;&nbsp;&nbsp;&nbsp;�����ˣ�^e^boy<br>Email:<a href="mailto:webmaster@kesee.com">eboy888@msn.com</a>&nbsp;&nbsp;&nbsp;&nbsp;��ҳ��<a href="http://www.kesee.com">http://www.KeSee.com</a></p></font>
</div>
</body>
</html>
