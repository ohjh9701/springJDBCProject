<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>T1 Membership | Welcome Agent</title>
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
        background-image: radial-gradient(#dee2e6 1px, transparent 1px);
        background-size: 20px 20px;
    }

    .welcome-card {
        width: 100%;
        max-width: 500px;
        background: var(--t1-white);
        padding: 60px 40px;
        border-radius: 30px;
        text-align: center;
        box-shadow: 0 20px 40px rgba(0, 0, 0, 0.06);
        border: 1px solid #eee;
        position: relative;
    }

    /* 상단 금색 트로피 아이콘 느낌 */
    .icon-wrapper {
        width: 80px;
        height: 80px;
        background: var(--t1-light-gray);
        border-radius: 50%;
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 0 auto 30px;
        color: var(--t1-gold);
        font-size: 40px;
        box-shadow: inset 0 0 10px rgba(198, 156, 109, 0.2);
    }

    h2 {
        font-size: 2rem;
        font-weight: 900;
        margin-bottom: 10px;
    }

    h2 span { color: var(--t1-red); }

    p {
        color: #666;
        line-height: 1.6;
        margin-bottom: 40px;
        font-size: 1.1rem;
    }

    .info-box {
        background: var(--t1-light-gray);
        padding: 20px;
        border-radius: 15px;
        margin-bottom: 30px;
        border-left: 5px solid var(--t1-gold);
        text-align: left;
    }

    .info-box span {
        display: block;
        font-size: 0.85rem;
        color: #888;
        margin-bottom: 5px;
    }

    .info-box strong {
        font-size: 1.2rem;
        color: var(--t1-text);
    }

    /* 메인 버튼 */
    .btn-home {
        display: block;
        padding: 18px;
        background: var(--t1-red);
        color: white;
        text-decoration: none;
        font-weight: 800;
        border-radius: 12px;
        transition: 0.3s;
        box-shadow: 0 10px 20px rgba(226, 1, 45, 0.2);
    }

    .btn-home:hover {
        background: var(--t1-text);
        transform: translateY(-3px);
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
    }

    .auto-msg {
        margin-top: 25px;
        font-size: 0.8rem;
        color: #aaa;
    }
</style>
</head>
<body>

<div class="welcome-card">
    <div class="icon-wrapper">🏆</div>
    <h2>WELCOME TO <span>T1 COMMUNITY</span></h2>
    <p>회원가입이 완료되었습니다.<br>${member.nickName}님의 건전한 활동을 응원합니다.</p>

    <div class="info-box">
        <span>T1 COMMUNITY</span>
        <strong>${member.nickName} 회원님, 환영합니다!</strong>
    </div>

    <a href="/member/loginForm" class="btn-home">Login</a>

</div>

</body>
</html>