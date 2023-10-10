<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../header.jsp"></jsp:include>
<title>상세페이지</title>
    <style>
        #rvForm:not(.active) {
            display: none;
        }

        #rvForm {
            position: fixed;
            left: 40%;
            top: 40%;
            border: 2px solid black;
            background-color: #f5f5f5;
            padding: 10px;
            border-radius: 10px;
        }
        #test {
            width: 500px;
            height: 500px;
            margin: 0 auto;
            background-color: plum;
        }
        #rvImg{
        	width: 0px;
        	height: 0px;
        }


    </style>
</head>
<body>

	<div>
		<jsp:include page="../nav.jsp"></jsp:include>
	</div>
    <div>
        <h1>REVIEW</h1>
        <button type="button" id="rvAdd">리뷰추가</button>
        
    </div>
    
    <table>
    	<thead>
    		<tr>
    			<th>리뷰사진</th>
    			<th>이메일</th>
    			<th>내용</th>
    		</tr>
    	</thead>
    	<!-- 리뷰 목록 -->
    	<c:forEach var="rvlist" items="${rvList}">
	    	<tbody>
	    		<tr>
	    			<td>${rvlist.rvImg}</td>
	    			<td>${rvlist.userEmail}</td>
	    			<td>${rvlist.rvContent}</td>
	    		</tr>
	    	</tbody>
    	</c:forEach>
    </table>
    
    <!-- 리뷰 목록 템플릿 -->
    <tbody id="rvTbody">
	    		
	</tbody>
    
    <template id="rvRow">
    	<tr>
    		<td class="rvImg"></td>
    		<td class="userEmail"></td>
    		<td class="rvContent"></td>
    	</tr>
    </template>
    
    <!-- 리뷰추가 새창 -->
    <div id="test">
        <form id="rvForm" enctype="multipart/form-data">
        	<input type="number" name="pNo" value="${pvo.pNo}">
            아이디: <c:out value="${loginUser.userEmail}"/><br>
            리뷰사진: 
            <label for="rvImg">이미지 첨부</label>
            <input type="text" id="rvImg" name="rvImg"><br>
            내용: <input type="text" name="rvContent"><br>
            <input type="button" value="확인" id="rvSave">
            <input type="button" value="취소" id="rvCancel">
        </form>

    </div>
<script src="${pageContext.request.contextPath}/resources/js/reviewMaker.js"></script>
</body>
</html>