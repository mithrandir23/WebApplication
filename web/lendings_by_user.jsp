<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="lendings" class="java.util.ArrayList" scope="request"/>
<jsp:useBean id="userO" class="main.User" scope="request"/>

<t:genericpage>
    <jsp:attribute name="title">
        Lendings
    </jsp:attribute>

    <jsp:body>
        <span class="title"><c:out value="${userO.name}"/>'s lendings</span>
        <c:forEach items="${lendings}" var="lending">
            <div class="logicalGroup">
                <a href="book.do?id=<c:out value="${lending.book.id}" />"><c:out
                        value="${lending.book.title}"/></a>
                | From <c:out value="${lending.date}"/>, for <c:out
                    value="${lending.duration}"/> days | <a
                    href="unlend.do?id=<c:out value="${lending.id}" />">(Unlend)</a>
            </div>
        </c:forEach>
    </jsp:body>
</t:genericpage>