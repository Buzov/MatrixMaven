<%@ taglib prefix="ex" uri="/WEB-INF/printer.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Multiply matrix</title>
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
        <script type="text/javascript" src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $('#firstMatrix').change(function() {
                    var idString = document.getElementById("firstMatrix");
                    var id = idString.options[idString.selectedIndex].value;
                    var data = "matrix_id=" + id;
                    data = data + "&action=result_multiply";

                    $.ajax({
                        type: "POST",
                        url: "${pageContext.request.contextPath}/controller",
                        data: data,
                        success: function(response) {
                            $("#matrix1").html(response);
                        }
                    });

                });

                $('#secondMatrix').change(function() {
                    var idString = document.getElementById("secondMatrix");
                    var id = idString.options[idString.selectedIndex].value;
                    var data = "matrix_id=" + id;
                    data = data + "&action=result_multiply";

                    $.ajax({
                        type: "POST",
                        url: "${pageContext.request.contextPath}/controller",
                        data: data,
                        success: function(response) {
                            $("#matrix2").html(response);
                        }
                    });
                });
            });
        </script>
        <!--<script type="text/javascript">
            $(document).ready(function() {
                $('#secondMatrix').change(function() {
                    $("#matrix2").text("ertertertert");
                });
            });
        </script>-->
        <script type="text/javascript">
            function activator() {
                var idFirstString = document.getElementById("firstMatrix");
                var idFirst = idFirstString.options[idFirstString.selectedIndex].value;
                var idSecondString = document.getElementById("secondMatrix");
                var idSecond = idSecondString.options[idSecondString.selectedIndex].value;
                if (idFirst > 0 && idSecond > 0) {
                    document.getElementById('submit').disabled = false;
                } else {
                    document.getElementById('submit').disabled = true;
                }
            }
        </script>
    </head>
    <body>
        <div class="main">
            <div class="content">
                <jsp:include page="menu.jsp"/>
                <br>
                <br>
                <br>
                <br>
                <br>
                <p class="title">Multiply matrix</p>               
            </div>
            <div class="title2">
                <form action="${pageContext.request.contextPath}/controller" method="post">
                    <!--<input id="cell" size="5" type="number" min="1" value="1" required="" step="1" name="firstMatrix">-->
                    <!--<input id="cell" size="5" type="number" min="1" value="1" required="" step="1" name="secondMatrix">-->
                    First matrix
                    <select id="firstMatrix" name="firstMatrix" onchange="activator()">
                        <option value="0"></option>
                        <c:if test="${not empty result}">
                            <ex:printMatrixlist matrixList="${result}"/>
                        </c:if>
                        <c:out value="${error}"/>
                    </select>
                    Second matrix
                    <select id="secondMatrix" name="secondMatrix" onchange="activator()">
                        <option value="0"></option>
                        <c:if test="${not empty result}">
                            <ex:printMatrixlist matrixList="${result}"/>
                        </c:if>
                        <div class="center_coment">
                            ${error}
                            <div>
                                </select>
                                <input type="submit" id="submit" value="Multiply" disabled="disabled"/>
                                <input type="hidden" name="action" value="multiply"/>
                                </form>
                            </div>
                        
               
            <div id="matrix1"></div>
            <div id="matrix2"></div>
        </div>
        <div class="footer">
            Developer: Artur Buzov, 2014
        </div>
    </body>
</html>
