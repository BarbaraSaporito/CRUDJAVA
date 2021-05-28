<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.controles.ControleMercadoria"%>
<%@page import="revisaodm2021n.dados.Mercadoria"%>


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
            ID RESTAURANTE <input type="text" name="ID_RESTAURANTE" value=""> <br>
            ID FORNECEDOR <input type="text" name="ID_FORNECEDOR" value=""> <br>
            <input type="submit" name="INSERIR" value="INSERIR"> <br>
        </form>
    </div>
   </body>
</html>