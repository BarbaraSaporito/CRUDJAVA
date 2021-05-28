<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Fornecedor"%>
<%@page import="revisaodm2021n.controles.ControleFornecedor"%>

<%
    request.setCharacterEncoding("UTF-8");
    int id = Integer.parseInt(request.getParameter("ID"));
    Fornecedor fornecedorEntrada = new Fornecedor(id);
    ControleFornecedor contFornecedor = new ControleFornecedor();
    Fornecedor fornecedorSaida = contFornecedor.buscar(fornecedorEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
    <h1>VALIDA BUSCA</h1>
        <% if(fornecedorSaida != null) { %>
            Usuario = <%=fornecedorSaida.getId()%> | <%=fornecedorSaida.getNome()%> | <%=fornecedorSaida.getCep()%> | <%=fornecedorSaida.getEndereco()%> | <%=fornecedorSaida.getBairro()%> | <%=fornecedorSaida.getTelefone()%>  <br>   
        <% } else { %>
            ID Inválido!
        <% } %>
    </div>
    </body>
</html>
