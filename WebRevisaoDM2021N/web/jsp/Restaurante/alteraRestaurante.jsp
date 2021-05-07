<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.dados.Restaurante"%>
<%@page import="revisaodm2021n.controles.ControleRestaurante"%>

<%
int id = Integer.parseInt(request.getParameter("ID"));
    Restaurante restauranteEntrada = new Restaurante(id);
    ControleRestaurante controleRestaurante = new ControleRestaurante();
    Restaurante restauranteSaida = controleRestaurante.buscar(restauranteEntrada);
%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAR</h1>
        <form name="validaAlteraRestaurante" action="validaAlteraRestaurante.jsp" method="post">
            ID <%=restauranteSaida.getId()%> <br>
            NOME <input type="text" name="NOME" value = "<%=restauranteSaida.getNome()%>"> <br>
            CEP <input type="text" name="CEP" value="<%=restauranteSaida.getCep()%>" > <br>
            ENDERECO <input type="text" name="ENDERECO" value="<%=restauranteSaida.getEndereco()%>" > <br>
            BAIRRO <input type="text" name="BAIRRO" value="<%=restauranteSaida.getBairro()%>"> <br>
            TELEFONE <input type="text" name="TELEFONE" value="<%=restauranteSaida.getTelefone()%>"> <br>
            <input type="hidden" name="ID" value="<%=restauranteSaida.getId()%>"> <br> 
            <input type="submit" name="ALTERAR" <br>
           
        </form>
    </div>
    </body>
</html>