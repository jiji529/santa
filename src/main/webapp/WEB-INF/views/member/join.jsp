<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>산타모니카~</title>
</head>
<body>
<h2>회원정보입력</h2>
<p class="mB20">회원가입을 위해 아래의 정보를 입력해 주십시오. <br class="m-block" /><strong class="star">*</strong>표시는 필수 입력사항 입니다.</p>

<h3 class="icon2 hidden">기본정보</h3>
<form method="post" action="/member/join" >
   <table>
      <tbody>
         <tr>
            <th><strong class="star">*</strong><label fr="userEmail">회원아이디</label></th>
            <td>
               <input type="text" id="userEmail" name="userEmail" required />
               <a href="#" id="btn-id-check" class="btn-sm spot fn" title="중복확인(새창열림)"><span>중복확인</span></a>
            </td>
         </tr>
         <tr>
            <th><strong class="star">*</strong><label for="userPwd">비밀번호</label></th>
            <td><input type="password" id="userPwd" name="userPwd" required /></td>
         </tr>
         <tr>
            <th><label for="userNickname">닉네임</label></th>
            <td><input type="text" id="userNickname" name="userNickname" /></td>
         </tr>
      </tbody>
   </table>
   
   <div>
      <button type="submit" class="btn spot">가입</button>
   </div>
</form>
</body>
</html>