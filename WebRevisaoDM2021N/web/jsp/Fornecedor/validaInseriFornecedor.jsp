
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Fornecedor"%>
<%@page import="revisaodm2021n.controles.ControleFornecedor"%>

<%
    request.setCharacterEncoding("UTF-8");
    String nome = request.getParameter("NOME");
    String cep = request.getParameter("CEP");
    String endereco = request.getParameter("ENDERECO");
    String bairro = request.getParameter("BAIRRO");
    String telefone = request.getParameter("TELEFONE");

    Fornecedor fornecedorEntrada = new Fornecedor(nome,cep,endereco,bairro, telefone);
    ControleFornecedor fornecedorCont = new ControleFornecedor();
    Fornecedor fornecedorSaida = fornecedorCont.inserir(fornecedorEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INCLUSÃO CONCLUIDA</h1>
        ID = <%=fornecedorSaida.getId()%> <br>
        NOME = <%=fornecedorSaida.getNome()%> <br>
        CEP = <%=fornecedorSaida.getCep()%> <br>
        ENDERECO = <%=fornecedorSaida.getEndereco()%> <br>
        BAIRRO = <%=fornecedorSaida.getBairro()%> <br>
        TELEFONE = <%=fornecedorSaida.getTelefone()%> <br>
    </div>
    </body>
</html>
