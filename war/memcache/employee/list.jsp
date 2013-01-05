<%@page pageEncoding="UTF-8" isELIgnored="false" session="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="f" uri="http://www.slim3.org/functions"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>従業員一覧</title>
</head>
<style>
table {
	border-collapse: collapse;
}
th,td{
	padding: 5px 20px 5px 10px;
	border: solid 1px #999;
	text-align: left;
}
</style>
<body>
<table>
<tr>
<th>ID</th>
<th>Name</th>
<th>Dept</th>
</tr>
<c:forEach var="employee" items="${employees}">
<tr>
<td>${employee.key.id}</td>
<td>${f:h(employee.name)}</td>
<td>${employee.dept.name}</td>
</tr>
</c:forEach>
</table>

</body>
</html>
