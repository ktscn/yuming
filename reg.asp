<%@ Language=VBScript %>
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

  if (theForm.�����ʼ�.value == "")
  {
    alert("��������������E_Mail��ַ.");
    theForm.�����ʼ�.focus();
    return (false);
  }
  if (theForm.�����ʼ�.value.length < 5)
  {
    alert("�������E_Mail��ַ����");
    theForm.�����ʼ�.focus();
    return (false);
  }

  if (theForm.�����ʼ�.value.length > 40)
  {
    alert("�ⲻ�����E_Mail.");
    theForm.�����ʼ�.focus();
    return (false);
  }

 if (!((theForm.�����ʼ�.value=="")||isMail(theForm.�����ʼ�.value)))
		{
		alert("����д�Ϸ���email��ַ��")
		theForm.�����ʼ�.select()
		theForm.�����ʼ�.focus()
		return false
		}

  return (true);
}
</script><script Language="JavaScript">
function FrontPage_Form1_Validator(theForm)
{
if (theForm.����.value == "")
  {
    alert("��������������Ҫ��������ַ");
    theForm.����.focus();
    return (false);
  }
 if (theForm.���������ģ�.value == "")
  {
    alert("������������������.");
    theForm.���������ģ�.focus();
    return (false);
  }
  if (theForm.���������ģ�.value.length < 2)
  {
    alert("��������.");
    theForm.���������ģ�.focus();
    return (false);
  }

  if (theForm.���������ģ�.value.length > 20)
  {
    alert("��������");
    theForm.���������ģ�.focus();
    return (false);
  }

  var checkcancel = " ";
  var checkStr = theForm.���������ģ�.value;
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
    alert("�û��������ܰ����ո�.");
    theForm.���������ģ�.focus();
    return (false);
  }
 if (theForm.ͨѶ��ַ�����ģ�.value == "")
  {
    alert("�������������ͨ�ŵ�ַ");
    theForm.ͨѶ��ַ�����ģ�.focus();
    return (false);
  }
 if (theForm.���У����ģ�.value == "")
  {
    alert("���������������ڵĳ���");
    theForm.���У����ģ�.focus();
    return (false);
  }
if (theForm.��������.value == "")
  {
    alert("�����д�������������");
    theForm.��������.focus();
    return (false);
  }
if (theForm.�绰.value == "")
  {
    alert("������绰����!");
    theForm.�绰.focus();
    return (false);
  }
