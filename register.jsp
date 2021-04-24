<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>注册丨Sharelink</title>
<link rel="stylesheet" href="css/style.css">

<body>

    <div class="register-container">
        <h1>请注册</h1>

        <div class="connect">
            <p>Mapbox 开发</p>
        </div>

        <form action="registerInDatabase.jsp" method="post" id="registerForm">
            <div>
                <input type="text" name="username" class="username" placeholder="您的用户名" autocomplete="off" />
            </div>
            
            <div>
                <input type="password" name="password" id="password" class="password" placeholder="输入密码" oncontextmenu="return false" onpaste="return false" onblur="validate_password(this.value)"/>
            </div>
            <div style="float:left;" id="test_pw">
            </div>
            
            <div>
                <input type="password" name="confirm_password" class="confirm_password" placeholder="再次输入密码" oncontextmenu="return false" onpaste="return false" onblur="validate_password2(this.value)"/>
            </div>
            <div style="float:left;" id="is_test_pw">
            </div>
            
            <div>
                <input type="text" name="telephone" class="confirm_password" placeholder="请输入手机号" autocomplete="off" onblur="validate_username(this.value)"/>
            </div>
            <div style="float:left;" id="test_user">
            </div>

            <button id="submit" type="submit">注 册</button>
        </form>
        <a href="login.jsp">
            <button type="button" class="register-tis">已经有账号？</button>
        </a>
        <a href="MapShowQ1.html">

            <button type="button" class="travel">游客浏览</button>
        </a>
    </div>

</body>
<script>
    // onpaste="return false"禁止粘贴
    // onblur在对象失去焦点时发生
    // oncontextmenu="return false"右键菜单禁用，防止复制
    //表单验证
    //验证手机号格式
  	function validate_username(username){
  		//正则表达式:手机号正则
		var phoneReg = /^1[3|4|5|7|8]\d{9}$/;
		//密码强度正则，最少6位，包括至少1个大写字母，1个小写字母，1个数字，1个特殊字符
		var pPattern = /^.*(?=.{6,})(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*? ]).*$/;
  		if(username !="" && username.search(phoneReg) != -1)
  		{
  			document.getElementById("test_user").innerHTML = "<font color='green' size='3px'>√手机号格式正确</font>";
  		}else{
  			document.getElementById("test_user").innerHTML = "<font color='red' size='3px'>手机号格式错误</font>";
  		}
  	}
  
 	//验证密码是否符合要求
  	function validate_password(password){
  		var passwordReg=/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6}$/;
  		if(password != "" && password.search(passwordReg) != -1)
  		{
  			document.getElementById("test_pw").innerHTML = "<font color='green' size='3px'>√密码格式正确</font>";
  		}else{
  			document.getElementById("test_pw").innerHTML = "<font color='red' size='3px'>密码格式错误</font>";
  			//alert("密码有6位，由数字和字母组成!");//弹框提示
  		}
  	}
  	
	//验证两次输入的密码是否一样
  	 function validate_password2(password2){
  		var password = document.getElementById("password").value;
  		if (password == ""){
			document.getElementById("is_test_pw").innerHTML = "<font color='red' size='3px'>密码不能为空</font>";
		}else if(password==password2){
  			document.getElementById("is_test_pw").innerHTML = "<font color='green' size='3px'>√两次输入的密码相同</font>";
  		}else{
  			document.getElementById("is_test_pw").innerHTML = "<font color='red' size='3px'>两次输入的密码不相同</font>";
  			console.log("密码有6位，由数字和字母组成!");
  		}
  	} 
	
  	//身份证号（18位）正则
  	//var cP = /^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;
  	

</script>





<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/common.js"></script>
<!--背景图片自动更换-->
<script src="js/supersized.3.2.7.min.js"></script>
<script src="js/supersized-init.js"></script>
<!--表单验证-->
<script src="js/jquery.validate.min.js?var1.14.0"></script>

</html>