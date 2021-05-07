
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="revisaodm2021n.dados.Restaurante" %>
<%@page import="revisaodm2021n.controles.ControleRestaurante" %>


<%
    request.setCharacterEncoding("UTF-8");
    String nome = request.getParameter("NOME");
    Restaurante rEntrada = new Restaurante(nome);
    ControleRestaurante contUsu = new ControleRestaurante();
    List<Restaurante> reSaida = contUsu.listar(rEntrada);
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
             <% if(!(reSaida.isEmpty())) { %>
                <% for (Restaurante usu :reSaida){ %>
                <TR>
                    <TD><%=usu.getId()%></TD>
                    <TD><%=usu.getNome()%></TD>
                    <TD><%=usu.getCep()%></TD>
                    <TD><%=usu.getEndereco()%></TD>
                    <TD><%=usu.getBairro()%></TD>
                    <TD><%=usu.getTelefone()%></TD>
                    <TD><a href="../Restaurante/alteraRestaurante.jsp?ID=<%=usu.getId()%>">Altera</a></TD>
                    <TD><a href="../Restaurante/validaExcluiRestaurante.jsp?ID=<%=usu.getId()%>">Excluir</a></TD>
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
