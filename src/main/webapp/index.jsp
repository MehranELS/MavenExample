<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"                                                    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



	<ul>
		<li>ID</li>
		<li>NAME</li>
		<li>City</li>
		<li>Price</li>
		<li>Status</li>
		<li>Desc</li>


	</ul>
	<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://18.202.27.131:3306/diversity";
String username="root";
String password="els";
String query="select * from Property";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
	<ul>
		<li>
			<%=rs.getInt("prop_id") %>
		</li>
		<li>
			<%=rs.getString("prop_name")%>
		</li>
		<li>
			<%=rs.getString("city") %>
		</li>
		<li>
			<%=rs.getInt("price") %>
		</li>
		<li>
			<%=rs.getInt("status") %>
		</li>
		<li>
			<%=rs.getString("description")%>
		</li>


	</ul>

	<%

}
%>

	<%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>



</body>



</html>