else
  {
  var checkcancel = "-";
  var checkStr = theForm.�绰.value;
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
    alert("�绰�����ʽ�������\n�밴���¸�ʽ�������룺\n\n0701-6277803\n\n0701Ϊ���ţ�");
    theForm.�绰.focus();
    return (false);
  }
  if (theForm.�����ʼ�.value == "")
  {
    alert("��������������E_Mail��ַ.");
    theForm.�����ʼ�.focus();
    return (false);
  }
  if (theForm.�����ʼ�.value.length < 5)
  {
    alert("�������E_Mail��ַ����");
    theForm.�����ʼ�.focus();
    return (false);
  }

  if (theForm.�����ʼ�.value.length > 40)
  {
    alert("�ⲻ�����E_Mail.");
    theForm.�����ʼ�.focus();
    return (false);
  }
 if (!((theForm.�����ʼ�.value=="")||isMail(theForm.�����ʼ�.value)))
		{
		alert("����д�Ϸ���email��ַ��")
		theForm.�����ʼ�.select()
		theForm.�����ʼ�.focus()
		return false
		}

  return (true);
}
</script><HTML>
<HEAD>
<title>21cndns.com::: ::: ������������ ::: ::: ����Ԥע���</title>
<META NAME="Author" CONTENT="^e^boy">
<META NAME="HomePage" CONTENT="http://www.KeSee.com">
<META NAME="GENERATOR" Content="Microsoft FrontPage 5.0">
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
</HEAD><title>����ע�ἰ��������������</title>
<BODY bgcolor="#FFFFFF">
<div align=center>
<FORM action="regtomdb.asp" method=post id=form1 onsubmit="return FrontPage_Form1_Validator(this)" language="JavaScript" name="FrontPage_Form1">
<table cellSpacing="0" cellPadding="0" width="580" border="0">
      <tr>
        <td bgColor="#ff9900" style="font-family: ����; font-size: 9pt">
        <table cellSpacing="1" borderColorDark="#ffffff" cellPadding="0" width="100%" borderColorLight="#ff3333">
          <tr align="middle" bgColor="#ffe3bb">
            <td bgColor="#ffe3bb" height="20" style="font-family: ����; font-size: 9pt">
            <span class="L13"><b>�� �� �� �� ��</b></span></td>
          </tr>
          <tr vAlign="top" align="middle" bgColor="#fffbf7">
            <td style="font-family: ����; font-size: 9pt">
  <table align=center width="577">
    <tr>
      <td width="145">1.����������</td>
      <td width="422" colspan="3">
        <!--webbot bot="Validation" b-disallow-first-item="TRUE" --><select name="hosting" size="1">
          <option value="==== ��ѡ�� ====">==== ��ѡ�� ====</option>
          <option value="100M �ռ�">100M �ռ�</option>
          <option value="150M �ռ�">150M �ռ�</option>
          <option value="200M �ռ�">200M �ռ�</option>
          <option value="600M MS SQL�ռ�">600M MS SQL�ռ�</option>
        </select>
		����ѡ�
      </td>
    </tr>
    <tr>
      <td width="145">2.������</td>
      <td width="422" colspan="3">
        <INPUT id=text2 name=���� size=41 value=<% =Domain %>> <font color="#ff0000">������</font><span lang="zh-cn">�磺</span>KeSee.com</td>
    </tr>
    <tr>
      <td width="145">3.���������ģ���</td>
      <td width="422" colspan="3"> 
        <INPUT id=text3 name=���������ģ� size=41> <font color="#ff0000">������</font></td>
    </tr>
    <tr>
      <td width="145">4.������Ӣ�Ļ�ƴ������</td>
      <td width="422" colspan="3"> 
        <INPUT id=text4 name=������Ӣ�Ļ�ƴ���� size=41>
      </td>
    </tr>
    <tr>
      <td width="145">5.ע����֯���ƣ����ģ���</td>
      <td width="422" colspan="3"> 
        <INPUT id=text5 name=ע����֯���ƣ����ģ� size=41>&nbsp;
      </td>
    </tr>
    <tr>
      <td width="145">6.ע����֯���ƣ�Ӣ�ģ���</td>
      <td width="422" colspan="3"> 
        <INPUT id=text6 name=ע����֯���ƣ�Ӣ�ģ� size=41>
      </td>
    </tr>
    <tr>
      <td width="145">7.ͨѶ��ַ�����ģ���</td> 
      <td width="422" colspan="3"> 
        <INPUT id=text7 name=ͨѶ��ַ�����ģ� size=41> <font color="#ff0000">������</font></td>
    </tr>
    <tr>
      <td width="145">8.ͨѶ��ַ��Ӣ�ģ���</td>
      <td width="422" colspan="3"> 
        <INPUT id=text8 name=ͨѶ��ַ��Ӣ�ģ� size=41>
      </td>
    </tr>
    <tr>
      <td width="145">9.���У����ģ���</td>
      <td width="422" colspan="3"> 
        <INPUT id=text9 name=���У����ģ� size=41> <font color="#ff0000">������&nbsp; </font>
        <span lang="zh-cn">�磺ӥ̶</span></td>
    </tr>
    <tr>
      <td width="145">10.���У�Ӣ�ģ���</td>
      <td width="422" colspan="3"> 
        <INPUT id=text27 name=���У�Ӣ�ģ� size=41>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span lang="zh-cn">�磺</span>YingTan</td>
    </tr>
    <tr>
      <td width="145">11.ʡ�ݣ����ģ���</td>
      <td width="422" colspan="3"> 
        <INPUT id=text10 name=ʡ�ݣ����ģ� size=41> <font color="#ff0000">������&nbsp; </font>
        <span lang="zh-cn">�磺����</span></td>
    </tr>
    <tr>
      <td width="145">12.ʡ�ݣ�Ӣ�ģ���</td>
      <td width="422" colspan="3"> 
        <INPUT id=text26 name=text26 size=41><span lang="zh-cn">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        �磺</span>JiangXi</td>
    </tr>
    <tr>
      <td width="145">13.���ң�Ӣ�ģ��� </td>
      <td width="422" colspan="3"> 
        <INPUT id=text11 name=���ң�Ӣ�ģ� size=41 value=China>
        <font color="#ff0000">������&nbsp; </font><span lang="zh-cn">�磺</span>China</td>
    </tr>
    <tr>
      <td width="145">14.�������룺</td>
      <td width="422" colspan="3"> 
        <INPUT id=text12 name=�������� size=41> <font color="#ff0000">������&nbsp; </font>
        <span lang="zh-cn">�磺</span>335000</td>
    </tr>
    <tr>
      <td width="145">15.�绰��</td>
      <td width="422" colspan="3"> 
        <INPUT id=text15 name=�绰 size=41> <font color="#ff0000">������</font></td>
    </tr>
    <tr>
      <td width="145">16.���棺</td>
      <td width="422" colspan="3"> 
        <INPUT id=text16 name=���� size=41>
      </td>
    </tr>
    <tr>
      <td width="145">17.�����ʼ���</td>
      <td width="422" colspan="3"> 
        <INPUT id=text17 name=�����ʼ� size=41> <font color="#ff0000">������</font></td>
    </tr>
    <tr>
      <td width="145">18.<span lang="zh-cn">ע������</span>��</td>
      <td width="82">      
        <select name="regyear" size="1">    
          <option value="1" selected>1��</option>
          <option value="2">2��</option>
          <option value="3">3��</option>
          <option value="4">4��</option>
          <option value="5">5��</option>
          <option value="6">6��</option>
          <option value="7">7��</option>
          <option value="8">8��</option>
          <option value="9">9��</option>
          <option value="10">10��</option>
        </select>
      </td>
      <td width="64">      
        ���ʽ��</td>
      <td width="268">
        <input type=radio value="�ʾָ���" checked name="payment">�ʾָ���
        <input type=radio value="���е��" name="payment">���е��
        <input type=radio value="�����ֽ�" name="payment">�����ֽ�
      </td>
    </tr>
    <tr>
      <td rowspan=2 width="145">19.��������Լ���<br>
        dns����������ָ��</td>
      <td width="422" colspan="3">��������������Ϣ��
        <INPUT id=dns1 name=dns1 size=18> ���û���Լ���DNS���Բ���
      </td>    
    </tr>    
    <tr>    
      <td width="422" colspan="3">��������������Ϣ��
        <input id=dns2 name=dns2 size=18> ���û���Լ���DNS���Բ���
      </td>    
    </tr>    
    <tr>    
      <td width="145">20.��ע������Ҫ��</td>   
      <td width="422" colspan="3">    
        <textarea rows="5" name=remark cols="56"></textarea>   
      </td>   
    </tr>   
  </table>   
<p></p>   
<center><INPUT id=submit1 name=submit1 type=submit value=" �� �� ">   
<INPUT id=reset1 name=reset1 type=reset value="  �� ��  "></center>       
        </td>
      </tr>
    </table>
	</td>
  </tr>
</table>
<font size="2">
<p>21cndns.com ������ѯϵͳ&nbsp;&nbsp;&nbsp;&nbsp;�����ˣ�^e^boy<br>Email:<a href="mailto:webmaster@kesee.com">eboy888@msn.com</a>&nbsp;&nbsp;&nbsp;&nbsp;��ҳ��<a href="http://www.kesee.com">http://www.KeSee.com</a></p></font>
</div>
</BODY>    
</HTML>