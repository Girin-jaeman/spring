<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="utf-8"%>
<html>
<head>
<meta charset="utf-8">	
	<title>Home</title>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.js"></script>
	<script type="text/javascript">
		var sock=new SockJS('${root}echo');
		$(function(){
				$('button').click(function(){
					sock.send($('input').val());
					$('input').val("");
				});
		});
		
	</script>
</head>
<body>
<h1>
	에코 서버!
</h1>
<div>

	<input type="text"/><button>전송</button>
</div>


<P>루트 컨텍스트 왜 오류나냐고 컨텍스트 말 들어라 돌았냐 진짜 부순다 </P>
</body>
</html>
