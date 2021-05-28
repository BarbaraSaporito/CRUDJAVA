<%-- 
    Document   : menu
    Created on : 09/04/2021, 20:09:32
    Author     : User
--%>

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
            Login = <%=uSaida.getId()%> | <%=uSaida.getLogin()%> | <%=uSaida.getSenha()%> | <%=uSaida.getStatus()%> | <%=uSaida.getTipo()%> <br>   
            Usuario = <a href="../usuario/buscaUsuario.jsp">Buscar</a> = <a href="../usuario/listaUsuario.jsp">Lista</a> = <a href="../usuario/inseriUsuario.jsp">Inserir</a><br>
            Restaurante = <a href="../Restaurante/buscaRestaurante.jsp">Buscar</a> = <a href="../Restaurante/listaRestaurante.jsp">Lista</a> = <a href="../Restaurante/inseriRestaurante.jsp">Inserir</a><br>
            Fornecedor = <a href="../Fornecedor/buscaFornecedor.jsp">Buscar</a> = <a href="../Fornecedor/listaFornecedor.jsp">Lista</a> = <a href="../Fornecedor/inseriFornecedor.jsp">Inserir</a><br>
            Mercadoria = <a href="../Mercadoria/buscaMercadoria.jsp">Buscar</a> = <a href="../Mercadoria/listaMercadoria.jsp">Lista</a> = <a href="../Mercadoria/inseriMercadoria.jsp">Inserir</a>
        <% } else { %>
            Usuario Inválido
        <% } %>
    </div>
    </body>
</html>
