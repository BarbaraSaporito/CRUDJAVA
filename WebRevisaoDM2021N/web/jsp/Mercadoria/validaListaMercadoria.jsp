
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="revisaodm2021n.dados.Mercadoria" %>
<%@page import="revisaodm2021n.controles.ControleMercadoria" %>


<%
    request.setCharacterEncoding("UTF-8");
    String nome = request.getParameter("NOME");
    Mercadoria mercadoriaEntrada = new Mercadoria(nome);
    ControleMercadoria contMercadoria = new ControleMercadoria();
    List<Mercadoria> mercadoriaSaida = contMercadoria.listar(mercadoriaEntrada);
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
                    <TD>DATA COMPRA</TD>
                    <TD>VALIDADE</TD>
                    <TD>MARCA</TD>
                    <TD>ID RESTAURANTE</TD>
                    <TD>ID FORNECEDOR</TD>
                    <TD>ALTERAR</TD>
                    <TD>EXCLUIR</TD>

                </TR>
             <% if(!(mercadoriaSaida.isEmpty())) { %>
                <% for (Mercadoria mercadoria :mercadoriaSaida){ %>
                <TR>
                    <TD><%=mercadoria.getId()%></TD>
                    <TD><%=mercadoria.getNome()%></TD>
                    <TD><%=mercadoria.getData_compra()%></TD>
                    <TD><%=mercadoria.getValidade()%></TD>
                    <TD><%=mercadoria.getMarca()%></TD>
                    <TD><%=mercadoria.getId_restaurante()%></TD>
                    <TD><%=mercadoria.getId_fornecedor()%></TD>
                    <TD><a href="../Mercadoria/alteraMercadoria.jsp?ID=<%=mercadoria.getId()%>">Altera</a></TD>
                    <TD><a href="../Mercadoria/validaExcluiMercadoria.jsp?ID=<%=mercadoria.getId()%>">Excluir</a></TD>
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
