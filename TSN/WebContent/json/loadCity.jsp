<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="userList" value="${sessionScope.citylist}"></c:set>
<c:set var="len" value="${function:length(citylist)}"></c:set>

[<c:forEach items="${sessionScope.citylist}" var="i" varStatus="j">{"cityid":"${i.cityID}","cityname":"${i.cityName}"}
<c:if test="${len ne j.count }">,</c:if></c:forEach>]
