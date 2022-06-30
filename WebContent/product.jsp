
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.sunil.entity.Product"
	import="com.sunil.util.HibernateUtil"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Chart</title>
</head>
<body>

	<%
	String pname = request.getParameter("pname");
	Double price = Double.parseDouble(request.getParameter("pprice"));

	Product p = new Product();
	p.setName(pname);
	p.setPrice(price);

	SessionFactory sf = HibernateUtil.getSessionFactory();

	Session session2 = sf.openSession();

	Transaction tx = session2.beginTransaction();

	session2.save(p);

	tx.commit();
	
	session2.close();
	out.println("Successfully Created product");
	%>

</body>
</html>