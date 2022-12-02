<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
//parameter 값 가져오기 (읽기)
int a = Integer.parseInt(request.getParameter("a"));

//위에것을 풀어써보면 이렇게됨
String bbb= request.getParameter("b"); 	//String 형태로 가져와서
Integer bb= Integer.parseInt(bbb);		//String ->Integer
int b = bb.intValue();					//Integer -> int  객체형 에서 자료형으로


//---


//Attribute 읽기
String d =(String) request.getAttribute("d");

//위에것을 풀어서 써보면 이렇게됨.
Object ccc= request.getAttribute("c");	//Object(객체) 형태
Integer cc= (Integer) ccc;				//object -> Integer
int c = cc.intValue();					//Integer -> int

Random e=(Random) request.getAttribute("e");
%>


<h1>Third</h1>
a: <%=a %> <br>
a: <%=b %> <br>
a: <%=c %> <br>
a: <%=d %> <br>
a: <%=e.nextInt(100)+1 %> <br>
</body>
</html>