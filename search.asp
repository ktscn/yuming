<!--
################################################################################
#  �����й�������ѯϵͳ���ڶ��棩
#
#  ��Ȩ����: �����й�����������
#
#  ������  : ^e^boy
#
#  ��ҳ��ַ: http://www.21cndns.com/    �����й�����������
#	     http://www.kesee.com/      ��������           
#           
#  21cndns.com ������������ ����ʵ�� �������� 
#
#  �뱣�����ϰ�Ȩ��Ϣ��лл������
#  ��ʹ�����������ʲô��������� http://www.21cndns.com/kesee/guestbook/ ����
################################################################################
-->
<%@ Language=VBScript %>
<HTML><HEAD>
<title>21cndns.com ������ѯϵͳ</title>
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
on error resume next
Dim Retrieval,Domain,TakenHTML,pagebefore,pageafter,zyj

Private Function bytes2BSTR(vIn)
  Dim i, ThischrCode, NextchrCode
  strReturn = ""
For i = 1 To LenB(vIn)
   ThischrCode = AscB(MidB(vIn, i, 1))
  If ThischrCode < &H80 Then
     strReturn = strReturn & Chr(ThischrCode)
  Else
    NextchrCode = AscB(MidB(vIn, i + 1, 1))
    strReturn = strReturn & Chr(CLng(ThischrCode) * &H100 + CInt(NextchrCode))
     i = i + 1
  End If
Next
    bytes2BSTR = strReturn
End Function

Function GetURL(url)
    Set Retrieval = Server.CreateObject("Microsoft.XMLHTTP")
          With Retrieval
          .Open "GET", url, False, "", ""
          .Send
          GetURL = .ResponseText
		  GetURL = bytes2BSTR(.Responsebody)
          End With
    Set Retrieval = Nothing
End Function
Domain = Replace(Request.Form("domain"),"www.","") & "." & Request.Form("ext")
if Domain=".com" or Request.Form("domain")="" then
Response.Write ("<script>alert('������ʲô������д�ˣ�û����д�����ɣ�');javascript:history.back(1)</script>")
response.end
end if
select case Request.Form("ext")
	case "biz"
		TakenHTML = GetURL("http://www.onlinenic.com/cgi-bin/english/biz_whois.cgi?domain=" &Domain)
		pageafter = "<P>"
		pagebefore = "</tr>"
	case "info"
		TakenHTML = GetURL("http://www.onlinenic.com/cgi-bin/english/info_whois.cgi?domain=" &Domain)
		pageafter = "<pre>"
		pagebefore = "</pre>"
	case "tv"
		TakenHTML = GetURL("http://www.onlinenic.com/cgi-bin/english/tv_whois.cgi?domain=" &Domain)
		pageafter = "<pre>"
		pagebefore = "</pre>"
	case "cc"
		TakenHTML = GetURL("http://whois.nic.cc/cgi-bin/globalwhois.pl?DOMAIN=" &Domain)
		pageafter = "<TD VALIGN=top>"
		pagebefore = "<!-- begin included footer -->"
	case else
		if InStr(Request.Form("ext"),"cn")<>0 then
			TakenHTML = GetURL("http://nm.cnnic.net.cn/cgi-bin/srdp_new.cgi?domain=" &Domain)
			pageafter = "<TABLE ALIGN=""center"" CELLSPACING=""0"" BORDER=""0"" CELLPADDING=""0"""
			pagebefore = "</TABLE>"
		else
			TakenHTML = GetURL("http://www.china-channel.com/checkdomain.asp?action=whois&domain=" & Domain)
			pageafter = "<pre>"
			pagebefore = "</pre>"
		end if
end select
'TakenHTML = GetURL("http://www.internic.net/cgi/whois?whois_nic="&Domain&"&type=domain")
'TakenHTML = GetURL("http://www.onlinenic.com/cgi-bin/english/biz_whois.cgi?domain=" &Domain)
'TakenHTML = GetURL("http://www.onlinenic.com/cgi-bin/chinese/info_whois.cgi?domain=" &Domain)
'TakenHTML = GetURL("http://www.onlinenic.com/cgi-bin/english/biz_whois.cgi?domain=" &Domain)
'TakenHTML = GetURL("http://www.china-channel.com/checkdomain.asp?action=whois&domain=" & Domain)
'whois.networksolutions.com
'#################################��ѯ��������ϸע������Ĵ��뿪ʼ####################################
Function dowith()
	Dim tempcontent
	Dim pagestart
	Dim pageend
	tempcontent = TakenHTML
	pagestart = InStr(1,tempcontent, pageafter,1)
	If pagestart = 0 Then
		dowith = "Error"
		Exit Function
	Else
		pagestart = pagestart + Len(pageafter) + 1
		pageend = InStr(pagestart, tempcontent, pagebefore,1)
		If pageend = 0 Then
			dowith = "Error"
			d_exsit = 3
			Exit Function
		Else
			pageend = pageend - pagestart '�õ����ݳ���
			tempcontent = Mid(tempcontent, pagestart, pageend)
		End If
	End If    
'	Set pageregexp = New RegExp
'	pageregexp.Global = True
'	pageregexp.Pattern = "<[^>]*>"
'	tempcontent = pageregexp.Replace(tempcontent, "")
'	Set pageregexp = Nothing
	dowith = tempcontent
	if Request.Form("ext") <> "cc" then	dowith = "<pre>" + dowith + "</pre>"
	if InStr(Request.Form("ext"),"cn") <> 0 then dowith = "<TABLE ALIGN=" + dowith + "</TABLE>"
