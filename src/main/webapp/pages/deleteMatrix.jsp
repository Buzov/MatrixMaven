<%@ taglib prefix="ex" uri="/WEB-INF/printer.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Delete matrix</title>
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
        <script type="text/javascript">
            function activator() {
                var idString = document.getElementById("id");
                var id = idString.options[idString.selectedIndex].value;
                if (id > 0) {
                    document.getElementById('Delete').disabled = false;
                } else {
                    document.getElementById('Delete').disabled = true;
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
                <p class="title">Delete matrix</p>               
            </div>
            <div class='title2'>
                <form name="username" action="${pageContext.request.contextPath}/controller" method="post">
                    Matrix:<!--<input id="cell" size="5" type="number" min="1" value="1" required="" step="1" name="idA">-->
                    <select id="id" class="select" name="idA" onchange="activator()">
                    <option value="0"></option>
                    <c:if test="${not empty result}">
                        <ex:printMatrixlist matrixList="${result}"/>
                    </c:if>
                    <c:out value="${error}"/>
                    </select>
                    <input type="submit" id="Delete" value="Delete" disabled="disabled"/>
                    <input type="hidden" name="action" value="deleteMatrix"/>
                </form>
            </div>
            ${message}
        </div>
        <div class="footer">
            Developer: Artur Buzov, 2014
        </div>
    </body>
</html>
