<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Community</title>
</head>
<body>
    <h2>Update Community</h2>
    <form action="/community/update" method="post">
        <input type="hidden" name="comm_num" value="${community.comm_num}">
        Title: <input type="text" name="comm_title" value="${community.comm_title}" required><br>
        Text: <input type="text" name="comm_text" value="${community.comm_text}" required><br>
        Date: <input type="text" name="comm_date" value="${community.comm_date}" required><br>
        Member Limit: <input type="text" name="comm_memberlimit" value="${community.comm_memberLimit}" required><br>
        Leader: <input type="text" name="comm_leader" value="${community.comm_leader}" required><br>
        <input type="submit" value="Update">
    </form>
    <p><a href="/community/list">Back to Community List</a></p>
</body>
</html>