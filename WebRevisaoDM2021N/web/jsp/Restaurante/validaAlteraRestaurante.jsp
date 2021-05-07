<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Restaurante"%>
<%@page import="revisaodm2021n.controles.ControleRestaurante"%>

<%
    request.setCharacterEncoding("UTF-8");
    int id = Integer.parseInt(request.getParameter("ID"));
    String nome = request.getParameter("NOME");
    String cep = request.getParameter("CEP");
    String endereco = request.getParameter("ENDERECO");
    String bairro = request.getParameter("BAIRRO");
    String telefone = request.getParameter("TELEFONE");

    Restaurante rEntrada = new Restaurante(id,nome,cep,endereco, bairro, telefone);
    ControleRestaurante resCont = new ControleRestaurante();
    Restaurante rSaida = resCont.alterar(rEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAÇÃO CONCLUIDA</h1>
        ID = <%=rSaida.getId()%> <br>
        NOME = <%=rSaida.getNome()%> <br>
        CEP = <%=rSaida.getCep()%> <br>
        ENDERECO = <%=rSaida.getEndereco()%> <br>
        BAIRRO = <%=rSaida.getBairro()%> <br>
        TELEFONE = <%=rSaida.getTelefone()%> <br>
    </div>
    </body>
</html>
