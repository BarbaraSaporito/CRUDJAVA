<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Fornecedor"%>
<%@page import="revisaodm2021n.controles.ControleFornecedor"%>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Fornecedor fornecedorEntrada = new Fornecedor(id);
    ControleFornecedor fornecedorCont = new ControleFornecedor();
    Fornecedor fornecedorSaida = fornecedorCont.excluir(fornecedorEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDA EXCLUSÃO</h1>
        ID = <%=fornecedorSaida.getId()%> <br>
        NOME = <%=fornecedorSaida.getNome()%> <br>
        CEP = <%=fornecedorSaida.getCep()%> <br>
        ENDERECO = <%=fornecedorSaida.getEndereco()%> <br>
        BAIRRO = <%=fornecedorSaida.getBairro()%> <br>
        TELEFONE = <%=fornecedorSaida.getTelefone()%> <br>
    </div>
    </body>
</html>
