<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>jQuery Line Chart</title>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/mathjs/0.15.0/math.min.js"></script> 
</head>
<canvas width="500" height="500" id="myCanvas"></canvas>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script type="text/javascript" src="canvasjs-1.9.0/jquery.canvasjs.min.js"></script>
<body  onload="calculation()">
<%
String v4=request.getParameter("v");
String v8=request.getParameter("x11");
String v9=request.getParameter("w11");
String v10=request.getParameter("ca");
String v11=request.getParameter("in");
String v12=request.getParameter("pa");

double v=Double.parseDouble(v4);
double x11=Double.parseDouble(v8);
double w11=Double.parseDouble(v9);
double ca=Double.parseDouble(v10);
double in=Double.parseDouble(v11);
double pa=Double.parseDouble(v12);

double st=Math.sqrt(in/ca);
double g=0.5;
double se=v*Math.sqrt(in*ca);
double sm=0.5*v*Math.sqrt(in*ca);
double kt=Math.sin(se)/Math.sin(sm);
double xw=x11/w11;
double ks=kt*st;
double vv=0.5*v;
%>
<div class="box-body">
            
             <div class="flot x-axis flot-x1-axis xAxis x1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px;
              bottom: 0px; right: 0px; display: block;">
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 0px; text-align: center;">0</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 24.25px; text-align: center;">1</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 48.5px; text-align: center;">2</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 72.75px; text-align: center;">3</div>
              <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 97px; text-align: center;">4</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 121.25px; text-align: center;">5</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 145.5px; text-align: center;">6</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 169.75px; text-align: center;">7</div>
              <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 194px; text-align: center;">8</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 218.25px; text-align: center;">9</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 241.5px; text-align: center;">10</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 265.75px; text-align: center;">11</div>
              <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 290px; text-align: center;">12</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 314.25px; text-align: center;">13</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 338.5px; text-align: center;">14</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 362.75px; text-align: center;">15</div>
              <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 387px; text-align: center;">16</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 411.25px; text-align: center;">17</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 435.5px; text-align: center;">18</div>
              <div class="flot-tick-label ticklabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 459.75px; text-align: center;">19</div>
              <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 147px; top: 246.38px; left: 484px; text-align: center;">20</div>
              
              
              </div>
              <div class="flot-y axis flot-y1-axis yAxis y1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;">
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 492.75px; left: 1px; text-align: right;">-10000000</div>
             
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 468.113px; left: 1px; text-align: right;">-9000000</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 443.476px; left: 1px; text-align: right;">-8000000</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 418.839px; left: 1px; text-align: right;">-7000000</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 394.202px; left: 1px; text-align: right;">-6000000</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 369.565px; left: 1px; text-align: right;">-5000000</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 344.928px; left: 1px; text-align: right;">-4000000</div>
             
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 320.291px; left: 1px; text-align: right;">-3000000</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 295.654px; left: 1px; text-align: right;">-2000000</div>
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 271.017px; left: 1px; text-align: right;">-1000000</div>
              
              
              
             
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 221.743px; left: 1px; text-align: right;">1000000</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 197.106px; left: 1px; text-align: right;">2000000</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 172.469px; left: 1px; text-align: right;">3000000</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 147.832px; left: 1px; text-align: right;">4000000</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 123.195px; left: 1px; text-align: right;">5000000</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 98.558px; left: 1px; text-align: right;">6000000</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 73.921px; left: 1px; text-align: right;">7000000</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 49.284px; left: 1px; text-align: right;">8000000</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 24.642px; left: 1px; text-align: right;">9000000</div>
              
              <div class="flot-tick-label tickLabel" style="position: absolute; top: 0px; left: 1px; text-align: right;">10000000</div>
              
              </div>
              
<script type="text/javascript">
var canvas=document.getElementById('myCanvas'),
c=canvas.getContext('2d');
n=100,
xMin=-10,
xMax=10,
yMin=-10000,
yMax=10000,
math = mathjs(),
v=<%=v %>
g=<%=g %>
pa=<%=pa %>
xw=<%=xw %>
ks=<%=ks %>
w11=<%=w11 %>
vv=<%=vv%>
expr = xw+'*sin('+vv+'*t+x)*'+ks, 
		scope = { 
			x: 0,
			t: 0
			},
		tree = math.parse(expr, scope),
		time=0,
		timeIncrement=0.06,

drawCurve();
startAnimation();
function drawCurve(){
	var i, xPixel, yPixel,
	percentX, percentY,
	mathX, mathY;
	c.clearRect(0, 0, canvas.width, canvas.height);
	c.beginPath();
	for(i=0; i<n; i++){
		percentX=i/(n-1);
		mathX=percentX*(xMax-xMin) + xMin;
		mathY=evaluateMathExpr(mathX);
		percentY=(mathY-yMin)/(yMax-yMin);
		percentY=1-percentY;
		xPixel=percentX*canvas.width;
		yPixel=percentY*canvas.height;
		c.lineTo(xPixel, yPixel);
	}
	c.stroke();
}
function evaluateMathExpr(mathX){
	scope.x=mathX;
	scope.t=time;
	return tree.eval();
}
function startAnimation(){
	(function animloop(){
		requestAnimationFrame(animloop);
		render();
	}());
}
function render(){
	time+=timeIncrement;
	drawCurve();
}
function receiving() {
	  document.rtcForm.rtcInput.value = calculation();
	  setTimeout("receiving()", 1000);  
	}
function calculation() {
	 var frm = document.forms['rtcForm'];
	  var d = new Date();
	  setTimeout("calculation()", 1000);
	  t=d.getTime();
			 frm.rtcInput.value=xw*(Math.sin(0.5*(v*t+pa)))*ks;
			 var m=w11*Math.sin(v*t+pa);		 
			 if(frm.rtcInput.value=m){
				alert("stable");
				 }else{
				alert("unstable"); 
			 }
			}
	
</script>
<form name="rtcForm">
value: <input type="text" name="rtcInput" size="12" readonly="readonly" />
</form>

</body>
</html>