<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Community</title>
</head>
<body>
    <h2>View Community</h2>
    <table border="1">
        <tr>
            <th>Community Number</th>
            <th>Title</th>
            <th>Text</th>
            <th>Date</th>
            <th>Member Limit</th>
            <th>Leader</th>
        </tr>
        <tr>
            <td>${community.comm_num}</td>
            <td>${community.comm_title}</td>
            <td>${community.comm_text}</td>
            <td>${community.comm_date}</td>
            <td>${community.comm_memberLimit}</td>
            <td>${community.comm_leader}</td>
        </tr>
    </table>
    <p><a href="<c:url value='/community/list/form' />">Back to Community List</a></p>
</body>
</html>