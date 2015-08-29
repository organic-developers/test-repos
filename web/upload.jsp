<%--
  Created by IntelliJ IDEA.
  User: Saied
  Date: 8/29/2015
  Time: 8:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>File Upload Example in JSP and Servlet - Java web application</title>

    <script>
        $(document).ready(function(){
            $(".submit").click(function(){
                $.post("/Controller/FileUploadHandler", "#form1",
                        function(data,status){
                            alert("Status: " + status);
                        }
                );
            });
        });
    </script>
</head>

<body>
<div>
    <h3> Choose File to Upload in Server </h3>

    <form action="/Controller/FileUploadHandler" id="form1" method="post" enctype="multipart/form-data">
        <input type="file" name="file"/>
        <input type="submit" class="submit" value="upload"/>
    </form>
</div>

</body>
</html>
