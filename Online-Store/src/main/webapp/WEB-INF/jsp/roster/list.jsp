<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title>Spring MVC Basic</title>
</head>
<body>
	<h1>Hello First Spring MVC Basic</h1>
	<ul>
		<c:forEach var="member" items="${memberList}" varStatus="status"> 
			<li>
				<a href="member.do?id=${status.index}"> 
					<c:out value="${member}"></c:out>
				</a>
			</li>
		</c:forEach>
	</ul>
	
</body>
</html>
