<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="revisaodm2021n.controles.ControleRestaurante"%>
<%@page import="revisaodm2021n.dados.Restaurante"%>


<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INSERIR</h1>
        <form name="validaInseriRestaurante" action="validaInseriRestaurante.jsp" method="post">
            NOME <input type="text" name="NOME" value=""> <br>
            CEP <input type="text" name="CEP" value=""> <br>
            ENDERECO <input type="text" name="ENDERECO" value=""> <br>
            BAIRRO <input type="text" name="BAIRRO" value=""> <br>
            TELEFONE <input type="text" name="TELEFONE" value=""> <br>
            <input type="submit" name="INSERIR" value="INSERIR"> <br>
        </form>
    </div>
   </body>
</html>