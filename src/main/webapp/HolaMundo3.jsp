<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

Esto es un texto de prueba
<%
	String nombre= (String) request.getAttribute("nombre");
	String apellido= (String) request.getAttribute("apellido");
	ArrayList <String> pokemons= (ArrayList<String>) request.getAttribute("pokemons");


%>




	<table border="1">
	
		<tr>
			<td> <% out.println(nombre); %> </td>
			<td> <% out.println(apellido); %> </td>
		</tr>
	
	
	</table>
	
	<h1>Listado de los pokemon </h1>
	
	<%
		for(String pokemon :pokemons){
			%>
			
			
			<div class="card" style="width: 18rem;">
			  <img src="..." class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title"><% out.println(pokemon); %></h5>
			    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
			    <% if(pokemon.contains("za")){ %>
			    	<a href="#" class="btn btn-primary" >Go somewhere </a>
			    <% } else { %>	
			    
			    	<a href="#" class="btn btn-secondary" >Go somewhere</a>
			    <% } %>
			    
			  </div>
			</div>
		 <%
		}%>
	
</body>
</html> 