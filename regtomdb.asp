<!-- #INCLUDe FILE = "config.asp" -->
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
<HTML>
<HEAD>
<title>21cndns.com::: ::: ������������ ::: ::: ����Ԥע����ύ�ɹ�</title>
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
</HEAD>
<BODY>
<div align=center>
<%
domain		= request.form("����")
name		= request.form("���������ģ�")
name_en		= request.form("������Ӣ�Ļ�ƴ����")
org			= request.form("ע����֯���ƣ����ģ�")
org_en		= request.form("ע����֯���ƣ�Ӣ�ģ�")
address		= request.form("ͨѶ��ַ�����ģ�")
address_en	= request.form("ͨѶ��ַ��Ӣ�ģ�")
city		= request.form("���У����ģ�")
city_en		= request.form("���У�Ӣ�ģ�")
sheng		= request.form("ʡ�ݣ����ģ�")
sheng_en	= request.form("ʡ�ݣ�Ӣ�ģ�")
country		= request.form("���ң�Ӣ�ģ�")
zip			= request.form("��������")
phone		= request.form("�绰")
fax			= request.form("����")
email		= request.form("�����ʼ�")
hosting		= request.form("hosting")
regyear		= cint(request.form("regyear"))
payment		= request.form("payment")
dns1		= request.form("dns1")
dns2		= request.form("dns2")
remark		= request.form("remark")


if domain = "" then Response.Write"<p>�Բ�����������д������</p><a href=javascript:history.go(-1)>����</a>"
if city = "" then Response.Write "<p>�Բ�����������д�������ƣ�</p><a href=javascript:history.go(-1)>����</a>"
if country = "" then Response.Write "<p>�Բ�����������д�������ƣ�</p><a href=javascript:history.go(-1)>����</a>"
if not IsNumeric(zip) then Response.Write "<p>�Բ�������������������֣�</p><a href=javascript:history.go(-1)>����</a>"
if email = "" then Response.Write "<p>�Բ�����������д�����ʼ���</p><a href=javascript:history.go(-1)>����</a>"

if hosting = "==== ��ѡ�� ====" then hosting = "�ͻ�û�ж�������"

if domain <> "" and city <> "" and country <> "" and email <> "" and IsNumeric(zip) = True then
 strSQL = "INSERT INTO domainlist (����,���������ģ�,������Ӣ�ģ�,ע����֯���ƣ����ģ�,ע����֯���ƣ�Ӣ�ģ�,ͨѶ��ַ�����ģ�,ͨѶ��ַ��Ӣ�ģ�,���У����ģ�,���У�Ӣ�ģ�,ʡ�ݣ����ģ�,ʡ�ݣ�Ӣ�ģ�,���ң�Ӣ�ģ�,�ʱ�,�绰,����,�����ʼ�,������������,ע������,���ʽ,��������,��������,����Ҫ��,�������)  VALUES('"& domain &"','"& name &"','"& name_en &"' ,'"& org &"','"& org_en &"','"& address &"','"& address_en &"','"& city &"','"& city_en &"','"& sheng &"','"& sheng_en &"','"& country &"','"& zip &"','"& phone &"','"& fax &"','"& email &"','"& hosting &"','"& regyear &"','"& payment &"','"& dns1 &"','"& dns2 &"','"& remark &"','"& now &"')"
cn.Execute(strSQL)


'�ѿͻ���ע����Ϣ�����Լ��趨�������У����� config.asp �ļ�������������ݣ�
strMessage =              "               �� �� ע �� �� Ϣ " & vbCrLf & vbCrLf
strMessage = strMessage & "������                " & domain & vbCrLf & vbCrLf
strMessage = strMessage & "���������ģ���        " & name & vbCrLf & vbCrLf
strMessage = strMessage & "������Ӣ�ģ���        " & name_en & vbCrLf & vbCrLf
strMessage = strMessage & "ע����֯���ƣ����ģ���" & org & vbCrLf & vbCrLf
strMessage = strMessage & "ע����֯���ƣ�Ӣ�ģ���" & org_en & vbCrLf & vbCrLf
strMessage = strMessage & "ͨѶ��ַ�����ģ���    " & address & vbCrLf & vbCrLf
strMessage = strMessage & "ͨѶ��ַ��Ӣ�ģ���    " & address_en & vbCrLf & vbCrLf
strMessage = strMessage & "���У����ģ���        " & city & vbCrLf & vbCrLf
strMessage = strMessage & "���У�Ӣ�ģ���        " & city_en & vbCrLf & vbCrLf
strMessage = strMessage & "ʡ�ݣ����ģ���        " & sheng & vbCrLf & vbCrLf
strMessage = strMessage & "ʡ�ݣ�Ӣ�ģ���        " & sheng_en & vbCrLf & vbCrLf
strMessage = strMessage & "���ң�Ӣ�ģ���        " & country & vbCrLf & vbCrLf
strMessage = strMessage & "�ʱࣺ                " & zip & vbCrLf & vbCrLf
strMessage = strMessage & "�绰��                " & phone & vbCrLf & vbCrLf
strMessage = strMessage & "���棺                " & fax & vbCrLf & vbCrLf
strMessage = strMessage & "�����ʼ���            " & email & vbCrLf & vbCrLf
strMessage = strMessage & "�����������ͣ�        " & hosting & vbCrLf & vbCrLf
strMessage = strMessage & "ע�����ޣ�            " & regyear & vbCrLf & vbCrLf
strMessage = strMessage & "���ʽ��            " & payment & vbCrLf & vbCrLf
strMessage = strMessage & "����������            " & dns1 & vbCrLf & vbCrLf
strMessage = strMessage & "����������            " & dns2 & vbCrLf & vbCrLf
strMessage = strMessage & "�ͻ�������Ҫ��      " & remark & vbCrLf & vbCrLf
strMessage = strMessage & "���ύ���ڣ�        " & now & vbCrLf & vbCrLf
select case strMailMode
	case "jmail"		'Jmialģʽ�����ʼ�
		on error resume next
		Set objNewMail = Server.CreateObject("Jmail.smtpmail")'���������������������, ����Ҫ��װ Jmail ���
			objNewMail.ServerAddress = strMailServer
			objNewMail.AddRecipient strEmail
			objNewMail.Sender = strEmail
			objNewMail.Subject = "����ע���"
			objNewMail.body = strMessage
			objNewMail.priority = 0
			objNewMail.execute
	case "aspemail"		'ASPemailģʽ�����ʼ�
		on error resume next
		Set objNewMail = Server.CreateObject("Persits.MailSender")'���������������������, ����Ҫ��װ ASPemail ���
			objNewMail.Host = strMailServer
			objNewMail.From = strEmail 
			objNewMail.FromName = "�����й���������"
			objNewMail.AddAddress strEmail
			objNewMail.AddCC strEmail
			objNewMail.Subject = "����ע���"
			objNewMail.Body = strMessage
			objNewMail.Send
