<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Mercadoria"%>
<%@page import="revisaodm2021n.controles.ControleMercadoria"%>

<%
    request.setCharacterEncoding("UTF-8");
    int id = Integer.parseInt(request.getParameter("ID"));
    Mercadoria mercadoriaEntrada = new Mercadoria(id);
    ControleMercadoria contMercadoria = new ControleMercadoria();
    Mercadoria mercadoriaSaida = contMercadoria.buscar(mercadoriaEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
    <h1>VALIDA BUSCA</h1>
        <% if(mercadoriaSaida != null) { %>
            Usuario = <%=mercadoriaSaida.getId()%> | <%=mercadoriaSaida.getNome()%> | <%=mercadoriaSaida.getData_compra()%> | <%=mercadoriaSaida.getValidade()%> | <%=mercadoriaSaida.getMarca()%> | <%=mercadoriaSaida.getId_restaurante()%> | <%=mercadoriaSaida.getId_fornecedor()%> <br>   
        <% } else { %>
            ID Inválido!
        <% } %>
    </div>
    </body>
</html>
