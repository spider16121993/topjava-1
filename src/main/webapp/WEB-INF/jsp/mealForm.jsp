<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <title><spring:message code="meal.title"/> </title>
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/> ">
</head>
<body>
<section>
    <h3><a href="<c:url value="index.jsp"/> "><spring:message code="common.home"/> </a></h3>
        <c:if test="${param.action=='create'}">
            <h2>
                <spring:message code="meal.create"/>
    </h2>
        </c:if>
    <c:if test="${param.action!='create'}">
        <h2>
            <spring:message code="common.update"/>
        </h2>
    </c:if>
    <hr>
    <jsp:useBean id="meal" type="ru.javawebinar.topjava.model.Meal" scope="request"/>
    <form method="post" action="meals/create">
        <input type="hidden" name="id" value="${meal.id}">
        <dl>
            <dt><spring:message code="meal.data"/>:</dt>
            <dd><input type="datetime-local" value="${meal.dateTime}" name="dateTime"></dd>
        </dl>
        <dl>
            <dt><spring:message code="meal.description"/>:</dt>
            <dd><input type="text" value="${meal.description}" size=40 name="description"></dd>
        </dl>
        <dl>
            <dt><spring:message code="meal.calories"/>:</dt>
            <dd><input type="number" value="${meal.calories}" name="calories"></dd>
        </dl>
        <button type="submit"><spring:message code="common.save"/> </button>
        <button onclick="window.history.back()" type="button"><spring:message code="common.cancel"/> </button>
    </form>
</section>
</body>
</html>
