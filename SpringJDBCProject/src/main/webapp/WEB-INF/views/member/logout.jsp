<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>T1 Membership | Safe Logout</title>
<style>
    :root {
        --t1-red: #E2012D;
        --t1-gold: #C69C6D;
        --t1-white: #ffffff;
        --t1-light-gray: #f8f9fa;
        --t1-text: #1a1a1a;
    }

    body {
        background-color: var(--t1-light-gray);
        font-family: 'Pretendard', sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        background-image: radial-gradient(#dee2e6 1px, transparent 1px);
        background-size: 20px 20px;
    }

    .logout-card {
        width: 100%;
        max-width: 450px;
        background: var(--t1-white);
        padding: 60px 40px;
        border-radius: 30px;
        text-align: center;
        box-shadow: 0 15px 35px rgba(0,0,0,0.05);
        border: 1px solid #eee;
    }

    .icon {
        font-size: 50px;
        margin-bottom: 25px;
        display: inline-block;
    }

    h2 {
        font-size: 1.8rem;
        font-weight: 900;
        margin-bottom: 15px;
    }

    p {
        color: #666;
        line-height: 1.6;
        margin-bottom: 35px;
    }

    .btn-home {
        display: block;
        padding: 16px;
        background: var(--t1-text);
        color: white;
        text-decoration: none;
        font-weight: 800;
        border-radius: 12px;
        transition: 0.3s;
    }

    .btn-home:hover {
        background: var(--t1-red);
        transform: translateY(-2px);
    }

    .timer {
        margin-top: 25px;
        font-size: 0.85rem;
        color: #aaa;
    }
</style>
</head>
<body>

<div class="logout-card">
    <div class="icon">🏁</div>
    <h2>SAFE <span>LOGOUT</span></h2>
    <p>세션이 안전하게 종료되었습니다.<br>T1 커뮤니티를 이용해 주셔서 감사합니다.</p>

    <a href="/member/loginForm" class="btn-home">RETURN TO LOGIN</a>

    <div class="timer">
        <span id="seconds">3</span>초 후 로그인 페이지로 자동 이동합니다.
    </div>
</div>

<script>
    // 3초 카운트다운 후 자동 이동
    let timeLeft = 3;
    const downloadTimer = setInterval(function(){
        if(timeLeft <= 0){
            clearInterval(downloadTimer);
            location.href = "/member/loginForm";
        } else {
            document.getElementById("seconds").innerHTML = timeLeft;
        }
        timeLeft -= 1;
    }, 1000);
</script>

</body>
</html>