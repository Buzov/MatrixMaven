<%@ taglib prefix="ex" uri="/WEB-INF/printer.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Edit matrix</title>
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
                <p class="title">Edit matrix</p>
                <p>&nbsp;</p>
            </div>
            <form class="form" name="username" action="controller" method="post">
                <c:out value="${message}"/>
                <c:if test="${not empty result}">
                    <ex:printAndEditMatrix matrix="${result}"/>
                </c:if>
                <div class="center_coment">
                    ${error}
                </div>
            </form>
        </div>
        <div class="footer">
            Developer: Artur Buzov, 2014
        </div>
    </body>
</html>