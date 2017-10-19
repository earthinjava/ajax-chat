<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>let chat</title>
<script>
	function sendmsg(){
		alert("1234");
		var msg=document.getElementById("msg");
		alert(msg.value);
		msg.value="";		
	}
</script>
</head>
<body>
	<div style="width:1000px;height:500px;margin:60px auto 10px auto;background-color:red;">
		<div id="context" style="width:500px;height:500px;background-color:green;float:left;"></div>
		<div id="ifo" style="width:230px;height:500px;background-color:green;margin:0px 0px 0px 20px;float:left;"></div>
		<div id="users" style="width:230px;height:500px;background-color:green;margin:0px 0px 0px 20px;float:left;"></div>
	</div>
	<div style="width:1000px;height:50px;margin:10px auto;background-color:red;">
	<input id="msg"type="text" style="height:50px;width:745px;"></input>
	<input type="button" value="发送" onclick="sendmsg()"style="height:50px;width:200px;margin:0 0px 0px 20px;"></input>
	</div>
</body>
</html>