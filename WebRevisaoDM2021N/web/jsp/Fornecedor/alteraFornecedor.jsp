<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Fornecedor"%>
<%@page import="revisaodm2021n.controles.ControleFornecedor"%>

<%
int id = Integer.parseInt(request.getParameter("ID"));
    Fornecedor fornecedorEntrada = new Fornecedor(id);
    ControleFornecedor controleFornecedor = new ControleFornecedor();
    Fornecedor fornecedorSaida = controleFornecedor.buscar(fornecedorEntrada);
%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAR</h1>
        <form name="validaAlteraFornecedor" action="validaAlteraFornecedor.jsp" method="post">
            ID <%=fornecedorSaida.getId()%> <br>
            NOME <input type="text" name="NOME" value = "<%=fornecedorSaida.getNome()%>"> <br>
            CEP <input type="text" name="CEP" value="<%=fornecedorSaida.getCep()%>" > <br>
            ENDERECO <input type="text" name="ENDERECO" value="<%=fornecedorSaida.getEndereco()%>" > <br>
            BAIRRO <input type="text" name="BAIRRO" value="<%=fornecedorSaida.getBairro()%>"> <br>
            TELEFONE <input type="text" name="TELEFONE" value="<%=fornecedorSaida.getTelefone()%>"> <br>
            <input type="hidden" name="ID" value="<%=fornecedorSaida.getId()%>"> <br> 
            <input type="submit" name="ALTERAR" <br>
           
        </form>
    </div>
    </body>
</html>