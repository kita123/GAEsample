<%@page pageEncoding="UTF-8" isELIgnored="false" session="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="f" uri="http://www.slim3.org/functions"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>ユーザ管理アプリ</title>
</head>
<body>
<style>
#users{
	border-collapse: collapse;
}
th,td{
	padding:5px;
	border:solid 1px #999;
}
.number{
	text-align: right;
}
</style>

<c:if test="${empty users}">
<p>ユーザがひとりも登録されていません</p>
</c:if>

<c:if test="${not empty users}">
<table id="users">
	<tr>
		<th>名前</th>
		<th>メアド</th>
		<th>登録日時</th>
	</tr>
	<c:forEach var="user" items="${users}">
		<tr>
			<td>${f:h(user.name)}</td>
			<td>${f:h(user.email)}</td>
			<td>
				<fmt:formatDate value="${user.createDate}" pattern="yyyy/MM/dd" />
			</td>
		</tr>
	</c:forEach>
</table>
</c:if>
</body>
</html>
