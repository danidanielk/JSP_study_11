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
//parameter = html,jsp ���� ���� �� a,b
//				request�� �����
//				string or string[] ���·� �����.

//Attribute = java���� ���� ��. �Ʒ� c,d,e �����ֵ�
//				request�� �����
//				object(��ü)���·� �����


//--------------------------
// �̵�

//response.sendRedifect("third.jsp"); �׳ɳѾ

//RequestDispatcher rd = request.getRequestDispatcher("Third.jsp"); ���� ���޵� 
//						rd.forward(request, response);				�ַ»�ǰ
//


%>
<%
request.setCharacterEncoding("EUC-KR");

String num1= request.getParameter("x");
int a = Integer.parseInt(num1);
//int a = Integer.parseInt(request.getParameter("x")); �̷��� ���ٷ� ���.

String num2= request.getParameter("y");
int b = Integer.parseInt(num1);
//int a = Integer.parseInt(request.getParameter("y"));




//--------------------------------------------------------------------
//RequestDispatcher : Ŭ���̾�Ʈ(����ڷκ���) �Ѿ�� ��û�� ���ϴ� ������ �ѱ�� ���.
//ȣ��� �������� request.setAttribute(key,value) �޼ҵ带 ���ؼ�
//�Ѱܹ��� �����͸� ó���� �� ����.
// ->���� ������������ ���� Redirect�ʹ� �ٸ���(������ó������) 
//	request �� response ��ü�� ������ �Ѿ�� ������ ������ó�� ����

RequestDispatcher rd = request.getRequestDispatcher("Third.jsp");
int c = a+b;
request.setAttribute("c", c);

String d = "��";
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