<%@ Language=VBScript %>
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
<%
Dim Domain
Domain = Request.QueryString("domain")
%><script Language="JavaScript">
function isMail(address)
{
if (address=="") return false
if (address.indexOf("@")==-1||address.indexOf("@")==0||address.indexOf("@")==address.length-1) return false
if (address.indexOf("@")!=address.lastIndexOf("@")) return false
return true
}

function Form(theForm)
{

  if (theForm.电子邮件.value == "")
  {
    alert("您必须输入您的E_Mail地址.");
    theForm.电子邮件.focus();
    return (false);
  }
  if (theForm.电子邮件.value.length < 5)
  {
    alert("这是你的E_Mail地址？？");
    theForm.电子邮件.focus();
    return (false);
  }

  if (theForm.电子邮件.value.length > 40)
  {
    alert("这不是你的E_Mail.");
    theForm.电子邮件.focus();
    return (false);
  }

 if (!((theForm.电子邮件.value=="")||isMail(theForm.电子邮件.value)))
		{
		alert("请填写合法的email地址！")
		theForm.电子邮件.select()
		theForm.电子邮件.focus()
		return false
		}

  return (true);
}
</script><script Language="JavaScript">
function FrontPage_Form1_Validator(theForm)
{
if (theForm.域名.value == "")
  {
    alert("您必须输入你需要的域名地址");
    theForm.域名.focus();
    return (false);
  }
 if (theForm.姓名（中文）.value == "")
  {
    alert("您必须输入您的姓名.");
    theForm.姓名（中文）.focus();
    return (false);
  }
  if (theForm.姓名（中文）.value.length < 2)
  {
    alert("姓名错误！.");
    theForm.姓名（中文）.focus();
    return (false);
  }

  if (theForm.姓名（中文）.value.length > 20)
  {
    alert("姓名错误！");
    theForm.姓名（中文）.focus();
    return (false);
  }

  var checkcancel = " ";
  var checkStr = theForm.姓名（中文）.value;
  var allValid = true;
  for (i = 0;  i < checkStr.length;  i++)
  {
    ch = checkStr.charAt(i);

    if (ch == checkcancel.charAt(0))
    {
          allValid = false;
    	  break;
    }
  }
  if (!allValid)
  {
    alert("用户姓名不能包含空格.");
    theForm.姓名（中文）.focus();
    return (false);
  }
 if (theForm.通讯地址（中文）.value == "")
  {
    alert("您必须输入你的通信地址");
    theForm.通讯地址（中文）.focus();
    return (false);
  }
 if (theForm.城市（中文）.value == "")
  {
    alert("您必须输入你所在的城市");
    theForm.城市（中文）.focus();
    return (false);
  }
if (theForm.邮政编码.value == "")
  {
    alert("你必须写上你的邮政编码");
    theForm.邮政编码.focus();
    return (false);
  }
if (theForm.电话.value == "")
  {
    alert("请输入电话号码!");
    theForm.电话.focus();
    return (false);
  }
else
  {
  var checkcancel = "-";
  var checkStr = theForm.电话.value;
  var allValid = true;
  for (i = 0;  i < checkStr.length;  i++)
  {
    ch = checkStr.charAt(i);

    if (ch == checkcancel.charAt(0))
    {
          allValid = false;
    	  break;
    }
  }
 }
  if (allValid)
  {
    alert("电话号码格式输入错误！\n请按如下格式重新输入：\n\n0701-6277803\n\n0701为区号！");
    theForm.电话.focus();
    return (false);
  }
  if (theForm.电子邮件.value == "")
  {
    alert("您必须输入您的E_Mail地址.");
    theForm.电子邮件.focus();
    return (false);
  }
  if (theForm.电子邮件.value.length < 5)
  {
    alert("这是你的E_Mail地址？？");
    theForm.电子邮件.focus();
    return (false);
  }

  if (theForm.电子邮件.value.length > 40)
  {
    alert("这不是你的E_Mail.");
    theForm.电子邮件.focus();
    return (false);
  }
 if (!((theForm.电子邮件.value=="")||isMail(theForm.电子邮件.value)))
		{
		alert("请填写合法的email地址！")
		theForm.电子邮件.select()
		theForm.电子邮件.focus()
		return false
		}

  return (true);
}
</script><HTML>
<HEAD>
<title>21cndns.com::: ::: 域名主机服务 ::: ::: 域名预注册表单</title>
<META NAME="Author" CONTENT="^e^boy">
<META NAME="HomePage" CONTENT="http://www.KeSee.com">
<META NAME="GENERATOR" Content="Microsoft FrontPage 5.0">
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
</HEAD><title>域名注册及虚拟主机订购单</title>
<BODY bgcolor="#FFFFFF">
<div align=center>
<FORM action="regtomdb.asp" method=post id=form1 onsubmit="return FrontPage_Form1_Validator(this)" language="JavaScript" name="FrontPage_Form1">
<table cellSpacing="0" cellPadding="0" width="580" border="0">
      <tr>
        <td bgColor="#ff9900" style="font-family: 宋体; font-size: 9pt">
        <table cellSpacing="1" borderColorDark="#ffffff" cellPadding="0" width="100%" borderColorLight="#ff3333">
          <tr align="middle" bgColor="#ffe3bb">
            <td bgColor="#ffe3bb" height="20" style="font-family: 宋体; font-size: 9pt">
            <span class="L13"><b>域 名 申 请 表</b></span></td>
          </tr>
          <tr vAlign="top" align="middle" bgColor="#fffbf7">
            <td style="font-family: 宋体; font-size: 9pt">
  <table align=center width="577">
    <tr>
      <td width="145">1.虚拟主机：</td>
      <td width="422" colspan="3">
        <!--webbot bot="Validation" b-disallow-first-item="TRUE" --><select name="hosting" size="1">
          <option value="==== 请选择 ====">==== 请选择 ====</option>
          <option value="100M 空间">100M 空间</option>
          <option value="150M 空间">150M 空间</option>
          <option value="200M 空间">200M 空间</option>
          <option value="600M MS SQL空间">600M MS SQL空间</option>
        </select>
		（可选项）
      </td>
    </tr>
    <tr>
      <td width="145">2.域名：</td>
      <td width="422" colspan="3">
        <INPUT id=text2 name=域名 size=41 value=<% =Domain %>> <font color="#ff0000">＊必填</font><span lang="zh-cn">如：</span>KeSee.com</td>
    </tr>
    <tr>
      <td width="145">3.姓名（中文）：</td>
      <td width="422" colspan="3"> 
        <INPUT id=text3 name=姓名（中文） size=41> <font color="#ff0000">＊必填</font></td>
    </tr>
    <tr>
      <td width="145">4.姓名（英文或拼音）：</td>
      <td width="422" colspan="3"> 
        <INPUT id=text4 name=姓名（英文或拼音） size=41>
      </td>
    </tr>
    <tr>
      <td width="145">5.注册组织名称（中文）：</td>
      <td width="422" colspan="3"> 
        <INPUT id=text5 name=注册组织名称（中文） size=41>&nbsp;
      </td>
    </tr>
    <tr>
      <td width="145">6.注册组织名称（英文）：</td>
      <td width="422" colspan="3"> 
        <INPUT id=text6 name=注册组织名称（英文） size=41>
      </td>
    </tr>
    <tr>
      <td width="145">7.通讯地址（中文）：</td> 
      <td width="422" colspan="3"> 
        <INPUT id=text7 name=通讯地址（中文） size=41> <font color="#ff0000">＊必填</font></td>
    </tr>
    <tr>
      <td width="145">8.通讯地址（英文）：</td>
      <td width="422" colspan="3"> 
        <INPUT id=text8 name=通讯地址（英文） size=41>
      </td>
    </tr>
    <tr>
      <td width="145">9.城市（中文）：</td>
      <td width="422" colspan="3"> 
        <INPUT id=text9 name=城市（中文） size=41> <font color="#ff0000">＊必填&nbsp; </font>
        <span lang="zh-cn">如：鹰潭</span></td>
    </tr>
    <tr>
      <td width="145">10.城市（英文）：</td>
      <td width="422" colspan="3"> 
        <INPUT id=text27 name=城市（英文） size=41>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span lang="zh-cn">如：</span>YingTan</td>
    </tr>
    <tr>
      <td width="145">11.省份（中文）：</td>
      <td width="422" colspan="3"> 
        <INPUT id=text10 name=省份（中文） size=41> <font color="#ff0000">＊必填&nbsp; </font>
        <span lang="zh-cn">如：江西</span></td>
    </tr>
    <tr>
      <td width="145">12.省份（英文）：</td>
      <td width="422" colspan="3"> 
        <INPUT id=text26 name=text26 size=41><span lang="zh-cn">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        如：</span>JiangXi</td>
    </tr>
    <tr>
      <td width="145">13.国家（英文）： </td>
      <td width="422" colspan="3"> 
        <INPUT id=text11 name=国家（英文） size=41 value=China>
        <font color="#ff0000">＊必填&nbsp; </font><span lang="zh-cn">如：</span>China</td>
    </tr>
    <tr>
      <td width="145">14.邮政编码：</td>
      <td width="422" colspan="3"> 
        <INPUT id=text12 name=邮政编码 size=41> <font color="#ff0000">＊必填&nbsp; </font>
        <span lang="zh-cn">如：</span>335000</td>
    </tr>
    <tr>
      <td width="145">15.电话：</td>
      <td width="422" colspan="3"> 
        <INPUT id=text15 name=电话 size=41> <font color="#ff0000">＊必填</font></td>
    </tr>
    <tr>
      <td width="145">16.传真：</td>
      <td width="422" colspan="3"> 
        <INPUT id=text16 name=传真 size=41>
      </td>
    </tr>
    <tr>
      <td width="145">17.电子邮件：</td>
      <td width="422" colspan="3"> 
        <INPUT id=text17 name=电子邮件 size=41> <font color="#ff0000">＊必填</font></td>
    </tr>
    <tr>
      <td width="145">18.<span lang="zh-cn">注册年限</span>：</td>
      <td width="82">      
        <select name="regyear" size="1">    
          <option value="1" selected>1年</option>
          <option value="2">2年</option>
          <option value="3">3年</option>
          <option value="4">4年</option>
          <option value="5">5年</option>
          <option value="6">6年</option>
          <option value="7">7年</option>
          <option value="8">8年</option>
          <option value="9">9年</option>
          <option value="10">10年</option>
        </select>
      </td>
      <td width="64">      
        付款方式：</td>
      <td width="268">
        <input type=radio value="邮局付款" checked name="payment">邮局付款
        <input type=radio value="银行电汇" name="payment">银行电汇
        <input type=radio value="交纳现金" name="payment">交纳现金
      </td>
    </tr>
    <tr>
      <td rowspan=2 width="145">19.如果您用自己的<br>
        dns服务器请您指明</td>
      <td width="422" colspan="3">主域名服务器信息：
        <INPUT id=dns1 name=dns1 size=18> 如果没有自己的DNS可以不填
      </td>    
    </tr>    
    <tr>    
      <td width="422" colspan="3">副域名服务器信息：
        <input id=dns2 name=dns2 size=18> 如果没有自己的DNS可以不填
      </td>    
    </tr>    
    <tr>    
      <td width="145">20.备注及其它要求：</td>   
      <td width="422" colspan="3">    
        <textarea rows="5" name=remark cols="56"></textarea>   
      </td>   
    </tr>   
  </table>   
<p></p>   
<center><INPUT id=submit1 name=submit1 type=submit value=" 提 交 ">   
<INPUT id=reset1 name=reset1 type=reset value="  重 填  "></center>       
        </td>
      </tr>
    </table>
	</td>
  </tr>
</table>
<font size="2">
<p>21cndns.com 域名查询系统&nbsp;&nbsp;&nbsp;&nbsp;制作人：^e^boy<br>Email:<a href="mailto:webmaster@kesee.com">eboy888@msn.com</a>&nbsp;&nbsp;&nbsp;&nbsp;主页：<a href="http://www.kesee.com">http://www.KeSee.com</a></p></font>
</div>
</BODY>    
</HTML>