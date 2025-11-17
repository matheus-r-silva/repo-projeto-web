<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*, com.cidadania.model.dao.*,
     com.cidadania.model.entities.Usuario, com.cidadania.model.dao.impl.UsuarioDaoJDBC"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Lista contatos</title>
	</head>
	<body>
		<table>
			<%
				UsuarioDao dao = new UsuarioDaoJDBC();
				List<Usuario> usuarios = dao.listarTodos();
				
				for(Usuario usuario : usuarios){
			%>
			<tr>
				<td><%=usuario.getNome() %></td>
				<td><%=usuario.getEmail() %></td>
				<td><%=usuario.getSenha() %></td>
			</tr>
			<%
				}
			%>
		</table>
	</body>
</html>