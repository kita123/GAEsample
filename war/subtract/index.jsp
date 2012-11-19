<%@page pageEncoding="UTF-8" isELIgnored="false" session="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="f" uri="http://www.slim3.org/functions"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>引き算サイト</title>
</head>
<body>
<form action="calc">
<p>
<input type="text" name="x" size="4">-
<input type="text" name="y" size="4">=
</p>
<p>
<input type="submit" value="計算">
</p>
</form>
</body>
</html>
