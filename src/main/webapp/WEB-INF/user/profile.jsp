<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel=stylesheet href="<c:url value='/css/main.css' />" type="text/css">
<title>PRORILE</title>

<script>

</script>
</head>
<body>
<div class="front-bar">
	<nav>
	    <a class="logo">
	        <img width="280" height="100"  src="<c:url value='/images/logo.png' />"/>
	    </a>
	    <div class="menu">
	    <ul>
	        <li class="sc-76e69317-0 kvRpqN nav-menu">
	            <a href="<c:url value='/user/myPage/page' />">MY PAGE</a>
	        </li>
	        <li class="sc-76e69317-0 kvRpqN nav-menu">
	            <a href="<c:url value='/user/profile/page' />" style="color: #647B54;">PROFILE</a>
	        </li>
	        <li class="sc-76e69317-0 kvRpqN nav-menu">
	            <a href="<c:url value='/community/list/page' />">COMMUNITY</a>
	        </li>
	        <li class="sc-76e69317-0 kvRpqN nav-menu">
	            <a href="<c:url value='/map/search/page' />">MAP</a>
	        </li>
	    </ul>
	    </div>
	</nav>
</div>
<div class="myProfile">
<form name="myForm" action="profile.jsp" method="POST">
<table>
	<tr>
		<td colspan=4><span style="font-size:200%">회원 정보 수정</span></td>
	</tr>
	<tr>
		<td height="50">아이디</td>
		<td colspan=3><input type="text" name="userId" readonly></td>
	</tr>
	<tr>
		<td height="50">비밀번호</td>
		<td colspan=3><input type="password" name="userPw"></td>
	</tr>
	<tr>
		<td height="50">비밀번호 확인</td>
		<td colspan=3><input type="password" name="userPw2"></td>
	</tr>
	<tr>
		<td height="50">이름</td>
		<td colspan=3><input type="text" name="userName"></td>
	</tr>
	<tr>
		<td height="50">주소</td>
		<td colspan=3><input type="text" name="address"></td>
	</tr>
	<tr>
		<td height="50">성별</td>
		<td colspan=3><input type="radio" name="gender" value="man">남
		<input type="radio" name="gender" value="woman">여</td>
	</tr>
	<tr>
		<td height="50">이메일</td>
		<td colspan=3><input type="email" name="email"></td>
	</tr>
	<tr>
		<td height="50">전화번호('-'포함하여 입력)</td>
		<td colspan=3><input type="tel" name="phoneNumber"></td>
	</tr>
	<tr>
		<td height="50">생일</td>
		<td colspan=3><input type="date" name="userBirth" min="1950-01-01" max="2023-12-31"></td>
	</tr>
	<tr>
		<td height="50">펫 아이디</td>
		<td colspan=3><input type="text" name="petId"></td>
	</tr>
	<tr>
		<td height="50">동아리</td>
		<td colspan=3></td>
	<tr>
		<td colspan=4>
			<input type="button" value="정보수정" onClick="<c:url value='/user/update' />"> &nbsp;
			<input type="button" value="회원탈퇴" onClick="<c:url value='/user/delete' />">
		</td>
	</tr>
</table>
</form>
</div>
</body>
</html>