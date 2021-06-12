<%@page import="revisaodm2021n.modelos.DaoFornecedor"%>
<%@page import="revisaodm2021n.modelos.DaoRestaurante"%>
<%@page import="revisaodm2021n.dados.Fornecedor"%>
<%@page import="java.util.List"%>
<%@page import="revisaodm2021n.dados.Restaurante"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.controles.ControleMercadoria"%>
<%@page import="revisaodm2021n.dados.Mercadoria"%>

<%
    Restaurante restaurante = new Restaurante("");
    DaoRestaurante restauranteDao = new DaoRestaurante();
    List<Restaurante> listaDeRestaurantes = restauranteDao.listar(restaurante);

    Fornecedor fornecedor = new Fornecedor("");
    DaoFornecedor fornecedorDao = new DaoFornecedor();
    List<Fornecedor> listaDeFornecedores = fornecedorDao.listar(fornecedor);

%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INSERIR</h1>
        <form name="validaInseriMercadoria" action="validaInseriMercadoria.jsp" method="post">
            
                        
            NOME <input type="text" name="NOME" value=""> <br>
            DATA COMPRA <input type="text" name="DATA_COMPRA" value=""> <br>
            VALIDADE <input type="text" name="VALIDADE" value=""> <br>
            MARCA <input type="text" name="MARCA" value=""> <br>
            
            <select NAME ="ID_RESTAURANTE" class="browser-default">
                <option>Selecionar Restaurante</option>
                <% for (Restaurante res : listaDeRestaurantes) {%>
                <option value="<%=res.getId()%>"><%=res.getNome()%></option>
                <% } %>
            </select> <br>
            
            <select NAME ="ID_FORNECEDOR" class="browser-default">
                <option>Selecionar Fornecedor</option>
                <% for (Fornecedor forn : listaDeFornecedores) {%>
                <option value="<%=forn.getId()%>"><%=forn.getNome()%></option>
                <% } %>
            </select> <br>
            
            
            <input type="submit" name="INSERIR" value="INSERIR"> <br>
        </form>
    </div>
   </body>
</html>