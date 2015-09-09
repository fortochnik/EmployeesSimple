<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>
        <c:if test="${empty user.id}"> Добавление пользователя</c:if>
        <c:if test="${not empty user.id}"> Редактирование пользователя </c:if>
    </title>
</head>
<body>
<form:form method="POST" commandName="user">
    <form:hidden path="id"/>
    <table>
        <tr>
            <td>Имя</td>
            <td><form:input path="firstName"/></td>
        </tr>
        <tr>
            <td>Второе имя</td>
            <td><form:input path="secondName"/></td>
        </tr>
        <tr>
            <td>Фамилия</td>
            <td><form:input path="lastName"/></td>
        </tr>
        <tr>
            <td>Возраст</td>
            <td><form:input path="age"/></td>
        </tr>
        <tr>
            <td>Опыт</td>
            <td><form:input path="experience"/></td>
        </tr>
        <tr>
            <td>Описание</td>
            <td><form:input path="description"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Сохранить"/></td>
        </tr>
    </table>
</form:form>
</body>
</html>