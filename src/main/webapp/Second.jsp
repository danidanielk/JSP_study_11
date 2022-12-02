<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//parameter = html,jsp 에서 만들어낸 값 a,b
//				request에 저장됨
//				string or string[] 형태로 저장됨.

//Attribute = java에서 만들어낸 값. 아래 c,d,e 같은애들
//				request에 저장됨
//				object(객체)형태로 저장됨


//--------------------------
// 이동

//response.sendRedifect("third.jsp"); 그냥넘어감

//RequestDispatcher rd = request.getRequestDispatcher("Third.jsp"); 값이 전달됨 
//						rd.forward(request, response);				주력상품
//


%>
<%
request.setCharacterEncoding("EUC-KR");

String num1= request.getParameter("x");
int a = Integer.parseInt(num1);
//int a = Integer.parseInt(request.getParameter("x")); 이렇게 한줄로 사용.

String num2= request.getParameter("y");
int b = Integer.parseInt(num1);
//int a = Integer.parseInt(request.getParameter("y"));




//--------------------------------------------------------------------
//RequestDispatcher : 클라이언트(사용자로부터) 둘어온 요청을 원하는 쪽으로 넘기는 기능.
//호출된 페이지는 request.setAttribute(key,value) 메소드를 통해서
//넘겨받은 데이터를 처리할 수 있음.
// ->어제 점검중페이지 만든 Redirect와는 다르게(데이터처리못함) 
//	request 와 response 객체를 가지고 넘어가기 때문에 데이터처리 가능

RequestDispatcher rd = request.getRequestDispatcher("Third.jsp");
int c = a+b;
request.setAttribute("c", c);

String d = "ㅋ";
request.setAttribute("d", d);

Random e = new Random();
request.setAttribute("e", e);

rd.forward(request, response);
//rd.include(request, response);

%>

x : <%=num1 %>
y : <%=num2 %>
x+y : <%=a+b %>
</body>
</html>