function CheckIfEnglish( String )
{ 
    var Letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890-";
     var i;
     var c;
      if(String.charAt( 0 )=='-')
	return false;
      if( String.charAt( String.length - 1 ) == '-' )
          return false;
     for( i = 0; i < String.length; i ++ )
     {
          c = String.charAt( i );
	  if (Letters.indexOf( c ) < 0)
	     return false;
     }
     return true;
}
function submitchecken() {

	if (document.checkdomain.domain.value == "") {
		alert("请输入您要查询的英文域名。");
		document.checkdomain.domain.focus();
		return false;
	}

if (!CheckIfEnglish(document.checkdomain.domain.value )) {
		alert("\t注意：在查询英文域名时应输入英文不能输入中文及非法字符！\n域名由不分大小写的英文字母和数字组成，除了开头和结尾以外，中间也可以含有“-”（即连字符或称减号）最大长度为26个字符；");
		document.checkdomain.domain.focus();
		return false;
	}

	return true;
}