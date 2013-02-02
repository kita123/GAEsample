<%@page pageEncoding="UTF-8" isELIgnored="false" session="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="f" uri="http://www.slim3.org/functions"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>images Service</title>
</head>
<body>
<form action="upload" method="post" enctype="multipart/form-data">
<p><input type="file" name="imageFile"></p>
<p>リサイズ：<input type="text" name="resize"></p>
<p><input type="submit" value="変換"></p>
</form>
</body>
</html>
