<%@ page import="java.util.List" %>
<%@ page import="model.Usuario" %>

<!DOCTYPE html>
<html>
<head>
    <title>Usuarios</title>
</head>
<body>

<h2>Registrar Usuario</h2>

<form action="UsuarioServlet" method="post">
    <input type="hidden" name="id" value="${id}">

    Nombre:
    <input type="text" name="nombre" value="${nombre}" required><br>

    Correo:
    <input type="text" name="correo" value="${correo}" required><br>

    <button type="submit">Guardar</button>
</form>

<hr>

<h2>Lista de Usuarios</h2>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>Correo</th>
        <th>Acciones</th>
    </tr>

<%
    List<Usuario> lista = (List<Usuario>) request.getAttribute("lista");
    if (lista != null) {
        for (Usuario u : lista) {
%>
    <tr>
        <td><%= u.getId() %></td>
        <td><%= u.getNombre() %></td>
        <td><%= u.getCorreo() %></td>
        <td>
            <a href="UsuarioServlet?accion=editar&id=<%=u.getId()%>&nombre=<%=u.getNombre()%>&correo=<%=u.getCorreo()%>">Editar</a>
            <a href="UsuarioServlet?accion=eliminar&id=<%=u.getId()%>">Eliminar</a>
        </td>
    </tr>
<%
        }
    }
%>

</table>

</body>
</html>