<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Restaurante"%>
<%@page import="revisaodm2021n.controles.ControleRestaurante"%>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Restaurante rEntrada = new Restaurante(id);
    ControleRestaurante resCont = new ControleRestaurante();
    Restaurante rSaida = resCont.excluir(rEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDA EXCLUSÃO</h1>
        ID = <%=rSaida.getId()%> <br>
        NOME = <%=rSaida.getNome()%> <br>
        CEP = <%=rSaida.getCep()%> <br>
        ENDERECO = <%=rSaida.getEndereco()%> <br>
        BAIRRO = <%=rSaida.getBairro()%> <br>
        TELEFONE = <%=rSaida.getTelefone()%> <br>
    </div>
    </body>
</html>
