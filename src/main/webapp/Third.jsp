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
//parameter �� �������� (�б�)
int a = Integer.parseInt(request.getParameter("a"));

//�������� Ǯ��Ẹ�� �̷��Ե�
String bbb= request.getParameter("b"); 	//String ���·� �����ͼ�
Integer bb= Integer.parseInt(bbb);		//String ->Integer
int b = bb.intValue();					//Integer -> int  ��ü�� ���� �ڷ�������


//---


//Attribute �б�
String d =(String) request.getAttribute("d");

//�������� Ǯ� �Ẹ�� �̷��Ե�.
Object ccc= request.getAttribute("c");	//Object(��ü) ����
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