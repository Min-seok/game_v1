<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <title>Title</title>

    <script type="text/javascript">
        function callNative() {
            alert("ade");
            try {
                webkit.messageHandlers.ttt.postMessage("jscallaa");
            } catch (err) {
                alert(err);
            }
        }
    </script>
</head>
<body>

<h1>iOS 용 페이지222</h1>
<br><input type="button" onclick="callNative()" value="네이티브 호출">

</body>
</html>
