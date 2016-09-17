<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Clean Blog - Wonpang New个人博客</title>

    <!-- me.ico -->
    <link rel="icon" href="../resources/img/me.ico" type="image/x-ico"/>

    <!-- Bootstrap Core CSS -->
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../resources/css/clean-blog.min.css" rel="stylesheet">
    <link href="../resources/css/clean-blog.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

</head>
<body>
<!-- header 导航栏 -->
<%@ include file="visitor-header.html" %>
<!-- Set your background image for this header on the line below. -->
<header class="intro-header" style="background-image: url('../resources/img/home-bg.jpg')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="site-heading">
                    <h1>Clean Blog</h1>
                    <hr class="small">
                    <span class="subheading">A Clean Blog by Wonpang</span>
                </div>
            </div>
        </div>
    </div>
</header>
    <div class="login">
        <form action="/loginTo" method="post" id="editorForm" onsubmit="return validate_post_blog(this)">
            <div class="row control-group" style="margin-top: 10px;margin-bottom: 10px;">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon">Username</span>
                    <input type="text" class="form-control" name="username" placeholder="username">
                </div>
            </div>
            <div class="row control-group" style="margin-top: 10px;margin-bottom: 10px;">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon">Password</span>
                    <input type="password" class="form-control" name="token" placeholder="password">
                </div>
            </div>
            <button type="submit" class="btn btn-default" style="float: right;margin-top: 10px;margin-bottom: 20px;">Login</button>
        </form>
    </div>

<!-- Footer 网页底部 -->
<%@ include file="footer.html" %>

<!-- jQuery -->
<script src="../resources/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../resources/js/bootstrap.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../resources/js/clean-blog.js"></script>

<script src="../resources/js/angular.min.js"></script>
<script src="../resources/js/angular-cookies.min.js"></script>
<script src="../resources/js/angular-route.min.js"></script>

</body>
</html>