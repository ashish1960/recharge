
<%@page import="linkcode.model.recharge"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<a href="viewtrancation.jsp">
							style="color: black; text-decoration: none;">View balance</a>
					
				<form action="trancation" onsubmit="hideForm(this);">
    <div class="mb-3">
        <label for="username" class="form-label">Enter Register Name:</label>
        <input type="number" name="mobile_number" class="form-control" required>
    </div>
    <button type="submit" class="btn btn-primary">Search</button>
</form>


				
            <p>
						<%
            List<recharge> seglst = null;
            recharge sego = null;

            if (!session.isNew()) {
            	seglst = (List<recharge>) session.getAttribute("data");
                if (seglst != null && !seglst.isEmpty()) {
                    sego = seglst.get(0);
            %>
					
					
					<h3>Search Result</h3>

					<p>
						Customer Name:
						<%= sego.getMobileNumber()%></p>
					<p>
						Account Balance:
						<%=sego.getPlanId() %>
					<%
                } else {
                	
                    String notFoundMessage = (String) session.getAttribute("notFoundMessage");
                    if (notFoundMessage != null) {
            %>
					<div class="alert alert-danger">
						<strong>Error:</strong>
						<%= notFoundMessage %>
					</div>
					<%
                       
                        session.removeAttribute("notFoundMessage");
                    }
                }
                session.invalidate();
            }
            %>

					
<script type="text/javascript">

             $(document).ready(function () {
                 $('#sidebarCollapse').on('click', function () {
                     $('#sidebar').toggleClass('active');
                 });
             });
             
             
             
             </script>
           
    
 
					





</body>
</html>