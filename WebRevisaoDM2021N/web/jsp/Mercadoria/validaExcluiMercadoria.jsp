<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Mercadoria"%>
<%@page import="revisaodm2021n.controles.ControleMercadoria"%>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Mercadoria mercadoriaEntrada = new Mercadoria(id);
    ControleMercadoria mercadoriaCont = new ControleMercadoria();
    Mercadoria mercadoriaSaida = mercadoriaCont.excluir(mercadoriaEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDA EXCLUSÃO</h1>
        ID = <%=mercadoriaSaida.getId()%> <br>
        NOME = <%=mercadoriaSaida.getNome()%> <br>
        DATA COMPRA = <%=mercadoriaSaida.getData_compra()%> <br>
        VALIDADE = <%=mercadoriaSaida.getValidade()%> <br>
        MARCA = <%=mercadoriaSaida.getMarca()%> <br>
    </div>
    </body>
</html>
