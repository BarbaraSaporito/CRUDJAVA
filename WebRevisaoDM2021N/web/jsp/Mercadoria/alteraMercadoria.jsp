<%@page import="revisaodm2021n.controles.ControleFornecedor"%>
<%@page import="revisaodm2021n.dados.Fornecedor"%>
<%@page import="java.util.List"%>
<%@page import="revisaodm2021n.controles.ControleRestaurante"%>
<%@page import="revisaodm2021n.dados.Restaurante"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Mercadoria"%>
<%@page import="revisaodm2021n.controles.ControleMercadoria"%>

<%
int id = Integer.parseInt(request.getParameter("ID"));
    Mercadoria mercadoriaEntrada = new Mercadoria(id);
    ControleMercadoria controleMercadoria = new ControleMercadoria();
    Mercadoria mercadoriaSaida = controleMercadoria.buscar(mercadoriaEntrada);
%>
<%
    Restaurante restauranteEntrada = new Restaurante(Integer.parseInt(mercadoriaSaida.getId_restaurante()));
    ControleRestaurante controleRestaurante = new ControleRestaurante();
    restauranteEntrada = controleRestaurante.buscar(restauranteEntrada);
    controleRestaurante = new ControleRestaurante();
    List<Restaurante> listaRestauranteSaida = controleRestaurante.listar(new Restaurante(""));
%>

<%
    Fornecedor fornecedorEntrada = new Fornecedor(Integer.parseInt(mercadoriaSaida.getId_fornecedor()));
    ControleFornecedor controleFornecedor = new ControleFornecedor();
    fornecedorEntrada = controleFornecedor.buscar(fornecedorEntrada);
    controleFornecedor = new ControleFornecedor();
    List<Fornecedor> listaFornecedorSaida = controleFornecedor.listar(new Fornecedor(""));
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAR</h1>
        <form name="validaAlteraMercadoria" action="validaAlteraMercadoria.jsp" method="post">
            ID <%=mercadoriaSaida.getId()%> <br>
            NOME <input type="text" name="NOME" value = "<%=mercadoriaSaida.getNome()%>"> <br>
            DATA COMPRA <input type="text" name="DATA_COMPRA" value="<%=mercadoriaSaida.getData_compra()%>" > <br>
            VALIDADE <input type="text" name="VALIDADE" value="<%=mercadoriaSaida.getValidade()%>" > <br>
            MARCA <input type="text" name="MARCA" value="<%=mercadoriaSaida.getMarca()%>"> <br>
            <select NAME ="ID_RESTAURANTE" class="browser-default">
                <option value="<%=restauranteEntrada.getId()%>" selected><%=restauranteEntrada.getNome()%></option>
                <% for (Restaurante res : listaRestauranteSaida) {
                        if (restauranteEntrada.getId() != res.getId()) {%>
                <option value="<%=res.getId()%>"><%=res.getNome()%></option>
                <% }
                    }%>        
            </select>

            <select NAME ="ID_FORNECEDOR" class="browser-default">
                <option value="<%=fornecedorEntrada.getId()%>" selected><%=fornecedorEntrada.getNome()%></option>
                <% for (Fornecedor forn : listaFornecedorSaida) {
                        if (fornecedorEntrada.getId() != forn.getId()) {%>
                <option value="<%=forn.getId()%>"><%=forn.getNome()%></option>
                <% }
                    }%>
            </select>
            <input type="hidden" name="ID" value="<%=mercadoriaSaida.getId()%>"> <br> 
            <input type="submit" name="ALTERAR" <br>
           
        </form>
    </div>
    </body>
</html>