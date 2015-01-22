<%@ taglib prefix="ex" uri="/WEB-INF/printer.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>History</title>
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
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
                <p class="title">History</p>
                <p>&nbsp;</p>
            </div>
            <c:if test="${not empty result}">
                <ex:printHistory history="${result}"/>
            </c:if>
            ${error}
        </div>
        <div class="footer">
            Developer: Artur Buzov, 2014
        </div>
    </body>
</html>