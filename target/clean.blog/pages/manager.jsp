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
<%@ include file="header.html" %>
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

<!-- Main Content -->
<div class="container">
    <div class="row">
        <!--
            添加style="word-break:break-all;"为了解决BootStrap中div内容如果是英文的话，无法自动换行
            参考连接：http://www.jb51.net/css/22839.html
        -->
        <!-- 标签云 -->
        <div class="col-lg-3 col-md-3" style="word-break:break-all;">
            <div>
                <div id='tag-cloud'>
                    <h3>标签云</h3>
                    <a href="/category?category=Java" style="color: #00b7ee">Java</a>
                    <a href="/category?category=C/C++" style="color: red">C/C++</a>
                    <a href="/category?category=Python" style="color: darkgoldenrod">Python</a> <br/>
                    <a href="/category?category=OS" style="color: sandybrown">OS </a>
                    <a href="/category?category=网络" style="color: #43ff3c">网络</a>
                    <a href="/category?category=框架" style="color: #00b7ee">框架 </a> <br/>
                    <a href="/category?category=生活" style="color: #c0a16b">生活</a>
                    <a href="/category?category=NBA" style="color: #462fc0">NBA</a>
                    <a href="/category?category=持续集成" style="color: #c05cb8">持续集成</a><br/>
                    <a href="/category?category=大数据" style="color: #c0342f">大数据</a>
                </div>
                <div style="margin-top: 10px;" ng-app="">
                    <input type="text" style="width: 213px;" ng-model="blogName" placeholder="search...">
                    <a href="/search?blogName={{blogName}}" class="btn btn-primary active button-search" style="float: right;" role="button">搜索</a>
                </div>
            </div>
        </div>

        <div class="col-lg-8 col-md-10" style="width: 870px;">
            <c:forEach var="blog" items="${blogs}">
                <div class="post-preview">
                    <a href="/blog?p=${blog.id}">
                        <h2 class="post-title">
                                ${blog.title}
                        </h2>
                    </a>
                    <p class="post-preview">
                            ${blog.preview}
                    </p>
                    <p class="post-meta">Posted by <a href="#">${blog.author}</a> on ${blog.date}
                        <a href="/delete?id=${blog.id}" class="btn btn-primary active button-search" style="float: right;" role="button">删除</a>
                    </p>
                </div>
                <hr style="margin-top: 10px;">
            </c:forEach>


            <!-- Pager -->
            <ul class="pager" style="margin-top: -10px;">
                <li class="next">
                    <a href="/blog?p=0">More Blogs &rarr;</a>
                </li>
            </ul>
        </div>
    </div>

<hr/>

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