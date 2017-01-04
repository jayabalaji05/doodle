<%@ taglib
    prefix="c"
    uri="http://java.sun.com/jsp/jstl/core" 
%>
<html>
<body>
<jsp:include page="header.jsp"></jsp:include>
<c:if test="${userClickedLogin}">
<jsp:include page="login.jsp"></jsp:include><br>
</c:if>
<c:out value="${ErrorMessage}"/>
<c:out value="${SuccessMessage}"/>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
