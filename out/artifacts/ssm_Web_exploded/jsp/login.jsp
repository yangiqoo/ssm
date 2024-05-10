<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>登录页面</title>
    <style>
        .box {
            position: absolute;
            border: solid;
            border-radius: 3%;
            width: 600px;
            height: 350px;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -70%);
        }
        .in {
            width: 400px;
            height: 30px;
        }
        .title_1 {
            font-size: 40px;
            text-align: center;
        }
        .title_2 {
            width: 100px;
            text-align: center;
            font-size: 20px;
            display: inline-block;
        }
        .button_1 {
            text-align: center;
        }
        .button_2 {
            width: 75px;
            height: 35px;
            border-radius: 10%;
        }
    </style>
</head>
<body>

<div id="app" class="box">
    <h2 class="title_1">登录页面</h2>
    <form @submit.prevent="login">
        <div>
            <span class="title_2">用户名</span>
            <input type="text" v-model="username" class="in" id="username">
        </div>

        <br>

        <div>
            <span class="title_2">密码</span>
            <input type="password" v-model="password" class="in" id="password">
        </div>
        <br><br><br>
        <div class="button_1">
            <input type="submit" value="登录" class="button_2">
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
<script>
    new Vue({
        el: '#app',
        data: {
            username: '',
            password: ''
        },
        methods: {
            check()
            {
                if(this.username===""||this.password==="")
                    {alert("username orpassword is empty");return false;}
                 return true;
            },
            login() {
                if (this.check() == true) {
                    fetch('http://localhost:8081/ssm_Web_exploded/userlogin', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/x-www-form-urlencoded'
                        },
                        body: 'username=' + encodeURIComponent(this.username)
                            + '&password=' + encodeURIComponent(this.password)
                    })
                        .then(response => {
                            console.log('Response:', response);
                            console.log(this.username + "  " + this.password);
                            if (response.ok) {
                                return response.text();
                            } else {
                                throw new Error('请求失败');
                            }
                        })
                        .then(data => {
                            alert('请求成功: ' + data);
                            //其他东西
                        })
                        .catch(error => {
                            alert('错误: ' + error.message);
                        });
                }
            }
        }
    });
</script>
</body>
</html>
