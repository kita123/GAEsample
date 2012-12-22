<%@page pageEncoding="UTF-8" isELIgnored="false" session="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="f" uri="http://www.slim3.org/functions"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>todo Index</title>

<style>
form {
	border:solid 1px #999;
	padding:10 5px;
	}
</style>
</head>
<body>
<form action="create">
<p><input type="text" name="description"></p>
<p><input type="submit" value="登録する"></p>
</form>
</body>
</html>
