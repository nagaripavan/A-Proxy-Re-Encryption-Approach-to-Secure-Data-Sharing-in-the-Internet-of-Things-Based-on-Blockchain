<%@page import="org.bouncycastle.util.encoders.Base64" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="connect.jsp" %>


<html>
<body>

          <p>
		  
		  <table width="965" border="1" align="center" cellspacing="0" cellpadding="5">
  <tr>
   <td width="178" bgcolor="#FF9900"><div align="center" class="style6">TId</div></td>
    <td width="178" bgcolor="#FF9900"><div align="center" class="style6">Client Name </div></td>
      <td width="178" bgcolor="#FF9900"><div align="center" class="style6">File Name</div></td>
   <td width="140" height="32" bgcolor="#FF9900"><div align="center" class="style6">Task</div></td>
	  <td width="115" bgcolor="#FF9900"><div align="center" class="style6">Date</div></td>
  </tr>

	<%
		String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11, s12, s13;
		int i = 0, j = 0, k = 0;

		try {

			String query = "select * from transaction ";
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(query);
			while (rs.next()) {
				i = rs.getInt(1);
				s2 = rs.getString(2);
				s3 = rs.getString(3);
				s4 = rs.getString(4);
				s5 = rs.getString(5);
				s6 = rs.getString(6);

	%>

	<tr>
		<td height="29">
		<div align="center" class="style8"><%=i%></div>
		</td>
		<td height="29">
		<div align="center" class="style8"><%=s2%></div>
		</td>
		<td>
		<div align="center" class="style8"><%=s3%></div>
		</td>
		<td>
		<div align="center" class="style8"><%=s5%></div>
		</td>
		<td>
		<div align="center" class="style8"><%=s6%></div>
		</td>
	</tr>

	<%
		}

			connection.close();
		}

		catch (Exception e) {
		//	out.println(e.getMessage());
		}
	%>
</table>
		  
		  
</body>
</html>
