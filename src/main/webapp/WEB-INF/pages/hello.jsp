<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<title>Title</title>

	<script type="text/javascript">

		function callNative() {
		    alert("ee");
			try {
			    webkit.messageHandlers.callbackHandler.postMessage("MessageBody");
			} catch (err) {
			    alert(err);
			}
        }

        function calltestNative() {

		    var array = new Array();

            var obj = new Object();
            obj.name = "aa";
            obj.userid = "dhekfl";

            array.push(obj);

            try {
                webkit.messageHandlers.test11.postMessage(array);
            } catch (err) {
                alert(err);
            }
        }

        function redHeader() {
			alert('radHeader() CALL');
			document.querySelector('h1').style.color = "red";
        }

        function  callDellLink() {
			location.href = "https://applinks:sb.hanasavings.com";
        }
	</script>

</head>
<body>

<h1>iOS 용 페이지</h1>
<br><input type="button" onclick="callNative()" value="네이티브 호출">
<br><input type="button" onclick="calltestNative()" value="테스트 호출">
<br><a href="/main">URL 변경</a>
<br><input type="button" onclick="callDellLink()" value="딥링크">

</body>
</html>
