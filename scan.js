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
		alert("��������Ҫ��ѯ��Ӣ��������");
		document.checkdomain.domain.focus();
		return false;
	}

if (!CheckIfEnglish(document.checkdomain.domain.value )) {
		alert("\tע�⣺�ڲ�ѯӢ������ʱӦ����Ӣ�Ĳ����������ļ��Ƿ��ַ���\n�����ɲ��ִ�Сд��Ӣ����ĸ��������ɣ����˿�ͷ�ͽ�β���⣬�м�Ҳ���Ժ��С�-���������ַ���Ƽ��ţ���󳤶�Ϊ26���ַ���");
		document.checkdomain.domain.focus();
		return false;
	}

	return true;
}