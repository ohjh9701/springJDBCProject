<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>T1 Membership | Access Denied</title>
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
        max-width: 500px;
        background: var(--t1-white);
        padding: 60px 40px;
        border-radius: 30px;
        text-align: center;
        box-shadow: 0 20px 40px rgba(226, 1, 45, 0.1);
        border: 2px solid #ffcccc;
    }

    /* 경고 아이콘 스타일 */
    .icon-wrapper {
        width: 80px;
        height: 80px;
        background: #fff5f5;
        border-radius: 50%;
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 0 auto 30px;
        color: var(--t1-red);
        font-size: 40px;
        border: 2px dashed var(--t1-red);
    }

    h2 {
        font-size: 2rem;
        font-weight: 900;
        margin-bottom: 15px;
        color: var(--t1-text);
    }

    h2 span { color: var(--t1-red); }

    p {
        color: #666;
        line-height: 1.6;
        margin-bottom: 40px;
        font-size: 1.1rem;
    }

    .error-msg-box {
        background: #fff8f8;
        padding: 20px;
        border-radius: 15px;
        margin-bottom: 30px;
        border: 1px solid #ffeded;
        color: var(--t1-red);
        font-weight: 600;
        font-family: monospace;
    }

    /* 버튼 영역 */
    .btn-group {
        display: flex;
        gap: 15px;
    }

    .btn {
        flex: 1;
        padding: 16px;
        text-decoration: none;
        font-weight: 800;
        border-radius: 12px;
        transition: 0.3s;
        font-size: 0.95rem;
    }

    .btn-retry {
        background: var(--t1-red);
        color: white;
        box-shadow: 0 10px 20px rgba(226, 1, 45, 0.2);
    }

    .btn-back {
        background: #eee;
        color: #666;
    }

    .btn:hover {
        transform: translateY(-3px);
        filter: brightness(1.1);
    }

    .footer-deco {
        margin-top: 30px;
        font-size: 0.8rem;
        color: #ccc;
        letter-spacing: 1px;
    }
</style>
</head>
<body>

<div class="fail-card">
    <div class="icon-wrapper">⚠️</div>
    <h2>Sign Up <span>Failed</span></h2>
    <p>회원가입 처리 중 오류가 발생했습니다.<br>입력하신 정보를 다시 확인해 주세요.</p>

    <div class="error-msg-box">
        [ ERROR_CODE: ${errorMessage != null ? errorMessage : "REGISTRATION_FAILED"} ]
    </div>

    <div class="btn-group">
        <a href="/member/loginForm" class="btn btn-back">로그인창 이동</a>
        <a href="/member/insertForm" class="btn btn-retry">다시 가입하기</a>
    </div>

    <div class="footer-deco">
        [ SYSTEM: STABLE CONNECTION REQUIRED ]
    </div>
</div>

</body>
</html>