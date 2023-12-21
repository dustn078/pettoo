<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Community List</title>
</head>
<body>
    <h2>Community List</h2>
    <c:if test="${empty commList}">
        <p>No communities found.</p>
    </c:if>
    <c:if test="${not empty commList}">
        <table border="1">
            <tr>
                <th>Community Number</th>
                <th>Title</th>
                
                <th>Actions</th>
            </tr>
            <c:forEach var="community" items="${commList}">
                <tr>
                    <td>${community.comm_num}</td>
                    <td>${community.comm_title}</td>
                 
                    <td>
                        <a href="/community/view">View</a>
                        <a href="/community/update">Update</a>
                        
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <p><a href="<c:url value='/community/create/form' />">Create Community</a></p>
</body>
</html>