<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>登录注册</title>
    <script type="text/javascript" src="js/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="js/login.js"></script>
    <link href="css/login.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<h1>
   楚涵go公司人力资源管理系统<sup>V2019.6</sup>
</h1>

<div class="login" style="margin-top: 50px;">
    <div class="header">
        <div class="switch" id="switch">
            <a class="switch_btn_focus" id="switch_qlogin"
               href="javascript:void(0);" tabindex="7">快速登录</a> <a
                class="switch_btn" id="switch_login" href="javascript:void(0);"
                tabindex="8">快速注册</a>
            <div class="switch_bottom" id="switch_bottom"
                 style="position: absolute; width: 64px; left: 0px;"></div>
        </div>
    </div>
    <div class="web_qr_login" id="web_qr_login"
         style="display: block; height: 235px;">



        <!--登录-->
        <div class="web_login" id="web_login">
            <div class="login-box">
                <div class="login_form">
                    <form action="login"
                          accept-charset="utf-8" id="login_form" class="loginForm"
                          method="post">
                        <input type="hidden" name="method" value="login"/>
                        <input type="hidden" name="did" value="0"/> <input type="hidden"
                                                                           name="to" value="log"/>
                        <div class="uinArea" id="uinArea">
                            <label class="input-tips" for="u">帐号：</label>
                            <div class="inputOuter" id="uArea">
                                <input type="text" id="u" name="username" value="${cookie.name.value }" placeholder="请输入用户名" class="inputstyle"/>
                            </div>
                        </div>
                        <div class="pwdArea" id="pwdArea">
                            <label class="input-tips" for="p">密码：</label>
                            <div class="inputOuter" id="pArea">
																								
                                <input type="password" id="p" name="password" value="${cookie.password.value}" placeholder="请输入密码"  class="inputstyle"/>
                            </div>
                        </div>

                        <div style="pomargin-left: 45px;margin-top: 10px; position: relative;">
                            <input style="vertical-align: middle;" type="checkbox" value="yes" name="remember">记住密码
							 <div style="position:absolute;left: 140px;top:0px; color: red;">${flag==null?"":flag }</div>
                        </div>
                        <div style="padding-left: 50px; margin-top: 20px;">
                            <input type="submit" value="登 录" style="width: 150px;"
                                   class="button_blue"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--登录end-->
    </div>
    <!--注册-->
    <div class="qlogin" id="qlogin" style="display: none;">
        <div class="web_login">
            <form name="form2" id="regUser" accept-charset="utf-8"
                  action="register" method="post">
                  <input type="hidden" name="method" value="register"/>
                <input type="hidden" name="to" value="reg"/> <input type="hidden"
                                                                    name="did" value="0"/>
                <ul class="reg_form" id="reg-ul">
                
                    <div id="userCue" class="cue">快速注册请注意格式</div>
                    
                    <li><label for="user" class="input-tips2">用户名：</label>
                        <div class="inputOuter2">
                            <input type="text" id="user" name="username" maxlength="16"
                                   class="inputstyle2"/>
                        </div>
                    </li>
                    <li><label for="passwd" class="input-tips2">密码：</label>
                        <div class="inputOuter2">
                            <input type="password" id="passwd" name="password" maxlength="16"
                                   class="inputstyle2"/>
                        </div>
                    </li>
                    <li><label for="passwd2" class="input-tips2">确认密码：</label>
                        <div class="inputOuter2">
                            <input type="password" id="passwd2" name="password2" maxlength="16"
                                   class="inputstyle2"/>
                        </div>
                    </li>
                    <li>
                        <div class="inputArea">

                            <input type="submit" id="reg"
                                   style="margin-top: 10px; margin-left: 85px;"
                                   class="button_blue" value="同意协议并注册"/> <a href="#" class="zcxy"
                                                                            target="_blank.">注册协议</a>
                        </div>
                    </li>
                    <div class="cl"></div>
                </ul>
            </form>
        </div>
    </div>
    <!--注册end-->
</div>
</body>
</body>
</html>