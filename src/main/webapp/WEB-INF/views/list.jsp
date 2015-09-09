<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>List of Employees</title>
</head>
<body>
<a href="<c:url value="/j_spring_security_logout" />" > Logout</a>
<center>

    <div style="color: teal; font-size: 30px">List of Employees</div>

    <%--<form:form method="POST" modelAttribute="employee" action="list">
        <table>
            <tbody>
            <tr>
                <td>
                    <ul>
                        <form:select path="firstName" >
                            <form:option value="NONE"> --SELECT--</form:option>
                            <form:options items="${searchParameters}"/>
                        </form:select>
                    </ul>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="Submit">
                </td>
            </tr>
            </tbody></table>
    </form:form>--%>

    <form method="POST" action="/search">
        <p><select name="search_tag">
            <option value="firstName">Имя</option>
            <option value="lastName">Фамилия</option>
            <option value="secondName">Второе имя</option>
            <option value="age">Возраст</option>
            <option value="experience">Опыт</option>
            <option value="description">Описание</option>
        </select>
        <input type="text" name="search_text" >
        <input type="submit" value="Search">
        </p>
    </form>



    <c:if test="${!empty employeeList}">
        <table border="1" bgcolor="black" width="600px">
            <tr
                    style="background-color: teal; color: white; text-align: center;"
                    height="40px">

                <td>first Name</td>
                <td>last Name</td>
                <td>second Name</td>
                <td>age</td>
                <td>experience</td>
                <td>description</td>
                <td>actions</td>
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
                    <td><a href="user/modify/${user.id}">modify</a> | <a href="user/delete/${user.id}">delete</a></td>
                </tr>
            </c:forEach>
        </table>



    </c:if>
    <c:if test="${empty employeeList}">
        The result is empty.
    </c:if>
    <c:if test="${not empty result}"> <br><a href="/add">create new Employee</a></c:if>
    <c:if test="${empty result}"><br><a href="/list">drop search result</a></c:if>



</center>

</body>
</html>  