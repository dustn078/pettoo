<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Community</title>
</head>
<body>
    <h1>Create Community</h1>
    <form name="createForm" action="<c:url value="/community/create/form" />" method="post">

        <label for="comm_title">Title:</label>
        <input type="text" id="comm_title" name="comm_title" required><br>

        <label for="comm_text">Text:</label>
        <textarea id="comm_text" name="comm_text" required></textarea><br>

        <label for="comm_date">Date:</label>
        <input type="text" id="comm_date" name="comm_date" required><br>

        <label for="comm_memberlimit">Member Limit:</label>
        <input type="number" id="comm_memberlimit" name="comm_memberlimit" required><br>

        <label for="comm_leader">Leader:</label>
        <input type="text" id="comm_leader" name="comm_leader" required><br>

        <input type="submit" value="Create Community" action="<c:url value='/community/view/form' />">
    </form>
</body>
</html>