<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>T1 Membership | Join the Legend</title>
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
        font-family: 'Pretendard', -apple-system, BlinkMacSystemFont, system-ui, sans-serif;
        color: var(--t1-text);
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
        /* 밝은 배경에 어울리는 미세한 도트 패턴 */
        background-image: radial-gradient(#dee2e6 1px, transparent 1px);
        background-size: 20px 20px;
    }

    .join-card {
        width: 100%;
        max-width: 460px;
        background: var(--t1-white);
        padding: 50px 40px;
        border-radius: 24px;
        /* T1 레드로 포인트 준 상단 테두리 */
        border-top: 8px solid var(--t1-red);
        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.08);
        position: relative;
    }

    .header {
        text-align: center;
        margin-bottom: 35px;
    }

    .header h1 {
        font-size: 2.2rem;
        font-weight: 900;
        margin: 0;
        letter-spacing: -1px;
    }

    .header h1 span { color: var(--t1-red); }

    .header p {
        color: #666;
        font-size: 0.9rem;
        margin-top: 8px;
        font-weight: 500;
    }

    .form-group {
        margin-bottom: 22px;
    }

    .form-group label {
        display: block;
        font-size: 0.85rem;
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
        color: var(--t1-text);
        font-size: 1rem;
        box-sizing: border-box;
        transition: all 0.3s ease;
    }

    input:focus {
        background: var(--t1-white);
        border-color: var(--t1-red);
        outline: none;
        box-shadow: 0 0 0 4px rgba(226, 1, 45, 0.1);
    }

    /* T1 Gold 포인트 버튼 */
    .btn-submit {
        width: 100%;
        padding: 16px;
        background: var(--t1-red);
        color: white;
        border: none;
        border-radius: 12px;
        font-size: 1.1rem;
        font-weight: 800;
        cursor: pointer;
        margin-top: 15px;
        transition: 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
    }

    .btn-submit:hover {
        background: var(--t1-text); /* 호버 시 블랙으로 변하며 골드 섀도우 */
        box-shadow: 0 8px 20px rgba(198, 156, 109, 0.4);
        transform: translateY(-2px);
    }

    .footer {
        margin-top: 30px;
        text-align: center;
        font-size: 0.9rem;
        color: #888;
    }

    .footer a {
        color: var(--t1-gold);
        text-decoration: none;
        font-weight: 700;
        margin-left: 5px;
        border-bottom: 1px solid transparent;
        transition: 0.3s;
    }

    .footer a:hover {
        border-bottom: 1px solid var(--t1-gold);
    }

    /* 장식용 골드 바 */
    .gold-line {
        width: 40px;
        height: 4px;
        background: var(--t1-gold);
        margin: 0 auto 20px;
        border-radius: 2px;
    }
</style>
</head>
<body>

<div class="join-card">
    <div class="gold-line"></div>
    <div class="header">
        <h1>T1 COMMUNITY <span>PW 찾기</span></h1>
        <p>아래 정보를 입력해주세요.</p>
    </div>

    <form action="/member/insertPw" method="post">
        <div class="form-group">
            <label for="id">가입하신 아이디 입력</label>
            <input type="text" id="id" name="id" placeholder="가입하신 ID를 입력해주세요." required>
        </div>
        <div class="form-group">
            <label for="email">가입하신 이메일 입력</label>
            <input type="email" id="email" name="email" placeholder="example@t1.gg" required>
        </div>

        <button type="submit" class="btn-submit">PW 찾기</button>
    </form>

    <div class="footer">
        아이디를 잊어버리셨나요? <a href="/member/searchId">아이디 찾기</a>
    </div>
</div>

</body>
</html>