End Function
'#################################��ѯ��������ϸע������Ĵ������####################################
%>
<table cellSpacing="0" cellPadding="0" width="590" border="0">
  <tr>
    <td bgColor="#ff9900" style="font-family: ����; font-size: 9pt">
    <table cellSpacing="1" borderColorDark="#ffffff" cellPadding="0" width="100%" borderColorLight="#ff3333">
      <tr>
        <td bgColor="#ffe3bb" height="20" style="font-family: ����; font-size: 9pt">
        &nbsp;<img src="images/site1.gif" width="15" height="11"><b>������ѯ</b></td>
      </tr>
      <tr bgColor="#fffbf7">
        <td bgColor="#fffbf7" height="20" style="font-family: ����; font-size: 9pt">
        <img src="images/site.gif" width="15" height="11">����������ѯ�������������޴�,�����ٶȽ����������ύ��ѯ���Ժ�&nbsp;&nbsp;|<a href="http://www.21cndns.com/domain.htm" style="font-family: ����; text-decoration: none">����ע��</a>|<a href="http://www.21cndns.com/search.asp" style=" font-family: ����; text-decoration: none">������ѯ</a>|<a href="http://www.21cndns.com" style="font-family: ����; text-decoration: none">������ҳ</a>|
        </td>
      </tr>
      <tr bgColor="#fffbf7">
        <td bgColor="#fffbf7" style="font-family: ����; font-size: 9pt">
        <table cellSpacing="4" width="100%" border="0">
          <tr>
            <td style="font-family: ����; font-size: 9pt">
            <table cellSpacing="2" width="580" align="center" border="0">
              <tr>
                <td colSpan="5" style="font-family: ����; font-size: 9pt">
				<% if InStr(TakenHTML,"No entries") > 1 then
    
					Response.Write Domain & "������,�����²�ѯ��<br><br>"
				else
				    if InStr(TakenHTML,"No match") > 1 or InStr(TakenHTML,"Register system prompt")>1 or InStr(TakenHTML,"not been registered yet")>1 then %>
						<font face="����" size="2"><b><font color="red">ף������</font>
						<br>
						����ע������� [ <font color="red"><% = Domain %> </font>]��û�б�ע�� <br>
						Ŀǰ.com�����ռ䣬��ע�������������ÿ10��һ�����ٶ��ڼ��١�<br>
						<a href="reg.asp?domain=<% = Domain %>" style="font-family: ����; text-decoration: none">
						����������ע����������</a></font>
				</td>
              </tr>
            </table>
            </td>
          </tr>
        </table>
		</td>
      </tr>
    </table>
    </td>
  </tr>
</table>
					<% else
						if dowith() = "Error" then
							zyj = "����"
						else
							zyj = "�����Ǵ���������ϸע����Ϣ" %>
						<font size="2">�ź���<strong>
						[<font color="#ff0000"><b> <% =Domain %> </b></font>]</strong> 
						�Ѿ���������˾�����ע�ᡣ�����޷�ע���������<br>
						</font>
						<% end if %>
��				</font><table cellSpacing="2" width="100%" align="center" border="0">
                   <tr>
                      <td colSpan="5" style="font-family: ����; font-size: 9pt">
					  <form method="post" action="search.asp" name="checkdomain" id=Form1>
					  <script language=javascript1.2 src="scan.js"></script>
						<b>������Ҫ��ѯ��������</b>www.<input type="text" name="domain" id=Text1>
						<select name="ext" id=Select1>
						<option value="com" selected>.com</option>
						<option value="net">.net</option>
						<option value="org">.org</option>
						<option value="com.cn">.com.cn</option>
						<option value="net.cn">.net.cn</option>
						<option value="org.cn">.org.cn</option>
						<option value="cc">.cc</option>
						<option value="tv">.tv</option>
						<option value="biz">.biz</option>
						<option value="info">.info</option>
						</select>
						<input type="submit" name="Submit" value="��ѯ" id=Submit1 onClick = "return submitchecken();">
					</form>
                      </font></td>
                    </tr>
                </table>
                </td>
              </tr>
            </table>
            </td>
          </tr>
        </table>
        </td>
      </tr>
	  <%' if d_exsit<>3 then %>
      <tr bgColor="#fffbf7">
        <td bgColor="#ffe3bb" height="20" style="font-family: ����; font-size: 9pt">
        <b>
        <img src="images/site1.gif" width="15" height="11"><% = zyj %></td>
      </tr>
      <tr bgColor="#fffbf7">
        <td bgColor="#fffbf7" style="font-family: ����; font-size: 9pt">
		<% if Request.Form("show") = "1" then
		Response.Write dowith() %></font>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
		<% else 
			if dowith()<>"Error" then%>
        <form action="search.asp" method="post">
          <input type="hidden" value="<% =Request.Form("domain") %>" name="domain">
          <input type="hidden" value="<% =Request.Form("ext") %>" name="ext">
          <input type="hidden" value="1" name="show">
          <p><input type="submit" value="�鿴������Ϣ"> </p>
        </form>
			<% else 
				Response.Write "<font color=""red""><p><b>�޷����ӵ�����������!�����²�ѯ��<br>���ǰѴ�����Ϣ�������ҵ�����<a href=""mailto:eboy888@msn.com"">eboy888@msn.com</a><br>лл����ʹ�ã�</b></p></font>"
			   end if%>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
	
<%
		end if
	end if
end if

%> 
<font size="2">
<p>21cndns.com ������ѯϵͳ&nbsp;&nbsp;&nbsp;&nbsp;�����ˣ�^e^boy<br>Email:<a href="mailto:webmaster@kesee.com">eboy888@msn.com</a>&nbsp;&nbsp;&nbsp;&nbsp;��ҳ��<a href="http://www.kesee.com">http://www.KeSee.com</a></p></font></div>
</BODY>
</HTML>