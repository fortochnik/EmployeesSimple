
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Delete Employee</title>
</head>
<body>

<table border="0" width="100%">
    <tr>
        <td align="left">Language : <a href="?lang=en">English </a>|<a href="?lang=ru"> Russian</a>

        </td>
        <td align="right">Current Locale: ${pageContext.response.locale} <a href="<c:url value="/j_spring_security_logout"/>"> <spring:message code="message.logout"/></a></td>
    </tr>
</table>
<center>
    <spring:message code="message.delete_question"/> "<c:out value="${user.firstName}"/> <c:out value="${user.lastName}"/>"?

    <table border="0" align="center" >
        <tr>
            <td valign="middle" >
                <div class="button-yes">
                    <form method="POST" action="/user/delete/${user.id}">
                        <input type="submit" value="<spring:message code="message.yes"/>">
                    </form>
                </div>
            </td>
            <td valign="middle">
                |
            </td>
            <td valign="middle">
                <div class="button-no">
                    <form method="GET" action="/list">
                        <input type="submit" value="<spring:message code="message.no"/>">
                    </form>
                </div>
            </td>
        </tr>

    </table>

</center>

</body>
</html>
