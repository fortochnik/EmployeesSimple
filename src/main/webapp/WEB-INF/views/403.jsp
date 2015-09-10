<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<html>
<head>
    <title></title>
</head>
<body>
<table border="0" width="100%">
    <tr>
        <td align="left">Language : <a href="?lang=en">English </a>|<a href="?lang=ru"> Russian</a>

        </td>
        <td align="right">Current Locale: ${pageContext.response.locale} <a href="<c:url value="/j_spring_security_logout"/>"> <spring:message code="message.logout"/></a></td>
    </tr>
</table>
<br>No permissions. Change authorization or go to the <a href="/list">main page</a>
</body>
</html>
