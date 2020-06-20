<!--
################################################################################
#  世纪中国域名查询系统（第二版）
#
#  版权所有: 世纪中国虚拟主机网
#
#  制作人  : ^e^boy
#
#  主页地址: http://www.21cndns.com/    世纪中国虚拟主机网
#	     http://www.kesee.com/      可视网络           
#           
#  21cndns.com 域名主机服务 给您实惠 让您放心 
#
#  请保留以上版权信息，谢谢合作！
#  在使用中如果遇到什么问题可以来 http://www.21cndns.com/kesee/guestbook/ 留言
################################################################################
-->
<%@ Language=VBScript %>
<HTML><HEAD>
<title>21cndns.com 域名查询系统</title>
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
Response.Write ("<script>alert('看看您什么忘记填写了？没有填写域名吧？');javascript:history.back(1)</script>")
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
'#################################查询域名的详细注册情况的代码开始####################################
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
			pageend = pageend - pagestart '得到内容长度
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
'#################################查询域名的详细注册情况的代码结束####################################
%>
<table cellSpacing="0" cellPadding="0" width="590" border="0">
  <tr>
    <td bgColor="#ff9900" style="font-family: 宋体; font-size: 9pt">
    <table cellSpacing="1" borderColorDark="#ffffff" cellPadding="0" width="100%" borderColorLight="#ff3333">
      <tr>
        <td bgColor="#ffe3bb" height="20" style="font-family: 宋体; font-size: 9pt">
        &nbsp;<img src="images/site1.gif" width="15" height="11"><b>域名查询</b></td>
      </tr>
      <tr bgColor="#fffbf7">
        <td bgColor="#fffbf7" height="20" style="font-family: 宋体; font-size: 9pt">
        <img src="images/site.gif" width="15" height="11">由于域名查询服务器访问量巨大,所以速度较慢，请您提交查询后稍候。&nbsp;&nbsp;|<a href="http://www.21cndns.com/domain.htm" style="font-family: 宋体; text-decoration: none">域名注册</a>|<a href="http://www.21cndns.com/search.asp" style=" font-family: 宋体; text-decoration: none">域名查询</a>|<a href="http://www.21cndns.com" style="font-family: 宋体; text-decoration: none">返回首页</a>|
        </td>
      </tr>
      <tr bgColor="#fffbf7">
        <td bgColor="#fffbf7" style="font-family: 宋体; font-size: 9pt">
        <table cellSpacing="4" width="100%" border="0">
          <tr>
            <td style="font-family: 宋体; font-size: 9pt">
            <table cellSpacing="2" width="580" align="center" border="0">
              <tr>
                <td colSpan="5" style="font-family: 宋体; font-size: 9pt">
				<% if InStr(TakenHTML,"No entries") > 1 then
    
					Response.Write Domain & "出错了,请重新查询！<br><br>"
				else
				    if InStr(TakenHTML,"No match") > 1 or InStr(TakenHTML,"Register system prompt")>1 or InStr(TakenHTML,"not been registered yet")>1 then %>
						<font face="宋体" size="2"><b><font color="red">祝贺您：</font>
						<br>
						您想注册的域名 [ <font color="red"><% = Domain %> </font>]还没有被注册 <br>
						目前.com域名空间，可注册的域名正在以每10秒一个的速度在减少。<br>
						<a href="reg.asp?domain=<% = Domain %>" style="font-family: 宋体; text-decoration: none">
						点击这里，立即注册您的域名</a></font>
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
							zyj = "错误！"
						else
							zyj = "以下是此域名的详细注册信息" %>
						<font size="2">遗憾！<strong>
						[<font color="#ff0000"><b> <% =Domain %> </b></font>]</strong> 
						已经被其他公司或个人注册。您将无法注册该域名。<br>
						</font>
						<% end if %>
　				</font><table cellSpacing="2" width="100%" align="center" border="0">
                   <tr>
                      <td colSpan="5" style="font-family: 宋体; font-size: 9pt">
					  <form method="post" action="search.asp" name="checkdomain" id=Form1>
					  <script language=javascript1.2 src="scan.js"></script>
						<b>请输入要查询的域名：</b>www.<input type="text" name="domain" id=Text1>
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
						<input type="submit" name="Submit" value="查询" id=Submit1 onClick = "return submitchecken();">
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
        <td bgColor="#ffe3bb" height="20" style="font-family: 宋体; font-size: 9pt">
        <b>
        <img src="images/site1.gif" width="15" height="11"><% = zyj %></td>
      </tr>
      <tr bgColor="#fffbf7">
        <td bgColor="#fffbf7" style="font-family: 宋体; font-size: 9pt">
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
          <p><input type="submit" value="查看域名信息"> </p>
        </form>
			<% else 
				Response.Write "<font color=""red""><p><b>无法链接到域名服务器!请重新查询。<br>或是把错误信息反馈到我的邮箱<a href=""mailto:eboy888@msn.com"">eboy888@msn.com</a><br>谢谢您的使用！</b></p></font>"
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
<p>21cndns.com 域名查询系统&nbsp;&nbsp;&nbsp;&nbsp;制作人：^e^boy<br>Email:<a href="mailto:webmaster@kesee.com">eboy888@msn.com</a>&nbsp;&nbsp;&nbsp;&nbsp;主页：<a href="http://www.kesee.com">http://www.KeSee.com</a></p></font></div>
</BODY>
</HTML>