# T1-Themed Membership System
> **"For the Unstoppable Era"** > T1의 승리 정신을 담은 화이트 & 레드 테마의 Java 백엔드 회원 관리 시스템입니다.

---

## 프로젝트 개요
이 프로젝트는 **Java Spring Boot**와 **JDBC**, **Oracle DB**를 기반으로 한 풀스택 회원 관리 웹 애플리케이션입니다. 사용자 경험(UX)을 고려한 세련된 UI와 안정적인 백엔드 로직 구현에 집중했습니다.

## 🛠 Tech Stack
| Category | Tech Stack |
| :--- | :--- |
| **Language** | Java 17 |
| **Framework** | Spring Boot 5.0 |
| **Database** | Oracle Database (ojdbc11) |
| **Frontend** | JSP (Modern Flexbox) |
| **Library** | Lombok, Spring JDBC (JdbcTemplate), Slf4j |

## 🚀 주요 구현 기능
본 프로젝트는 회원 관리의 핵심인 **CRUD** 사이클을 완벽하게 구현했습니다.

### 1. 회원가입 및 로그인 (Authentication)
- **Join:** 유효성 검사를 포함한 T1 스타일의 가입 폼 구현
- **Login:** `HttpSession`을 이용한 상태 유지 및 예외 처리
- **Logout:** 세션 무효화(`session.invalidate()`)를 통한 보안 강화

### 2. 마이페이지 및 정보 수정 (User Management)
- **Profile:** 세션 기반의 개인 정보 조회 및 세련된 프로필 카드 UI
- **Update:** 회원정보 수정, ID찾기, PW찾기 기능을 구현
- **Delete:** DB 연동을 통한 영구 계정 삭제 기능

### 3. 회원 리스트 출력 (Member List View)
- **Member Roster:** 전체 가입 회원 명단을 한눈에 확인하는 대시보드 구현

## 📂 Project Structure
```text
com.example
├── controller  # 요청 매핑 및 서비스 호출 (MemberController)
├── service     # 비즈니스 로직 처리 (MemberServiceImpl)
├── dao         # JDBC를 이용한 DB 접근 (MemberDAO)
└── domain      # 데이터 객체 정의 (Member DTO)

src/main/webapp/WEB-INF/views
└── member      # JSP 기반의 UI 컴포넌트 (insertForm, loginForm, detail 등)
