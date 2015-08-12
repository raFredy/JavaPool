<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Bebidas!</h1>
        <table>
            <tr>
                <td>Codigo</td>
                <td>Cantidad</td>
                <td>Nombre</td>
                <td>Valor</td>
            </tr>
        <c:forEach items="${Inventario}" var="inv">
            <tr><td>${inv.codigoI}</td><td> ${inv.cantidadI}</td><td>${inv.nombreI}</td><td>${inv.valorI}</td></tr>
        </c:forEach>
        </table>
    </body>
</html>
            