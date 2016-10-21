<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="userList" value="${sessionScope.rolelist}"></c:set>
<c:set var="len" value="${function:length(rolelist)}"></c:set>

[<c:forEach items="${sessionScope.rolelist}" var="i" varStatus="j">{"userid":"${i.id}","firstname":"${i.firstname}"}
<c:if test="${len ne j.count }">,</c:if></c:forEach>]
