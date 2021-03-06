<%@page pageEncoding="UTF-8" isELIgnored="false" session="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="f" uri="http://www.slim3.org/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>アイテム一覧</title>
</head>
<body>
<style>
table {
	border-collapse: collapse;
}
th,td{
border: solid 1px #999;
padding: 4px;
}
</style>

<table>
<tr>
<th>ID</th>
<th>名前</th>
<th>価格</th>
<th></th>
</tr>
<c:forEach var="item" items="${items}">
<tr>
<td>${item.key.id}</td>
<td>${f:h(item.name)}</td>
<td>${item.price}</td>
<td><a href="edit?id=${item.key.id}">編集</a></td>
</tr>
</c:forEach>
</table>
<p>Hello taskqueue item List !!!</p>
</body>
</html>
