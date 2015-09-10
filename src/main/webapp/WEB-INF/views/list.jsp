<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><spring:message code="message.title"/></title>
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

    <div style="color: teal; font-size: 30px"><spring:message code="message.title"/></div>

    <form method="POST" action="/search">
        <p><select name="search_tag">
            <option value="firstName"><spring:message code="message.first_name"/></option>
            <option value="lastName"><spring:message code="message.last_name"/></option>
            <option value="secondName"><spring:message code="message.second_name"/></option>
            <option value="age"><spring:message code="message.age"/></option>
            <option value="experience"><spring:message code="message.experience"/></option>
            <option value="description"><spring:message code="message.description"/></option>
        </select>
        <input type="text" name="search_text" >
        <input type="submit" value="<spring:message code="message.search"/>">
        </p>
    </form>



    <c:if test="${!empty employeeList}">
        <table border="1" bgcolor="black" width="640px">
            <tr
                    style="background-color: teal; color: white; text-align: center;"
                    height="40px">

                <td><spring:message code="message.first_name"/></td>
                <td><spring:message code="message.last_name"/></td>
                <td><spring:message code="message.second_name"/></td>
                <td><spring:message code="message.age"/></td>
                <td><spring:message code="message.experience"/></td>
                <td><spring:message code="message.description"/></td>
                <td><spring:message code="message.actions"/></td>
            </tr>
            <c:forEach items="${employeeList}" var="user">
                <tr
                        style="background-color: white; color: black; text-align: center;"
                        height="30px">

                    <td><c:out value="${user.firstName}" />
                    </td>
                    <td><c:out value="${user.lastName}" />
                    </td>
                    <td><c:out value="${user.secondName}" />
                    </td>
                    <td><c:out value="${user.age}" />
                    </td>
                    <td><c:out value="${user.experience}" />
                    </td>
                    <td><c:out value="${user.description}" />
                    <td><a href="user/modify/${user.id}"><spring:message code="message.modify"/></a> | <a href="user/delete/${user.id}"><spring:message code="message.delete"/></a></td>
                </tr>
            </c:forEach>
        </table>

    </c:if>
    <c:if test="${empty employeeList}">
        <spring:message code="message.empty"/>
    </c:if>
    <c:if test="${not empty result}"> <br><a href="/add"><spring:message code="message.create"/></a></c:if>
    <c:if test="${empty result}"><br><a href="/list"><spring:message code="message.drop"/></a></c:if>
</center>

</body>
</html>  