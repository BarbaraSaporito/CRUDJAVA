
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Usuario"%>
<%@page import="revisaodm2021n.controles.ControleUsuario"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    Usuario uEntrada = new Usuario(login,senha);
    ControleUsuario contUsu = new ControleUsuario();
    Usuario uSaida = contUsu.validar(uEntrada);
%>


<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>MENU</h1>
        <% if(uSaida != null) { %>
            Usuario = <%=uSaida.getId()%> | <%=uSaida.getLogin()%> | <%=uSaida.getSenha()%> | <%=uSaida.getStatus()%> | <%=uSaida.getTipo()%> <br>   
            Usuario = <a href="../usuario/buscaUsuario.jsp">Buscar</a> = <a href="../usuario/listaUsuario.jsp">Listar</a> = <a href="../usuario/inseriUsuario.jsp">Inserir</a>
            </br>
            </br>
            </br>
            Restaurante = <a href="../restaurante/buscaRestaurante.jsp">Buscar</a> = <a href="../restaurante/listaRestaurante.jsp">Listar</a> = <a href="../restaurante/inseriRestaurante.jsp">Inserir</a>
        <% } else { %>
            Usuário Inválido
        <% } %>
    </div>
    </body>
</html>
