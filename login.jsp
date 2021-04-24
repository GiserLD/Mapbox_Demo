<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>登陆</title>
<link rel="stylesheet" href="css/style.css">

<body>

    <div class="login-container">
        <h1>请登陆</h1>

        <div class="connect">
            <p>Mapbox 开发</p>
        </div>

        <!-- http://127.0.0.1:3000/login -->
        <form action="loginCheck.jsp" method="post" id="loginForm">
            <div>
                <input type="text" name="username" class="username" placeholder="用户名" autocomplete="off" />
            </div>
            <div>
                <input type="password" name="password" class="password" placeholder="密码" oncontextmenu="return false"
                    onpaste="return false" />
            </div>
            <button  id="submit" type="submit">登 陆</button>
        </form>

        <a href="register.jsp">
            <button type="button" class="register-tis">注册账号？</button>

        </a>

        <a href="MapShowQ1.html">
            <button type="button" class="travel">游客浏览</button>
        </a>
    </div>

</body>




<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/common.js"></script>
<!--背景图片自动更换-->
<script src="js/supersized.3.2.7.min.js"></script>
<script src="js/supersized-init.js"></script>
<!--表单验证-->
<script src="js/jquery.validate.min.js?var1.14.0"></script>
<script src="js/FormCheck.js"></script>


<script>


</script>

</html>
