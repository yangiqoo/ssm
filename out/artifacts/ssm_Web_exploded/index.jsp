<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>第二次作业</title>
    <style>
        .top {
            width: 100%;
            height: 300px;
            background-image: url("static/top.png");
            background-size: cover;
            clear: both;
            padding: 50px;
        }

        .a { /*文本*/
            font-family: 隶书;
            font-size: 80px;
            color: white;                             /**/
            text-align: center;
        }

        .b { /*登录和注册*/
            float: right;
            text-align: right;
            margin-right: 50px;
            padding-right: 25px;
        }

        .c { /*马上开学*/
            background-color: white;
            color: dodgerblue;
            text-align: center;
            margin: 0 auto;
            font-size: 30px;
            width: 200px;
            margin-left: 650px;
            border-radius: 3%;
        }

        .d { /*结尾*/
            background-color: lightslategrey;
            width: 100%;
            height: 150px;
            text-align: center;
            font-size: 20px;
            padding: 50px;
        }

        .e { /*边距*/
            padding: 50px;
        }

        .f { /*按钮*/
            width: 100px;
            height: 40px;
            font-size: 20px;
            background-color: transparent;
            border-style: solid;
            color: white;                             /*    background=""    */
            border-color: white;
            border-radius: 10%;
        }
    </style>
    <script>
        function denglu() {
            var url = './jsp/login.jsp';
            window.open(url, '_blank');
        }

        function zhuce() {
            var url = './jsp/register.jsp';
            window.open(url, '_blank');
        }
    </script>
</head>

<body >
<div class="top">
    <span> <img src="static\logo-white.svg" title="logo"></span>

    <span class="b"><input type="button" value="登录" class="f" onclick="denglu()"> </span>
    <span class="b"><input type="button" value="注册" class="f" onclick="zhuce()"> </span>

    <br><br><br>

    <div class="a"> 云端编程，浏览器里边学边练</div><br>
    <div class="a" style="font-size:20px"> 软件定义一切，网络连接时空，学习软件技术，创造未来世界。</div><br><br><br>
    <div class="c">  <a href="https://www.bilibili.com/">马上学习 </a></div><br>
</div>

<br><br><br>
<div class="e">
    <div style=""> <img src="static\img-lab@2x.png"></div><br>
    <div style=" font-size:40px;"> 高级Web编程实验室</div><br>
    <div>
        每人拥有自己完全独立的编程实验室，内置所有基础软件及
        学习素材。打开浏览器，即刻开始编程！
    </div><br>
    <div style="border-style: solid; text-align: center;font-size:30px; width: 100%">
        <a href="https://www.bilibili.com/">了解详情</a>
    </div>

    <br><br>

    <div style=""> <img src="static\img-screens@2x.png"></div><br>
    <div style=" font-size:40px;"> 双屏学习</div><br>
    <div>
        双屏学习，小屏视频互动，大屏实际操作，学习无障碍。打开浏览器，即刻开始编程！
    </div><br>
    <div style="border-style: solid; text-align: center;font-size:30px; width: 100%">
        <a href="https://www.bilibili.com/">了解详情</a>
    </div>
</div>


<br>
<div style=" font-size:35px; padding:50px;">
    课程特色 <hr>
</div>



<div class="e">
    <table>
        <tr>
            <td rowspan="2"><img src="static\table_1.png"></td>
            <td style="font-size:40px">丰富的教学服务</td>
        </tr>
        <tr>
            <td style="font-size:20px">特色教学服务功能，各种配套教学服务，在线学习从未如此轻松。</td>
        </tr>
        <tr>
            <td></td>
            <td><a href="https://www.bilibili.com/">马上学习 > </a></td>
        </tr>
    </table>

    <br><br>

    <table>
        <tr>
            <td rowspan="2"><img src="static\table_2.png"></td>
            <td style="font-size:40px">多元的学习方式</td>
        </tr>
        <tr>
            <td style="font-size:20px">知识提炼、答疑解惑、实时互动、开发有特色的教学服务方式。</td>
        </tr>
        <tr>
            <td></td>
            <td><a href="https://www.bilibili.com/">马上学习 > </a></td>
        </tr>
    </table>

    <br><br>

    <table>
        <tr>
            <td rowspan="2"><img src="static\table_3.png"></td>
            <td style="font-size:40px">高品质的学习体验</td>
        </tr>
        <tr>
            <td style="font-size:20px">多屏合一，随时学习，随时在线，学习记录一目了然，知识充电不再受限。</td>
        </tr>
        <tr>
            <td></td>
            <td><a href="https://www.bilibili.com/">马上学习 > </a></td>
        </tr>
    </table>
</div>

<br><br>

<div class="d">
    <br><br><br>
    ©2024 云端科技 Artech All rights reserved
</div>
</body>
</html>
