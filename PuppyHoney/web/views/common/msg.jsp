<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<% 
	String msg=(String)request.getAttribute("msg");
	String loc=request.getContextPath()+(String)request.getAttribute("loc");
	String script=(String)request.getAttribute("script");
	
	if(request.getAttribute("free")!=null){
		String searchType = (String)request.getAttribute("searchType");
		String inputText = (String)request.getAttribute("inputText");
		String sort = (String)request.getAttribute("sort");
		int cPage = Integer.parseInt(request.getAttribute("cPage").toString()); 
		loc = request.getContextPath()+"/freeBoard/boardList?cPage="+cPage+"&searchType="+searchType+"&inputText="+inputText+"&sort="+sort;
	}
%>
<body>
	<script>
		alert("<%= msg %>");
		<%= script!=null?script:""%>;
		location.href="<%=loc%>";
	</script>
</body>
</html>