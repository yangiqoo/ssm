<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>注册页面</title>
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
    <h2 class="title_1">注册页面</h2>
    <form @submit.prevent="register" >
        <div>
            <span class="title_2">用户名</span>
            <input type="text" v-model="username"  class="in" id="username">
        </div>

        <br>

        <div>
            <span class="title_2">输入密码</span>
            <input type="password" v-model="password_1"  class="in" id="password_1">
        </div>

        <br>
        <div>
            <span class="title_2">确认密码</span>
            <input type="password" v-model="password_2"  class="in" id="password_2">
        </div>

        <br>
        <div class="button_1"><input type="submit" value="注册" class="button_2"></div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
<script>
new Vue({
    el:'#app',
    data:{
        username:'',
        password_1:'',
        password_2:''

    },

    methods:{
        check()
        {
            String
            username=this.username;
            String
            password_1=this.password_1;
            String
            password_2=this.password_2;
            if(username.length>0&&username.length<7&&
                password_1.length>0&&password_1.length<7&&
                password_2.length>0&&password_2.length<7)
                if(password_1===password_2)
                {
                    alert("格式正确");
                    return true;
                }else
                {
                    alert("两次输入不一致");
                    return false;
                }
            alert("格式错误\n" +
                "账号密码均不得小于等于0大于等于7");
            return false;
        },

        register(){
            if(this.check()==true)
            {
                // 发送 AJAX 请求到后端
                fetch('http://localhost:8081/ssm_Web_exploded/userregister', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    },
                    body: 'username=' + encodeURIComponent(this.username)
                        + '&password=' + encodeURIComponent(this.password_1)
                })
                    .then(response => {
                        console.log('Response:', response);
                        console.log(this.username + "  " + this.password_1);
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
})
</script>
</body>
</html>
