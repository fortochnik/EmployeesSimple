<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title></title>
</head>
<body>
<a href="<c:url value="/j_spring_security_logout" />" > Logout</a>
<br>No permissions. Change authorization or go to the <a href="/list">main page</a>
</body>
</html>
