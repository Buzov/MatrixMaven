<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ex" uri="/WEB-INF/printer.tld" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Edit matrix</title>
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
        <script type="text/javascript">
            function activator() {
                var idString = document.getElementById("id");
                var id = idString.options[idString.selectedIndex].value;
                if (id > 0) {
                    document.getElementById('get').disabled = false;
                } else {
                    document.getElementById('get').disabled = true;
                }
            }
        </script>
        <script>
            function addInput() {
                var e = document.getElementById("size");
                var size = e.options[e.selectedIndex].value;

                var newInputs = "";
                var i = 0;
                for (var k = 0; k < size * size; k++, i++) {
                    if (i == size) {
                        i = 0;
                        newInputs += "<br>";
                    }
                    newInputs += "<input size=5 type='text'  name=m" + k + " />";
                }
                document.getElementById('matrixFiled').innerHTML = newInputs;
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
                <p class="title">Edit matrix</p>
                <p>&nbsp;</p>
            </div>
            <center>
                <div class='title2'>
                    <form name="username" action="${pageContext.request.contextPath}/controller"  method="post">
                        Matrix:<!--<input id="cell" size="5" type="number" min="1" value="1" required="" step="1" name="idEdit">-->
                        <select id="id" class="select" name="idEdit" onchange="activator()">
                            <option value="0"></option>
                            ${message}
                            <c:if test="${not empty result}">
                                <ex:printMatrixlist matrixList="${result}"/>
                            </c:if>
                        </select>
                        ${error}
                       
                        <input type="submit" id="get" value="Get" disabled="disabled"/>
                        <input type="hidden" name="action" value="editMatrix"/>
                    </form>
                </div>
            </center>
        </div>
        <div class="footer">
            Developer: Artur Buzov, 2014
        </div>
    </body>
</html>
