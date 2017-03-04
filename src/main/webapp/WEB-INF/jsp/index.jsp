<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!--在引入文件的时候，value需要有斜杠，在直接的Page页面中的时候，为空值即可-->
<spring:url value="/" var="appcontextpath" scope="application"/>
<spring:url value="/resources" var="appresources" scope="application"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<body>
<h2>get the data from dubbo</h2>
<div>
    <ul>
        <c:forEach items="${list}" var="lists">
            <li>${lists}</li>
        </c:forEach>
    </ul>
</div>
</body>
</html>