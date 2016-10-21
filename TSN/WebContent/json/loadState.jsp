<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="userList" value="${sessionScope.statelist}"></c:set>
<c:set var="len" value="${function:length(statelist)}"></c:set>

[<c:forEach items="${sessionScope.statelist}" var="i" varStatus="j">{"stateid":"${i.stateID}","statename":"${i.stateName}"}
<c:if test="${len ne j.count }">,</c:if></c:forEach>]
