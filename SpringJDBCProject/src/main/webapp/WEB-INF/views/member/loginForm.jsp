<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>T1 Membership | Login</title>
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

    .login-card {
        width: 100%;
        max-width: 400px;
        background: var(--t1-white);
        padding: 50px 40px;
        border-radius: 24px;
        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.08);
        text-align: center;
    }

    .header { margin-bottom: 35px; }
    .header h1 { font-size: 2rem; font-weight: 900; margin: 0; }
    .header h1 span { color: var(--t1-red); }
    .header p { color: #888; font-size: 0.9rem; margin-top: 8px; }

    .form-group { text-align: left; margin-bottom: 20px; }
    .form-group label {
        display: block;
        font-size: 0.8rem;
        color: #444;
        margin-bottom: 8px;
        font-weight: 700;
        text-transform: uppercase;
    }

    input {
        width: 100%;
        padding: 14px 18px;
        background: var(--t1-light-gray);
        border: 2px solid #eee;
        border-radius: 12px;
        font-size: 1rem;
        box-sizing: border-box;
        transition: 0.3s;
    }

    input:focus {
        background: var(--t1-white);
        border-color: var(--t1-red);
        outline: none;
        box-shadow: 0 0 0 4px rgba(226, 1, 45, 0.1);
    }

    .btn-login {
        width: 100%;
        padding: 16px;
        background: var(--t1-red);
        color: white;
        border: none;
        border-radius: 12px;
        font-size: 1.1rem;
        font-weight: 800;
        cursor: pointer;
        margin-top: 10px;
        transition: 0.3s;
    }

    .btn-login:hover {
        background: var(--t1-text);
        transform: translateY(-2px);
        box-shadow: 0 8px 20px rgba(0,0,0,0.15);
    }

    .footer-links {
        margin-top: 25px;
        font-size: 0.85rem;
        color: #888;
    }

    .footer-links a {
        color: var(--t1-gold);
        text-decoration: none;
        font-weight: 700;
        margin: 0 5px;
    }

    /* 에러 메시지 스타일 */
    .error-msg {
        color: var(--t1-red);
        font-size: 0.85rem;
        margin-bottom: 15px;
        display: ${errorMessage != null ? 'block' : 'none'};
    }
</style>
</head>
<body>

<div class="login-card">
    <div class="header">
        <h1>LOGIN TO <span>T1</span></h1>
        <p>Welcome To T1 Community</p>
    </div>

    <div class="error-msg">${errorMessage}</div>

    <form action="/member/login" method="post">
        <div class="form-group">
            <label for="id">ID</label>
            <input type="text" id="id" name="id" placeholder="Enter your ID" required>
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="••••••••" required>
        </div>

        <button type="submit" class="btn-login">LOGIN</button>
    </form>

    <div class="footer-links">
        아직 회원이 아니신가요? <a href="/member/insertForm">회원가입</a>
    </div>
</div>

</body>
</html>