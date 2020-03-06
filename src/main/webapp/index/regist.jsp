<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>系统登录 - 朝腾科技家教管理平台项目管理系统</title>
    <link rel="stylesheet" href="css/style.css"/>
</head>
<body class="login_bg">
    <section class="loginBox">
        <header class="loginHeader">
            <h1>朝腾科技家教管理系统</h1>
        </header>
        <section class="loginCont">
            <form class="regist" action="welcome.html">
                <div class="inputbox">
                    <label for="user">用&nbsp;户&nbsp;名：&nbsp;</label>
                    <input id="user" type="text" name="username" placeholder="请输入用户名" required/>
                </div>
                <div class="inputbox">
                    <label for="mima">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：&nbsp;</label>
                    <input id="mima" type="password" name="password" placeholder="请输入密码" required/>
                </div>
				<div class="inputbox">
                    <label for="mima">确认密码：</label>
                    <input id="remima" type="password" name="repwd" placeholder="请确认密码" required/>
                </div>
                <div class="subBtn">
                    <input type="submit" value="注册" />
                    <input type="reset" value="重置"/>
                </div>

            </form>
        </section>
    </section>

</body>
</html>