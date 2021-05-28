
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="revisaodm2021n.dados.Fornecedor" %>
<%@page import="revisaodm2021n.controles.ControleFornecedor" %>


<%
    request.setCharacterEncoding("UTF-8");
    String nome = request.getParameter("NOME");
    Fornecedor fornecedorEntrada = new Fornecedor(nome);
    ControleFornecedor contFornecedor = new ControleFornecedor();
    List<Fornecedor> fornecedorSaida = contFornecedor.listar(fornecedorEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>LISTA</h1> <br>
            <TABLE>
                <TR>
                    <TD>ID</TD>
                    <TD>NOME</TD>
                    <TD>CEP</TD>
                    <TD>ENDERECO</TD>
                    <TD>BAIRRO</TD>
                    <TD>TELEFONE</TD>
                    <TD>ALTERAR</TD>
                    <TD>EXCLUIR</TD>

                </TR>
             <% if(!(fornecedorSaida.isEmpty())) { %>
                <% for (Fornecedor fornecedor :fornecedorSaida){ %>
                <TR>
                    <TD><%=fornecedor.getId()%></TD>
                    <TD><%=fornecedor.getNome()%></TD>
                    <TD><%=fornecedor.getCep()%></TD>
                    <TD><%=fornecedor.getEndereco()%></TD>
                    <TD><%=fornecedor.getBairro()%></TD>
                    <TD><%=fornecedor.getTelefone()%></TD>
                    <TD><a href="../Fornecedor/alteraFornecedor.jsp?ID=<%=fornecedor.getId()%>">Altera</a></TD>
                    <TD><a href="../Fornecedor/validaExcluiFornecedor.jsp?ID=<%=fornecedor.getId()%>">Excluir</a></TD>
                </TR>
                <% } %>
            <% } else { %>
                <TR>
                    <TD>LISTA VAZIA</TD>
                </TR>
           <% } %>
            </table>
    </div>
    </body>
</html>
