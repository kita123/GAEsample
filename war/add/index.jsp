<%@page pageEncoding="UTF-8" isELIgnored="false" session="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="f" uri="http://www.slim3.org/functions"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>足し算サイト</title>
</head>
<body>
<form action="calc">
	<P>
		<input type="text" name="num1" size="4">+
		<input type="text" name="num2" size="4">=
	</P>
	<p>
		<input type="submit" value="計算">
	</p>
	</form>

</body>
</html>
