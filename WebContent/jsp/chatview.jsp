<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>let chat</title>
<script>
	var length = "0";

	document.onkeydown = function(event) {
		var e = event || window.event || arguments.callee.caller.arguments[0];
		if (e && e.keyCode == 13) {
			sendmsg();
		}
	};

	window.onload = function() {
		receivemsg();
	};

	function receivemsg() {
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				var msgt = xmlhttp.responseText;				
				if (msgt.length != 0) {
					var msgs = msgt.split(",");					
					length = msgs[0];
					if (length!="0") {						
						var table = document.getElementById("table");
						var tr = document.createElement("tr");
						var td = document.createElement("td");
						var node = document.createTextNode(msgs[1]);
						td.appendChild(node);
						tr.appendChild(td);
						table.appendChild(tr);
					}
				}
			}
		};
		var url = "receive?length=" + length;		
		xmlhttp.open("GET", url);
		xmlhttp.send();
		setTimeout("receivemsg()", 700);
	}

	function sendmsg() {
		var msg = document.getElementById("msg");
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				var msgt = xmlhttp.responseText;				
				var msgs = msgt.split(",");				
				length = msgs[0];
				var table = document.getElementById("table");
				var tr = document.createElement("tr");
				var td = document.createElement("td");
				var node = document.createTextNode(msgs[1]);
				td.appendChild(node);
				tr.appendChild(td);
				table.appendChild(tr);
			}
		};
		var url = "receive?msg=" + msg.value + "&length=" + length;
		xmlhttp.open("GET", url);
		xmlhttp.send();
		msg.value = "";
		msg.focus();
	}
</script>
</head>
<body>


	<div
		style="width: 1000px; height: 500px; margin: 60px auto 10px auto; ">
		<div
			style="width: 500px; height: 500px; background-color: green; float: left;">
			<table id="table">
			</table>
		</div>
		<div id="user"
			style="width: 230px; height: 500px; background-color: green; margin: 0px 0px 0px 20px; float: left;"></div>
		<div id="users"
			style="width: 230px; height: 500px; background-color: green; margin: 0px 0px 0px 20px; float: left;"></div>
	</div>

	<div
		style="width: 1000px; height: 50px; margin: 10px auto; ">
		<input id="msg" type="text" style="height: 50px; width: 745px;"></input>
		<input type="button" value="发送" onclick="sendmsg()"
			style="height: 50px; width: 200px; margin: 0 0px 0px 32px;"></input>
	</div>
</body>
</html>