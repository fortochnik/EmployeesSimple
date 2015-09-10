<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
    <title>
        <c:if test="${empty user.id}"> Добавление пользователя</c:if>
        <c:if test="${not empty user.id}"> Редактирование пользователя </c:if>
    </title>
</head>
<body>

<table border="0" width="100%">
    <tr>
        <td align="left">Language : <a href="?lang=en">English </a>|<a href="?lang=ru"> Russian</a>

        </td>
        <td align="right">Current Locale: ${pageContext.response.locale} <a href="<c:url value="/j_spring_security_logout"/>"> <spring:message code="message.logout"/></a></td>
    </tr>
</table>

<form:form method="POST" commandName="user">
    <form:hidden path="id"/>
    <table>
        <tr>
            <td><spring:message code="message.first_name"/></td>
            <td><form:input path="firstName"/></td>
        </tr>
        <tr>
            <td><spring:message code="message.second_name"/></td>
            <td><form:input path="secondName"/></td>
        </tr>
        <tr>
            <td><spring:message code="message.last_name"/></td>
            <td><form:input path="lastName"/></td>
        </tr>
        <tr>
            <td><spring:message code="message.age"/></td>
            <td><form:input path="age"/></td>
        </tr>
        <tr>
            <td><spring:message code="message.experience"/></td>
            <td><form:input path="experience"/></td>
        </tr>
        <tr>
            <td><spring:message code="message.description"/></td>
            <td><form:input path="description"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="<spring:message code="message.save"/>"/></td>
        </tr>
    </table>
</form:form>
</body>
</html>