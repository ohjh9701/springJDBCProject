<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>T1 Membership | Login Failed</title>
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
        color: var(--t1-text);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        background-image: radial-gradient(#ffe5e5 1px, transparent 1px);
        background-size: 20px 20px;
    }

    .fail-card {
        width: 100%;
        max-width: 400px;
        background: var(--t1-white);
        padding: 50px 40px;
        border-radius: 24px;
        text-align: center;
        box-shadow: 0 15px 35px rgba(226, 1, 45, 0.1);
        border: 1px solid #ffeded;
    }

    .icon-box {
        width: 70px;
        height: 70px;
        background: #fff0f0;
        color: var(--t1-red);
        border-radius: 50%;
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 32px;
        margin: 0 auto 25px;
        border: 2px solid #ffdada;
    }

    h2 {
        font-size: 1.8rem;
        font-weight: 900;
        margin-bottom: 10px;
    }

    h2 span { color: var(--t1-red); }

    p {
        color: #666;
        line-height: 1.6;
        margin-bottom: 30px;
        font-size: 1rem;
    }

    .btn-retry {
        display: block;
        padding: 16px;
        background: var(--t1-red);
        color: white;
        text-decoration: none;
        font-weight: 800;
        border-radius: 12px;
        transition: 0.3s;
        box-shadow: 0 10px 20px rgba(226, 1, 45, 0.2);
        margin-bottom: 15px;
    }

    .btn-retry:hover {
        background: var(--t1-text);
        transform: translateY(-2px);
    }

    .btn-back {
        display: block;
        padding: 14px;
        color: #888;
        text-decoration: none;
        font-size: 0.9rem;
        font-weight: 600;
        border: 1px solid #eee;
        border-radius: 12px;
        transition: 0.2s;
    }

    .btn-back:hover {
        background: #f1f1f1;
        color: #444;
    }

    .footer-msg {
        margin-top: 25px;
        font-size: 0.8rem;
        color: #ccc;
        font-family: monospace;
    }
</style>
</head>
<body>

<div class="fail-card">
    <div class="icon-box">🔒</div>
    <h2>LOGIN <span>FAILED</span></h2>
    <p>아이디 또는 비밀번호가 일치하지 않습니다.<br>정보를 다시 확인해 주세요.</p>

    <a href="/member/loginForm" class="btn-retry">다시 로그인</a>
    <a href="javascript:history.back()" class="btn-back">돌아가기</a>

    <div class="footer-msg">
        [ ERROR_CODE: AUTH_TERMINATED ]
    </div>
</div>

</body>
</html>