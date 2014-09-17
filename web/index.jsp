<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 10/09/2014, 01:02:39 PM
    Author     : Alejandra
--%>

<sql:query var="subjects" dataSource="jdbc/myData">
    SELECT ClaveCarrera, name FROM carrera
</sql:query>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Examen 1</title>
    </head>
    <body>
        <p><h1>Bienvenidos!</h1>
        <br>
        Diana Alejandra Miranda Soto
        <br>
        946028
        <br>
    </p>


    <table border="0">
        <thead>
            <tr>
                <th>Carreras Profesionales</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Para ver las carreras profesionales del Tecnologico de Monterrey, seleccione un nombre de la lista:</td>
            </tr>
            <tr>
                <td><form action="response.jsp">
                        <strong>Selecciona una carrera:</strong>
                        <select name="ClaveCarrera">
                               <c:forEach var="row" items="${subjects.rowsByIndex}">
                                    <c:forEach var="column" items="${row}">
                                        <option value="<c:out value="${column}"/>"><c:out value="${column}"/></option>
                                    </c:forEach>
                                </c:forEach>
                            <option></option>
                            <option></option>
                        </select>
                        <input type="submit" value="Ver" name="ver" />
                    </form></td>
            </tr>
        </tbody>
    </table>
</body>
</html>
