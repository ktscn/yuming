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
<%
id = Request.QueryString("id")
if id <> "" or Session("listname") <> "" or Session("listpwd") <> "" then
	StrSQL="Delete * from domainlist where ��� =" & id
	cn.Execute StrSQL
	cn.close
	Response.Redirect "list.asp?page=" & CLng(Session("ListPage"))
else
	Response.Write "<center><font color=red>�Բ����㲻�ǹ���Ա������ɾ��������</font><br><a href=""login.asp"">���ȵ�½</a><p>21cndns.com ������ѯϵͳ&nbsp;&nbsp;&nbsp;&nbsp;�����ˣ�^e^boy<br>Email:<a href=""mailto:webmaster@kesee.com"">eboy888@msn.com</a>&nbsp;&nbsp;&nbsp;&nbsp;��ҳ��<a href=""http://www.kesee.com"">http://www.KeSee.com</a></p></font>"
end if
%>