end select
set objNewMail = Nothing
%>
<table cellSpacing="0" cellPadding="0" width="580" border="0">
      <tr>
        <td bgColor="#ff9900" style="font-family: ����; font-size: 9pt">
        <table cellSpacing="1" borderColorDark="#ffffff" cellPadding="0" width="100%" borderColorLight="#ff3333">
          <tr align="middle" bgColor="#ffe3bb">
            <td bgColor="#ffe3bb" height="20" style="font-family: ����; font-size: 9pt">
            <span class="L13"><b>�� �� �� ��</b></span></td>
          </tr>
          <tr bgColor="#fffbf7">
            <td style="font-family: ����; font-size: 9pt">
				<p><br><font face="����" color="black">���ύ����Ϣ�Ѿ������� <% = strEmail %></font></p>
				<p>��ע�⣺ 
					1�����������ע��ֻ��Ԥע�ᣬֻ����21CNDNS.comȷ�����ĸ�������������Ż���ʽ��Ч���ڴ��ڼ䣬�����������ܻᱻ����ͨ��������������ע�ᡣ��Ȼ�ڴ�����£�21CNDNS.com��100%�˻����Ŀ�����������ǻ���ǿ�ҽ��������������Ǹ��<br>
					2��������ע���˵����ĺ�Ӣ�����Ʒǳ���Ҫ��������������Ч���޷�������ģ�������ע�������Ƶĸ��ģ���Ϊ���������������������д�� <br>
				<br>
				<font color="#ff0000"><b>������Ϣ��</b></font><br>
				һ�����л� ��Ϊ�˱�����������վ������ʹ�ã����������и����ע�����Ķ������ݡ���<br>
				<font color="#ff0000">1. </font><br>
				���������У����������ϲ�֧��<br>
				���ʡ����ţ�0791-43473295<br>
				���� �� �ˣ���֦�ˡ�ֱ����д�������ɡ�<br>
				��ע�⣺���յ����ƾ֤�Ĵ����ɨ���ȷ�ϵ���󶨵���Ч����<br>
				<br>
				<font color="#ff0000">2.</font> <br>
				���������У��������н�����Ϫ֧�� �����˵��ӻ�<br>
				���ʡ����ţ�4367 4220 7201 1079 389 <br>
				���� �� �ˣ���֦�ˡ�ֱ����д�������ɡ�<br>
				���������Ч���֤�������ؽ��а�������Ҫ���ڽ��п���<br>
				��ע�⣺���յ����ƾ֤�Ĵ����ɨ���ȷ�ϵ���󶨵���Ч����<br>
				<br>
				<font color="#ff0000">3.</font> <br>
				���������У�������Ϫ���ʵ���������<br>
				���ʡ����ţ�B04271 001252447822<br>
				���� �� �ˣ���֦�ˡ�ֱ����д�������ɡ�<br>
				��ע�⣺���յ����ƾ֤�Ĵ����ɨ���ȷ�ϵ���󶨵���Ч���� <br>
				<br>
				�����ʾֻ� ��Ϊ�˱�����������վ������ʹ�ã��������ʾֻ���ע�����Ķ������ݡ���<br>
				<br>
				����ϸ��ַ������ʡ��Ϫ�н���·��վ�ʵ��� 8 ������<br>
				���������룺������������<br>
				���� �� �ˣ���֦�� <br>
				��ע�⣺���յ�����վݵĴ����ɨ��󶨵���Ч����
				��</p>
				<center><a href="http://www.21cndns.com/">����</a></center>
			</td>
		  </tr>
		</table>
	</td>
  </tr>
</table>
<% end if %>
<font size="2">
<p>21cndns.com ������ѯϵͳ&nbsp;&nbsp;&nbsp;&nbsp;�����ˣ�^e^boy<br>Email:<a href="mailto:webmaster@kesee.com">eboy888@msn.com</a>&nbsp;&nbsp;&nbsp;&nbsp;��ҳ��<a href="http://www.kesee.com">http://www.KeSee.com</a></p></font>
</div>
</BODY>
</HTML>