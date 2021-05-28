<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Restaurante"%>
<%@page import="revisaodm2021n.controles.ControleRestaurante"%>

<%
    request.setCharacterEncoding("UTF-8");
    int id = Integer.parseInt(request.getParameter("ID"));
    Restaurante rEntrada = new Restaurante(id);
    ControleRestaurante contRes = new ControleRestaurante();
    Restaurante rSaida = contRes.buscar(rEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
    <h1>VALIDA BUSCA</h1>
        <% if(rSaida != null) { %>
            Usuario = <%=rSaida.getId()%> | <%=rSaida.getNome()%> | <%=rSaida.getCep()%> | <%=rSaida.getEndereco()%> | <%=rSaida.getBairro()%> | <%=rSaida.getTelefone()%>  <br>   
        <% } else { %>
            ID Inválido!
        <% } %>
    </div>
    </body>
</html>
