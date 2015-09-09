
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Delete Employee</title>
</head>
<body>
<center>
    A you sure to delete Employee "<c:out value="${user.firstName}"/> <c:out value="${user.lastName}"/>"?

    <table border="0" align="center" >
        <tr>
            <td valign="middle" >
                <div class="button-yes">
                    <form method="POST" action="/user/delete/${user.id}">
                        <input type="submit" value="Yes">
                    </form>
                </div>
            </td>
            <td valign="middle">
                |
            </td>
            <td valign="middle">
                <div class="button-no">
                    <form method="GET" action="/list">
                        <input type="submit" value="No">
                    </form>
                </div>
            </td>
        </tr>

    </table>

</center>

</body>
</html>
