<!-- #INCLUDe FILE = "config.asp" -->
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
<HTML>
<HEAD>
<title>21cndns.com::: ::: 域名主机服务 ::: ::: 域名预注册表单提交成功</title>
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
domain		= request.form("域名")
name		= request.form("姓名（中文）")
name_en		= request.form("姓名（英文或拼音）")
org			= request.form("注册组织名称（中文）")
org_en		= request.form("注册组织名称（英文）")
address		= request.form("通讯地址（中文）")
address_en	= request.form("通讯地址（英文）")
city		= request.form("城市（中文）")
city_en		= request.form("城市（英文）")
sheng		= request.form("省份（中文）")
sheng_en	= request.form("省份（英文）")
country		= request.form("国家（英文）")
zip			= request.form("邮政编码")
phone		= request.form("电话")
fax			= request.form("传真")
email		= request.form("电子邮件")
hosting		= request.form("hosting")
regyear		= cint(request.form("regyear"))
payment		= request.form("payment")
dns1		= request.form("dns1")
dns2		= request.form("dns2")
remark		= request.form("remark")


if domain = "" then Response.Write"<p>对不起，您必须填写域名！</p><a href=javascript:history.go(-1)>返回</a>"
if city = "" then Response.Write "<p>对不起，您必须填写城市名称！</p><a href=javascript:history.go(-1)>返回</a>"
if country = "" then Response.Write "<p>对不起，您必须填写国家名称！</p><a href=javascript:history.go(-1)>返回</a>"
if not IsNumeric(zip) then Response.Write "<p>对不起，邮政编码必须是数字！</p><a href=javascript:history.go(-1)>返回</a>"
if email = "" then Response.Write "<p>对不起，您必须填写电子邮件！</p><a href=javascript:history.go(-1)>返回</a>"

if hosting = "==== 请选择 ====" then hosting = "客户没有订购主机"

if domain <> "" and city <> "" and country <> "" and email <> "" and IsNumeric(zip) = True then
 strSQL = "INSERT INTO domainlist (域名,姓名（中文）,姓名（英文）,注册组织名称（中文）,注册组织名称（英文）,通讯地址（中文）,通讯地址（英文）,城市（中文）,城市（英文）,省份（中文）,省份（英文）,国家（英文）,邮编,电话,传真,电子邮件,租用主机类型,注册年限,付款方式,主服务器,副服务器,其它要求,填表日期)  VALUES('"& domain &"','"& name &"','"& name_en &"' ,'"& org &"','"& org_en &"','"& address &"','"& address_en &"','"& city &"','"& city_en &"','"& sheng &"','"& sheng_en &"','"& country &"','"& zip &"','"& phone &"','"& fax &"','"& email &"','"& hosting &"','"& regyear &"','"& payment &"','"& dns1 &"','"& dns2 &"','"& remark &"','"& now &"')"
cn.Execute(strSQL)


'把客户的注册信息发到自己设定的邮箱中，请在 config.asp 文件中设置相关内容！
strMessage =              "               客 户 注 册 信 息 " & vbCrLf & vbCrLf
strMessage = strMessage & "域名：                " & domain & vbCrLf & vbCrLf
strMessage = strMessage & "姓名（中文）：        " & name & vbCrLf & vbCrLf
strMessage = strMessage & "姓名（英文）：        " & name_en & vbCrLf & vbCrLf
strMessage = strMessage & "注册组织名称（中文）：" & org & vbCrLf & vbCrLf
strMessage = strMessage & "注册组织名称（英文）：" & org_en & vbCrLf & vbCrLf
strMessage = strMessage & "通讯地址（中文）：    " & address & vbCrLf & vbCrLf
strMessage = strMessage & "通讯地址（英文）：    " & address_en & vbCrLf & vbCrLf
strMessage = strMessage & "城市（中文）：        " & city & vbCrLf & vbCrLf
strMessage = strMessage & "城市（英文）：        " & city_en & vbCrLf & vbCrLf
strMessage = strMessage & "省份（中文）：        " & sheng & vbCrLf & vbCrLf
strMessage = strMessage & "省份（英文）：        " & sheng_en & vbCrLf & vbCrLf
strMessage = strMessage & "国家（英文）：        " & country & vbCrLf & vbCrLf
strMessage = strMessage & "邮编：                " & zip & vbCrLf & vbCrLf
strMessage = strMessage & "电话；                " & phone & vbCrLf & vbCrLf
strMessage = strMessage & "传真：                " & fax & vbCrLf & vbCrLf
strMessage = strMessage & "电子邮件：            " & email & vbCrLf & vbCrLf
strMessage = strMessage & "租用主机类型：        " & hosting & vbCrLf & vbCrLf
strMessage = strMessage & "注册年限：            " & regyear & vbCrLf & vbCrLf
strMessage = strMessage & "付款方式：            " & payment & vbCrLf & vbCrLf
strMessage = strMessage & "主服务器：            " & dns1 & vbCrLf & vbCrLf
strMessage = strMessage & "副服务器：            " & dns2 & vbCrLf & vbCrLf
strMessage = strMessage & "客户的其他要求：      " & remark & vbCrLf & vbCrLf
strMessage = strMessage & "表单提交日期：        " & now & vbCrLf & vbCrLf
select case strMailMode
	case "jmail"		'Jmial模式发送邮件
		on error resume next
		Set objNewMail = Server.CreateObject("Jmail.smtpmail")'如果你的主机不在我们这儿, 你需要安装 Jmail 组件
			objNewMail.ServerAddress = strMailServer
			objNewMail.AddRecipient strEmail
			objNewMail.Sender = strEmail
			objNewMail.Subject = "域名注册表单"
			objNewMail.body = strMessage
			objNewMail.priority = 0
			objNewMail.execute
	case "aspemail"		'ASPemail模式发送邮件
		on error resume next
		Set objNewMail = Server.CreateObject("Persits.MailSender")'如果你的主机不在我们这儿, 你需要安装 ASPemail 组件
			objNewMail.Host = strMailServer
			objNewMail.From = strEmail 
			objNewMail.FromName = "世纪中国虚拟主机"
			objNewMail.AddAddress strEmail
			objNewMail.AddCC strEmail
			objNewMail.Subject = "域名注册表单"
			objNewMail.Body = strMessage
			objNewMail.Send
