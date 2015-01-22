<%@ taglib prefix="ex" uri="/WEB-INF/printer.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Multiplication of matrixes</title>
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
        <script type="text/javascript">
            function select() {
                var first = document.getElementById('colsA'),
                        second = document.getElementById('rowsB');

                first.onchange = second.onchange = function(e) {
                    e = e || window.event;
                    var target = e.target || e.srcElement;
                    var related = target === first ? second : first;

                    related.selectedIndex = target.selectedIndex;
                };
                inputMatrixA();
                inputMatrixB();
                activator();
            }
        </script>
        <script type="text/javascript">
            function activator() {
                var rA = document.getElementById("rowsA");
                var rowsA = rA.options[rA.selectedIndex].value;
                var cA = document.getElementById("colsA");
                var colsA = cA.options[cA.selectedIndex].value;
                var rB = document.getElementById("rowsB");
                var rowsB = rB.options[rB.selectedIndex].value;
                var cB = document.getElementById("colsB");
                var colsB = cB.options[cB.selectedIndex].value;



                if (rowsA > 0 && colsA > 0 && rowsB > 0 && colsB > 0) {
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
        <script type="text/javascript">
            function inputMatrixB() {
                var rB = document.getElementById("rowsB");
                var rowsB = rB.options[rB.selectedIndex].value;
                var cB = document.getElementById("colsB");
                var colsB = cB.options[cB.selectedIndex].value;

                var inputB = "";
                inputB += "<p>Matrix B</p>";
                inputB += "<table>";
                for (var i = 0; i < rowsB; i++) {
                    inputB += "<tr>";
                    for (var j = 0; j < colsB; j++) {
                        inputB += "<td><input id=\"input\" size=5 type=\"number\" value=\"0\" required step=\"any\" name=\"mB" + i + j + "\"" + "/></td>";
                    }
                    inputB += "</tr>";
                }
                inputB += "</table>";
                document.getElementById('matrixB').innerHTML = inputB;
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
                <p class="title"><span class="text"><img src="${pageContext.request.contextPath}/images/matrix2.gif" width="300" height="123" hspace="10" vspace="10" align="middle"></span></p>
                <p class="title">Multiplication of matrices</p>
                <p>&nbsp;</p>
            </div>



            <div class="table">
                <div>
                    <p class="title2">Input the parameters of matrixes A and B.</p>
                </div>
                <form class="form" name="username" action="${pageContext.request.contextPath}/controller"  method="post">
                    <p>A:<select id="rowsA" class="select_input" name="rowsA" onchange="inputMatrixA();
                            inputMatrixB()">
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
                        x <select id="colsA" class="select_input" name="colsA" onclick="select()" onchange="inputMatrixA();
                                inputMatrixB()">
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
                    <p>B:<select id="rowsB" class="select_input" name="rowsB" onclick="select()" onchange="inputMatrixA();
                            inputMatrixB()">
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
                        x <select id="colsB" class="select_input" name="colsB" onchange="inputMatrixA();
                                inputMatrixB()">
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
                    <div id="matrixB"></div>
                    <br>
                    <p><input type="submit" id="Ok" value="Ok!" disabled="disabled"/></p>
                    <input type="hidden" name="action" value="inputAndMultiply">
                </form>
            </div>
            <div>
                <c:if test="${not empty result}">
                    <ex:printMatrix matrix="${result}"/>
                </c:if>
                ${error}
            </div>
        </div>
        <div class="footer">
            Developer: Artur Buzov, 2014
        </div>
    </body>
</html>
