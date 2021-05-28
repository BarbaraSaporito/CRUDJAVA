
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Mercadoria"%>
<%@page import="revisaodm2021n.controles.ControleMercadoria"%>

<%
    request.setCharacterEncoding("UTF-8");
    String nome = request.getParameter("NOME");
    String data_compra = request.getParameter("DATA_COMPRA");
    String validade = request.getParameter("VALIDADE");
    String marca = request.getParameter("MARCA");
    String id_restaurante = request.getParameter("ID_RESTAURANTE");
    String id_fornecedor = request.getParameter("ID_FORNECEDOR");
    

    Mercadoria mercadoriaEntrada = new Mercadoria(nome,data_compra,validade,marca, id_restaurante, id_fornecedor);
    ControleMercadoria mercadoriaCont = new ControleMercadoria();
    Mercadoria mercadoriaSaida = mercadoriaCont.inserir(mercadoriaEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INCLUSÃO CONCLUIDA</h1>
        ID = <%=mercadoriaSaida.getId()%> <br>
        NOME = <%=mercadoriaSaida.getNome()%> <br>
        DATA COMPRA = <%=mercadoriaSaida.getData_compra()%> <br>
        VALIDADE = <%=mercadoriaSaida.getValidade()%> <br>
        MARCA = <%=mercadoriaSaida.getMarca()%> <br>
        ID RESTAURANTE = <%=mercadoriaSaida.getId_restaurante()%> <br>
        ID FORNECEDOR = <%=mercadoriaSaida.getId_fornecedor()%> <br>
    </div>
    </body>
</html>
