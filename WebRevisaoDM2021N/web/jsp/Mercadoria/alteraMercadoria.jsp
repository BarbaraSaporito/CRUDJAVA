<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Mercadoria"%>
<%@page import="revisaodm2021n.controles.ControleMercadoria"%>

<%
int id = Integer.parseInt(request.getParameter("ID"));
    Mercadoria mercadoriaEntrada = new Mercadoria(id);
    ControleMercadoria controleMercadoria = new ControleMercadoria();
    Mercadoria mercadoriaSaida = controleMercadoria.buscar(mercadoriaEntrada);
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
            ID RESTAURANTE <input type="text" name="ID_RESTAURANTE" value="<%=mercadoriaSaida.getId_restaurante()%>"> <br>
            ID FORNECEDOR <input type="text" name="ID_FORNECEDOR" value="<%=mercadoriaSaida.getId_fornecedor()%>"> <br>
            <input type="hidden" name="ID" value="<%=mercadoriaSaida.getId()%>"> <br> 
            <input type="submit" name="ALTERAR" <br>
           
        </form>
    </div>
    </body>
</html>