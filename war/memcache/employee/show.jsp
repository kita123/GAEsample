<%@page pageEncoding="UTF-8" isELIgnored="false" session="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="f" uri="http://www.slim3.org/functions"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>従業員詳細</title>
</head>
<style>
table{
	border-collapse:collapse;
}
yh,td{
	padding: 5px 20px 5px 10px;
	border: solid; 1px #999;
	text-align: left;
}
</style>


<body>
<table>
<tr>
<th>ID</th>
<td>${employee.key.id}</td>
</tr>
<tr>
<th>Name</th>
<td>${f:h(employee.name)}</td>
</tr>
<tr>
<th>Dept ID</th>
<td>${employee.deptKey.id}</td>
</tr>
</table>
</body>
</html>
