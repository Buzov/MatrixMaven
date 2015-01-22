<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ex" uri="/WEB-INF/printer.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Add matrix</title>
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">

        <script type="text/javascript">
            function activator() {
                var rA = document.getElementById("rowsA");
                var rowsA = rA.options[rA.selectedIndex].value;
                var cA = document.getElementById("colsA");
                var colsA = cA.options[cA.selectedIndex].value;
                if (rowsA > 0 && colsA > 0) {
                    document.getElementById('Ok').disabled = false;
                } else {
                    document.getElementById('Ok').disabled = true;
                }
            }
        </script>
        <script type="text/javascript">
            function inputMatrixA() {
                var rA = document.getElementById("rowsA");
                var rowsA = rA.options[rA.selectedIndex].value;
                var cA = document.getElementById("colsA");
                var colsA = cA.options[cA.selectedIndex].value;
                var inputA = "";
                inputA += "<p>Matrix A</p>";
                inputA += "<table>";
                for (var i = 0; i < rowsA; i++) {
                    inputA += "<tr>";
                    for (var j = 0; j < colsA; j++) {
                        inputA += "<td><input id=\"input\" size=5 type=\"number\" value=\"0\" required step=\"any\"/ name=\"mA" + i + j + "\"" + "/></td>";
                    }
                    inputA += "</tr>";
                }
                inputA += "</table>";
                document.getElementById('matrixA').innerHTML = inputA;
                activator();
            }
        </script>
    </head>
    <body>
        <%if (request.getParameter("session") != null && request.getParameter("session").equals("0")) {
                session.invalidate();
                request.getSession(true);
            }%>
        <div class="main">



            <div class="content">
                <jsp:include page="menu.jsp"/>
                <br>
                <br>
                <br>
                <br>
                <br>
                <p class="title">Add matrix</p>
                <p>&nbsp;</p>
            </div>



            <div class="table">
                <div>
                    <p class="title2">Input the parameters of the matrix A.</p>
                </div>
               
                <form class="form" name="username" action="${pageContext.request.contextPath}/controller" method="post">
                    <!--Matrix id:<input id="cell" size="5" type="number" min="1" value="1" required="" step="1" name="idA">-->
                    <p>A:<select id="rowsA" name="rowsA" onchange="inputMatrixA()">
                            <option value="0"></option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                        </select>
                        x <select id="colsA" name="colsA" onchange="inputMatrixA()">
                            <option value="0"></option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                        </select></p>
                    <br>
                    <div id="matrixA"></div>
                    <br>
                    <p><input type="submit" id="Ok" value="Ok!" disabled="disabled"/></p>
                    <input type="hidden" name="action" value="addMatrix">
                </form>
                ${message}
            </div>
        </div>
        <div class="footer">
            Developer: Artur Buzov, 2014
        </div>
    </body>
</html>

