
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="ISO-8859-1">
			<title>Visualiza��o de Usu�rios</title>
		</head>
	<body>
		<%@ page import="com.crudjspjava.dao.UsuarioDao, com.crudjspjava.bean.*, java.util.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%-- c � a var de acesso a uri --%>
        
        <h1>Listagem de Usu�rios</h1>
		<% 
			List<Usuario> list = UsuarioDao.getAllUsuarios();
			request.setAttribute("list", list);//1� arg atributo 2�arg lista acessada por list
		%>
		
		<table border="1">
			<tr> 
				<th>ID</th>
				<th>Nome</th>
				<th>Password</th>
				<th>Email</th>
				<th>Sexo</th>
				<th>Pa�s</th> 
				<th>Editar</th>
				<th>Excluir</th>				
			</tr>
			<c:forEach items="${list}" var="usuario"><%-- itera��o da lista --%>
				<tr>
					<td>${usuario.getId()}</td>
					<td>${usuario.getNome()}</td>					
					<td>${usuario.getPassword()}</td>
					<td>${usuario.getEmail()}</td>
					<td>${usuario.getSexo()}</td>
					<td>${usuario.getPais()}</td>
					<td><a href="editform.jsp?id=${usuario.getId()}">Editar</a></td><%-- Aqui eu envio o id do usu�rio --%>
					<td><a href="#">Excluir</a></td>
				</tr>
			</c:forEach>
		</table>
		<br>
		<a href="#">Adicionar novo Usu�rio</a>
	</body>
</html>