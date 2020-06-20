<%@ Language=VBScript %>
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
'#######################################用户设置开始#############################################

mdb = "date/KeSee.mdb"									'填入你数据库的名字
strEmail		= "eboy@xpcn.com"						'填入你的邮箱
strMailMode		= "jmail"								'填入你主机发送邮件的组件，默认为 Jmail 模式发送，如果设为aspemail则为 ASPemail 模式发送，本程序只支持这两种模式！
strMailServer	= "mail.xpcn.com"						'填入你的邮件发送服务器

'#######################################用户设置结束#############################################


set cn = Server.CreateObject("ADODB.Connection")
param = "driver={Microsoft Access Driver (*.mdb)}"
cn.Open param &";dbq="+server.mappath(mdb)
%>