<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>T1 Member Profile | ${member.nickName}</title>
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
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        background-image: radial-gradient(#dee2e6 1px, transparent 1px);
        background-size: 20px 20px;
    }

    .profile-card {
        width: 100%;
        max-width: 550px;
        background: var(--t1-white);
        border-radius: 30px;
        box-shadow: 0 20px 50px rgba(0, 0, 0, 0.1);
        overflow: hidden;
        border: 1px solid #eee;
    }

    /* 상단 프로필 헤더 배경 */
    .profile-banner {
        height: 120px;
        background: linear-gradient(135deg, var(--t1-red), #8b0000);
        position: relative;
    }

    .profile-avatar {
        width: 120px;
        height: 120px;
        background: #fff;
        border-radius: 50%;
        border: 5px solid var(--t1-white);
        position: absolute;
        bottom: -60px;
        left: 50%;
        transform: translateX(-50%);
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 50px;
        box-shadow: 0 10px 20px rgba(0,0,0,0.1);
    }

    .profile-body {
        padding: 80px 40px 40px;
        text-align: center;
    }

    .profile-body h2 {
        font-size: 1.8rem;
        font-weight: 900;
        margin: 0;
    }

    .profile-body .role {
        color: var(--t1-gold);
        font-weight: 700;
        font-size: 0.9rem;
        letter-spacing: 2px;
        margin-top: 5px;
        display: block;
    }

    /* 상세 정보 리스트 */
    .info-list {
        margin-top: 40px;
        text-align: left;
        border-top: 1px solid #eee;
        padding-top: 20px;
    }

    .info-item {
        display: flex;
        justify-content: space-between;
        padding: 15px 0;
        border-bottom: 1px solid #f9f9f9;
    }

    .info-item label {
        color: #888;
        font-weight: 600;
        font-size: 0.9rem;
    }

    .info-item span {
        color: var(--t1-text);
        font-weight: 500;
    }

    /* 버튼 영역 */
    .btn-group {
        display: flex;
        gap: 15px;
        margin-top: 40px;
    }

    .btn {
        flex: 1;
        padding: 15px;
        border-radius: 12px;
        font-weight: 800;
        text-decoration: none;
        transition: 0.3s;
        font-size: 0.95rem;
        text-align: center;
    }

    .btn-edit { background: var(--t1-text); color: #fff; }
    .btn-logout { background: #eee; color: #666; }

    .btn:hover {
        transform: translateY(-3px);
        box-shadow: 0 10px 20px rgba(0,0,0,0.1);
    }

    .btn-edit:hover { background: var(--t1-red); }
</style>
</head>
<body>

<div class="profile-card">
    <div class="profile-banner">
        <div class="profile-avatar">🛡️</div>
    </div>

    <div class="profile-body">
        <h2>${member.nickName}</h2>
        <span class="role">OFFICIAL AGENT</span>

        <div class="info-list">
            <div class="info-item">
                <label>IDENTIFICATION (ID)</label>
                <span>${member.id}</span>
            </div>
            <div class="info-item">
                <label>CONTACT EMAIL</label>
                <span>${member.email}</span>
            </div>
            <div class="info-item">
                <label>SECURITY LEVEL</label>
                <span style="color: var(--t1-gold);">${member.nickName}님 환영합니다.</span>
            </div>
        </div>

        <div class="btn-group">
            <a href="/member/logout" class="btn btn-logout">LOGOUT</a>
            <a href="/member/updateForm" class="btn btn-edit">EDIT PROFILE</a>
        </div>
    </div>
</div>

</body>
</html>