<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chart</title>
<style>
	#graph-center {
		width: 1320px;
		margin: 0 auto;
	}
	
	#Sline-chart {
		float: left;
		margin: 20px;
	}
	
	#Aline-chart {
		float: left;
		margin: 20px;
	}
	
	#Bline-chart {
		float: left;
		margin: 20px;
	}
</style>
</head>
<body>

	<div id="graph-center">
	    <h1 class="text-center">상품 등급 별 거래현황</h1>
		<canvas id="Sline-chart" width="400vw" height="400vh"></canvas>
		<canvas id="Aline-chart" width="400vw" height="400vh"></canvas>
		<canvas id="Bline-chart" width="400vw" height="400vh"></canvas>
	</div>


  <!-- 차트 만들기 기능 -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
  <script src="js/chart2.js"></script>

</body>
</html>