end select
set objNewMail = Nothing
%>
<table cellSpacing="0" cellPadding="0" width="580" border="0">
      <tr>
        <td bgColor="#ff9900" style="font-family: 宋体; font-size: 9pt">
        <table cellSpacing="1" borderColorDark="#ffffff" cellPadding="0" width="100%" borderColorLight="#ff3333">
          <tr align="middle" bgColor="#ffe3bb">
            <td bgColor="#ffe3bb" height="20" style="font-family: 宋体; font-size: 9pt">
            <span class="L13"><b>递 交 成 功</b></span></td>
          </tr>
          <tr bgColor="#fffbf7">
            <td style="font-family: 宋体; font-size: 9pt">
				<p><br><font face="宋体" color="black">您提交的信息已经被寄往 <% = strEmail %></font></p>
				<p>请注意： 
					1、在这里，您的注册只是预注册，只有在21CNDNS.com确认您的付款后，您的域名才会正式生效。在此期间，您的域名可能会被他人通过其它渠道抢先注册。虽然在此情况下，21CNDNS.com会100%退还您的款项，不过，我们还是强烈建议您及早向我们付款。<br>
					2、域名的注册人的中文和英文名称非常重要，而且在域名生效后无法随意更改（对域名注册人名称的更改，视为过户），请您务必认真填写！ <br>
				<br>
				<font color="#ff0000"><b>付款信息：</b></font><br>
				一、银行汇款： （为了避免延误您网站的正常使用，请您在银行付款单上注明您的定单内容。）<br>
				<font color="#ff0000">1. </font><br>
				·开户银行：招商银行南昌支行<br>
				·帐　　号：0791-43473295<br>
				·收 款 人：林枝兴〖直接填写姓名即可〗<br>
				（注意：在收到汇款凭证的传真或扫描或确认到款后定单生效。）<br>
				<br>
				<font color="#ff0000">2.</font> <br>
				·开户银行：建设银行江西贵溪支行 （个人电子汇款）<br>
				·帐　　号：4367 4220 7201 1079 389 <br>
				·收 款 人：林枝兴〖直接填写姓名即可〗<br>
				·需带上有效身份证件到当地建行办理，不需要您在建行开户<br>
				（注意：在收到汇款凭证的传真或扫描或确认到款后定单生效。）<br>
				<br>
				<font color="#ff0000">3.</font> <br>
				·开户银行：江西贵溪市邮电局邮政储蓄卡<br>
				·帐　　号：B04271 001252447822<br>
				·收 款 人：林枝兴〖直接填写姓名即可〗<br>
				（注意：在收到汇款凭证的传真或扫描或确认到款后定单生效。） <br>
				<br>
				二、邮局汇款： （为了避免延误您网站的正常使用，请您在邮局汇款单上注明您的定单内容。）<br>
				<br>
				·详细地址：江西省贵溪市建设路火车站邮电所 8 号信箱<br>
				·邮政编码：３３５４００<br>
				·收 款 人：林枝兴 <br>
				（注意：在收到汇款收据的传真或扫描后定单生效。）
				　</p>
				<center><a href="http://www.21cndns.com/">返回</a></center>
			</td>
		  </tr>
		</table>
	</td>
  </tr>
</table>
<% end if %>
<font size="2">
<p>21cndns.com 域名查询系统&nbsp;&nbsp;&nbsp;&nbsp;制作人：^e^boy<br>Email:<a href="mailto:webmaster@kesee.com">eboy888@msn.com</a>&nbsp;&nbsp;&nbsp;&nbsp;主页：<a href="http://www.kesee.com">http://www.KeSee.com</a></p></font>
</div>
</BODY>
</HTML>