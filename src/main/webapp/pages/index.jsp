<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Index</title>
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
                <p class="title">Welcome!!!</p>               
            </div>
            <div class='container'>
                <div class='cube'>
                    <div class='half1'>
                        <div class='side s1'>
                            <div class='in'></div>
                        </div>
                        <div class='side s2'>
                            <div class='in'></div>
                        </div>
                        <div class='side s5'>
                            <div class='in'></div>
                        </div>
                    </div>
                    <div class='half2'>
                        <div class='side s3'>
                            <div class='in'></div>
                        </div>
                        <div class='side s4'>
                            <div class='in'></div>
                        </div>
                        <div class='side s6'>
                            <div class='in'></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            Developer: Artur Buzov, 2014
        </div>
    </body>
</html>
