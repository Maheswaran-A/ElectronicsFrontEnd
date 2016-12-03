<!DOCTYPE html>
<%@page import="org.json.JSONArray"%>
<%@ page  isELIgnored="false"%>
<%@page import="com.google.gson.*" %>
<html lang="en">
<head>

<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/bootstrap-3.3.7-dist/css/bootstrap.min.css">
  <script src="resources/jquerymin.js"></script>
  <script src="resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<h2>Welcome Mr President</h2>
<%
out.println("Request object started");
out.println(request); 
out.println("Request object finished");
out.println(request.getParameter("Products"));
out.println(request.getAttribute("Products"));
out.println("Request object finished2345");


%>
${Products}
<%
JsonParser parser = new JsonParser();
//JSONParser parser = new JSONParser();
Object obj =parser.parse((String)request.getAttribute("Products"));
//Object obj = parser.parse(out.println("${Products}"));
//JsonObject jsonObject = (JsonObject) obj;
JsonArray jsonObject = (JsonArray) obj;

		//String name = (String) jsonObject.get("prdcategory");
		System.out.println("Product Category"+jsonObject.get(0));
		%>
	<div class='container'>
			 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
<!--     <div class="navbar-header"> -->
<!--       <a class="navbar-brand" href="#">WebSiteName</a> -->
<!--     </div> -->
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Category
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
        <%
        for(int i=0;i<jsonObject.size();i++)
        {
        	JsonObject jsonObjectPrd = (JsonObject) jsonObject.get(i).getAsJsonObject();
        	out.println("<li><a href='#'>"+jsonObjectPrd.get("prdcategory").getAsString()+"</a></li>");
       }
        
       %>
          
        </ul>
      </li>
<!--       <li><a href="#">Page 2</a></li> -->
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
	</div>
</body>
</html>