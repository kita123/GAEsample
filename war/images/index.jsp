<%@page pageEncoding="UTF-8" isELIgnored="false" session="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="f" uri="http://www.slim3.org/functions"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>ImagesService</title>
</head>
<body>
<div>
<p class="caption">オリジナル画像</p>
<p　class="img"><img src="/images/resize?rate=100"></p>
</div>
<div>
<p class="caption">縮小：　20%</p>
<p　class="img"><img src="/images/resize?rate=２0"></p>
</div>
<div>
<p class="caption">回転：　90度</p>
<p　class="img"><img src="/images/rotate?degree=90"></p>
</div>
<div>
<p class="caption">左右反転</p>
<p　class="img"><img src="/images/horizontalFlip"></p>
</div>
</body>
</html>
