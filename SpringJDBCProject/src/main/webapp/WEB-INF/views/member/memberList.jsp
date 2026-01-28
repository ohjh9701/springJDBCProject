<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>T1 Community | Agent Roster</title>
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
        padding: 50px 0;
        background-image: radial-gradient(#dee2e6 1px, transparent 1px);
        background-size: 20px 20px;
    }

    .container {
        max-width: 1000px;
        margin: 0 auto;
        padding: 0 20px;
    }

    .header-box {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 30px;
        border-bottom: 3px solid var(--t1-red);
        padding-bottom: 15px;
    }

    .header-box h1 {
        font-size: 2.2rem;
        font-weight: 900;
        margin: 0;
        letter-spacing: -1px;
    }

    .header-box h1 span { color: var(--t1-red); }

    .btn-back {
        background: var(--t1-text);
        color: white;
        text-decoration: none;
        padding: 10px 20px;
        font-weight: bold;
        border-radius: 8px;
        font-size: 0.9rem;
        transition: 0.3s;
    }

    .btn-back:hover {
        background: var(--t1-red);
        transform: translateY(-2px);
    }

    /* Table Styles */
    .member-table {
        width: 100%;
        border-collapse: separate;
        border-spacing: 0 10px; /* 행 사이 간격 */
    }

    .member-table th {
        padding: 15px;
        color: #888;
        font-size: 0.85rem;
        text-transform: uppercase;
        border-bottom: 1px solid #ddd;
        text-align: center;
    }

    .member-table tbody tr {
        background: var(--t1-white);
        box-shadow: 0 5px 15px rgba(0,0,0,0.03);
        transition: 0.3s;
    }

    .member-table tbody tr:hover {
        transform: scale(1.01);
        box-shadow: 0 8px 25px rgba(226, 1, 45, 0.1);
    }

    .member-table td {
        padding: 20px 15px;
        text-align: center;
        border-top: 1px solid #f1f1f1;
        border-bottom: 1px solid #f1f1f1;
    }

    .member-table td:first-child { border-left: 1px solid #f1f1f1; border-radius: 12px 0 0 12px; }
    .member-table td:last-child { border-right: 1px solid #f1f1f1; border-radius: 0 12px 12px 0; }

    .id-badge {
        font-weight: 800;
        color: var(--t1-red);
    }

    .nickname-cell {
        font-weight: 600;
        color: var(--t1-text);
    }

    .email-cell { color: #666; font-size: 0.9rem; }

    .status-badge {
        background: #fff5f5;
        color: var(--t1-red);
        padding: 4px 10px;
        border-radius: 20px;
        font-size: 0.75rem;
        font-weight: 700;
        border: 1px solid #ffebeb;
    }

    .empty-msg {
        background: var(--t1-white);
        padding: 100px;
        text-align: center;
        border-radius: 20px;
        color: #aaa;
        font-weight: 500;
    }
</style>
</head>
<body>

<div class="container">
    <div class="header-box">
        <h1>T1 COMMUNITY <span>MEMBERS</span></h1>
        <a href="javascript:history.back()" class="btn-back">BACK TO PROFILE</a>
    </div>

    <c:choose>
        <c:when test="${not empty memberList}">
            <table class="member-table">
                <thead>
                    <tr>
                        <th width="20%">ID</th>
                        <th width="25%">NickName</th>
                        <th width="35%">Email</th>
                        <th width="20%">Status</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="m" items="${memberList}">
                        <tr>
                            <td class="id-badge">${m.id}</td>
                            <td class="nickname-cell">${m.nickName}</td>
                            <td class="email-cell">${m.email}</td>
                            <td><span class="status-badge">ACTIVE AGENT</span></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:when>
        <c:otherwise>
            <div class="empty-msg">
                등록된 요원이 없습니다.
            </div>
        </c:otherwise>
    </c:choose>
</div>

</body>
</html>