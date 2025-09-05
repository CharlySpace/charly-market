# **📦 찰리마켓 - 경매 기반 중고거래 플랫폼**


찰리 마켓은 기존 중고거래 방식에서 벗어나 경매를 통해 합리적인 가격에 구매할 수 있는 서비스 입니다 
<div align="center">

<img width="1536" height="1024" alt="KakaoTalk_20250903_111217126" src="https://github.com/user-attachments/assets/26580431-3fb1-4aad-9c4e-1b901404e028" />


</div>

---
## 목차 (Table of Contents)

1. [👩‍👧‍👦 1. 멤버 소개](#-1-멤버-소개)
2. [⚒️ 2. 서비스 소개](#-2-서비스-소개)
   - [1️⃣ 2.1 서비스 개요](#1️⃣-서비스-개요)
   - [2️⃣ 2.2 차별화 포인트](#2️⃣-차별화-포인트)
   - [3️⃣ 2.3 주요 기능](#3️⃣-주요-기능)
   - [4️⃣ 2.4 기대 효과](#4️⃣-기대-효과)
3. [🚀 3. 기술 스택](#-3-기술-스택)
4. [🗂️ 4. 프로젝트 산출물](#-4-프로젝트-산출물)
   - [🕖 WBS](#WBS)
   - [📚 요구사항 명세서](#요구사항-명세서)
   - [🖼️ UML](#uml)
   - [🗺️ ERD](#erd)
   - [🗞️ 테스트 케이스 작성 및 테스트](#테스트-케이스-작성-및-테스트)
   - [🔁 통합테스트 시나리오 및 코드](#통합테스트-시나리오-및-코드)
   - [↗️ 성능 개선](#-성능-개선)
5. [⚠️ 5. Trouble Shooting](#-5-trouble-shooting)
6. [🍺 6. 프로젝트 회고록](#-6-프로젝트-회고록)

## 📂 프로젝트 파일 구조

```
charly-market/
│
├── .github/
│   └── ISSUE_TEMPLATE/         # 이슈 템플릿 관련 파일들
│
├── Docs/                       # 문서 및 기획 관련 내용
│
├── Integration Test/           # 통합 테스트 관련 코드
│
├── db/                         # 데이터베이스 관련 파일들
│  └── domain                   # 도메인별 테스트 코드
|  └── init                     # 데이터베이스 생성 코드 및 더미 데이터
|
├── flowchart/                  # 플로우차트 이미지 또는 문서
│
├── README.md                   # 현재 README 파일
│
└── 찰리 프로젝트 기획서.md     # 프로젝트 기획서 한국어 문서
```

---

## 👩‍👧‍👦 1. 멤버 소개


<div align="center">

| 김성태 | 김상재 | 이민욱 |
|--------|--------|--------|
| <img src="https://github.com/user-attachments/assets/5c6e1ae2-6141-421f-9a1e-167fd0fca240" alt="김성태" width="150" height="150"> <br> 김성태 | <img src="https://github.com/user-attachments/assets/148449e9-d047-4bfb-bba8-b22127f2f13a" alt="김상재" width="150" height="150"> <br> 김상재 | <img src="https://github.com/user-attachments/assets/bb3f3d72-699b-4353-950b-bf6b1ee05d04" alt="이민욱" width="150" height="150"> <br> 이민욱 |

| 박연수 | 박인수 | 유한세 |
|--------|--------|--------|
| <img src="https://github.com/user-attachments/assets/23da475b-8e5e-48d7-bbae-18270bfc50f2" alt="박연수" width="150" height="150"> <br> 박연수 | <img src="https://github.com/user-attachments/assets/c69eff42-6ef2-49d9-8b05-b4ada00e548f" alt="박인수" width="150" height="150"> <br> 박인수 | <img src="https://github.com/user-attachments/assets/4cd77a5c-2710-4916-83dc-b1c0536e840c" alt="유한세" width="150" height="150"> <br> 유한세 |


</div>



## ⚒️ 2. 서비스 소개
   <img width="3390" height="1873" alt="ERD" src="https://github.com/user-attachments/assets/4c38f6dc-ea0e-4b20-b3fc-32493d11fbe0" />

### 1️⃣ 서비스 개요
찰리마켓은 **⭐실시간 경매 시스템 기반 중고거래 플랫폼⭐**으로, 합리적인 가격 형성과 안전한 거래를 지원합니다.  
기존 직거래 플랫폼의 **⭐거래 불편, 사기 위험, 가격 비효율 문제⭐**를 개선합니다.

**주요 특징:**
- 🏷️ 중고품 거래 간편화  
- 💰 적정 가격 형성 (입찰 경쟁)  
- 🔒 안전 거래 & 포인트 결제 시스템  
- ⚡ 경매 참여 재미 + 자동 연장 기능  

---

### 2️⃣ 차별화 포인트

| 구분 | 기능 |
| --- | --- |
| ⏱️ 실시간 경매 | 입찰, 낙찰/유찰로 합리적 가격 형성 |
| 🏅 사용자 등급 | 거래량에 따른 수수료 할인율 제공 |
| 💳 포인트 결제 | 거래의 안정성 제공 |
| 📸 사진 인증 | 상품 필수 확인 및 신뢰성 강화 |
| 📈 거래 편의성 | 간단 조회·검색·즐겨찾기 + 후기 관리 |

---

### 3️⃣ 주요 기능

#### 👤 회원 관리
- **회원가입 / 로그인 / 아이디·비밀번호 찾기**  
- **프로필 & 등급 관리**  
- **마이페이지**: 포인트, 거래 내역, 후기, 알림 확인  

#### 🚨 신고 관리
- **신고 등록 / 조회**  
- **게시글 숨김, 계정 제한, 경고, 법적 대응**  

#### 📝 게시판
- **문의 등록/조회 및 관리자 답변**  
- **공지사항 등록/수정/삭제, 조회**  

#### 🏷️ 경매 관리
- **물품 등록/삭제, 카테고리별 조회 및 검색**  
- **입찰, 자동 낙찰/유찰, 종료 연장**  
- **낙찰자 후기 등록**  

#### ⭐ 즐겨찾기
- **경매 물품 즐겨찾기 등록/삭제/조회**  

#### 📦 배송 관리
- **배송 시작/추적/완료 확인**  
- **완료 시 포인트 자동 이전**  

#### 🏷️ 카테고리 관리
- **계층형 카테고리 등록/수정/삭제**  

#### 💰 결제 & 포인트
- **포인트 충전/환불, 이전, 조회**  
- **관리자 거래 관리 및 등급별 수수료 적용**  

#### 🔔 알림 관리
- **알림 메뉴얼 등록/수정/삭제**  
- **시스템 기반 푸시 알림 발송**  

---

### 4️⃣ 기대 효과
- 공정한 가격 형성 및 거래 투명성 강화  
- 사용자 신뢰도 향상 + 안전한 거래 환경  
- 경매 참여를 통한 재미와 플랫폼 체류 증가 
---

## 🚀 3. 기술 스택

 🚀  Stacks   
<img src="https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white"/>
<img src="https://img.shields.io/badge/docker-2496ED?style=for-the-badge&logo=docker&logoColor=white"/>

 ⚒️  Tools    
<img src="https://img.shields.io/badge/HeidiSQL-b0fb0c?style=for-the-badge&logoColor=white"/>
<img src="https://img.shields.io/badge/ERDCLOUDE-72099f?style=for-the-badge&logoColor=white"/>
<img src="https://img.shields.io/badge/canva-00C4CC?style=for-the-badge&logo=canva&logoColor=white"/>
<img src="https://img.shields.io/badge/dbeaver-382923?style=for-the-badge&logo=dbeaver&logoColor=white"/>

👥  Collaboration      
<img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white"/>
<img src="https://img.shields.io/badge/discord-5865F2?style=for-the-badge&logo=discord&logoColor=white"/>
<img src="https://img.shields.io/badge/notion-000000?style=for-the-badge&logo=notion&logoColor=white"/>

---

## 🗂️ 4. 프로젝트 산출물

- ### 🕖 WBS **(Work Breakdown Structure)**
  WBS를 자세히 보려면 [여기](https://www.notion.so/25b36d2af8f580fab019e6d2211cd7a5?v=25b36d2af8f5802b830b000cb9f5aefe&source=copy_link)를 클릭하세요요
   <details>
  <summary>WBS 보기</summary>
     <img width="2129" height="1171" alt="스크린샷 2025-09-02 173800" src="https://github.com/user-attachments/assets/b7727d26-8edd-4f42-aa77-65cabe149727" />

  </details> 


- ### 📚 요구사항 명세서

  요구사항 명세서를 자세히 보려면 [여기](https://docs.google.com/spreadsheets/d/1gjJ8mYfv-hq05CkPhD09bkD4a0_2K8PejZSjfwREuMI/edit?gid=1507918672#gid=1507918672)를 클릭하세요
  <details>
  <summary>요구사항 명세서 보기</summary>
     <img width="1410" height="1266" alt="요구사항 명세서" src="https://github.com/user-attachments/assets/83397f68-132d-46d7-b6ce-07f915a21156" />

  </details>
  
- ### 🖼️ UML **(Unified Modeling Language)**

  UML을 자세히 보려면 [여기](https://www.canva.com/design/DAGw914rlWc/A6U_UKm-gqUP5vZRQ2hHxA/edit)를 클릭하세요

  <details>
  <summary>UML 보기</summary>
     <img width="1056" height="1194" alt="UML" src="https://github.com/user-attachments/assets/6a110abd-eecb-4831-9cde-cda714dc802c" />

  </details>
  

- ### 🗺️ ERD **(Entity Relationship Diagram)**

  ERD를 자세히 보려면 [여기](https://www.erdcloud.com/d/cTij9aNCYr9CxJZnf)를 클릭하세요

  <details>
  <summary>ERD 보기</summary>
     <img width="3390" height="1873" alt="ERD" src="https://github.com/user-attachments/assets/4c38f6dc-ea0e-4b20-b3fc-32493d11fbe0" />

  </details>

- ### 🗞️ 테스트 케이스 작성 및 테스트
  테스트 코드를 자세히 보려면 db > domain 을 확인해주세요
  테스트 케이스를 자세히 보려면 [여기](https://www.notion.so/25e36d2af8f580c69d25dd86f9b528f3?source=copy_link)를 클릭하세요
   <details>
     <summary>테스트 케이스</summary>
        <img width="2464" height="1175" alt="스크린샷 2025-09-02 093242" src="https://github.com/user-attachments/assets/21d1be15-dc4d-4f23-9893-4b43b171c835" />
   <img width="2491" height="1206" alt="스크린샷 2025-09-02 093325" src="https://github.com/user-attachments/assets/f173ccfd-0ee4-4b60-b848-3cfeab874e11" />
   <img width="2461" height="1256" alt="스크린샷 2025-09-02 093352" src="https://github.com/user-attachments/assets/a995a45f-9316-4555-8ffc-c02c053ee9e8" />
   <img width="2472" height="1190" alt="스크린샷 2025-09-02 093416" src="https://github.com/user-attachments/assets/b3f6b28a-33e2-4626-8d99-035a1c14140c" />
   <img width="2474" height="1268" alt="스크린샷 2025-09-02 093441" src="https://github.com/user-attachments/assets/505a8c8a-6a3c-4218-9793-7dd5046a8a61" />
   <img width="2487" height="804" alt="스크린샷 2025-09-02 093455" src="https://github.com/user-attachments/assets/327217ba-75e3-4b43-a4bf-7c93adcbf503" />
   </details>

- ### 🔁 통합테스트 시나리오 및 코드
  통합테스트 시나리오를 자세히 보려면 [여기](https://www.notion.so/26136d2af8f5802e914afbc54cf37e47?source=copy_link)를 클릭하세요  
  통합테스트 코드를 자세히 보려면 Integrated Test 폴더를 확인하세요

   <details>
     <summary><b>1️⃣ 회원 기능</b></summary>
   
     <b>1. grade</b> <br>
     - B: 10% 수수료<br>
     - S: 7% 수수료<br>
     - G: 5% 수수료<br>
     - P: 3% 수수료<br>
   
     <b>2. user</b> <br>
     - user_id=1 : **홍길동**, 일반회원 (grade_id=1, 등급 B, 잔고 0, 닉네임 "길동이")<br>
     - user_id=2 : **김영희**, 일반회원 (grade_id=2, 등급 S, 잔고 0, 닉네임 "영희짱")<br>
     - user_id=3 : **관리자(Admin)**, 관리자 계정 (user_role='ADMIN')<br>
     - user_id=4 : **한철수**, 일반회원 (grade_id=3, 등급 G, 잔고 0, 닉네임 "난철수")<br><br>
     
     ![1 회원가입](https://github.com/user-attachments/assets/9dba01e7-4441-4509-9cde-642f526a2c01)
   </details>

   <details>
     <summary><b>2️⃣ 계좌 등록 & 충전</b></summary>
   
     <b>1. account</b> <br>
     - 홍길동 → 농협 111-222-333 (account_id=1)<br>
     - 김영희 → 신한 444-555-666 (account_id=2)<br>
     - 한철수 → 우리 777-888-999 (account_id=3)<br>
   
     <b>2. payment_log</b> <br>
     - 홍길동: 100,000원 충전 (C 타입), 수수료 10% 적용 → conversion_amount=90,000<br>
     - 김영희: 80,000원 충전, 수수료 7% 적용 → conversion_amount=74,400<br>
     - 한철수: 1,000,000원 충전, 수수료 5% 적용 → conversion_amount=950,000<br>
   
     <b>3. user</b> <br>
     - 홍길동 → user_balance=90,000 으로 갱신<br><br>
     
     ![2  계좌등록 및 충전](https://github.com/user-attachments/assets/64b9cd5e-5682-466c-b6e0-ae4ad5e7aedc)
   </details>

   <details>
     <summary><b>3️⃣ 공지사항 & 문의</b></summary>
   
     <b>1. notice</b> <br>
     - 관리자 → “경매 물품 가격 오류” 공지 등록 (notice_id=1)<br>
     - 첨부파일 file_id=1 : 점검 이미지 첨부<br>
     - 관리자 → “공지사항 문제발생” 공지사항 수정<br>
     - 관리자 → “공지사항 문제발생 글 삭제”<br>
   
     <b>2. inquiry</b> <br>
     - 김영희 → “배송 관련 문의 드립니다.” 문의 작성 (inquiry_id=1)<br>
     - 첨부파일 file_id=2 : 문의 스크린샷 첨부<br>
     - 관리자 → 답변 등록: “빠른 시일 내 해결하겠습니다.”<br><br>
   
     ![3  공지사항 및 문의](https://github.com/user-attachments/assets/1fede5c1-6b48-4993-b64c-628d4a915ed7)
   </details>

   <details>
     <summary><b>4️⃣ 경매등록 </b></summary>
   
     <b>1. category</b> <br>
     - category_id=1 → “전자기기”(I)<br>
     - category_id=2 → “패션”(I)<br>
     - category_id=3 → “가구”(I)<br>
     - category_id=14 → “회원”(A)<br>
     - category_id=17 → “욕설”(R)<br>
   
     <b>2. auction_item</b> <br>
     - 홍길동 → “아이폰 14 Pro 중고” 등록 (auction_id=1, 시작가 50,000, 입찰 단위 1,000)<br>
     - 첨부파일 file_id=3 : 상품 사진 등록<br>
   
     <b>3. favorite</b> <br>
     - 김영희 → 해당 물품 즐겨찾기 (user_id=2, auction_id=1)<br><br>
   
     ![4  경매등록](https://github.com/user-attachments/assets/c88e5a3d-782e-4df2-8035-5660f6811f67)
   </details>

   <details>
     <summary><b>5️⃣ 입찰 & 낙찰</b></summary>
   
     <b>1. auction_bid</b> <br>
     - 김영희 → 50,000원 시작 입찰<br>
     - 한철수 → 60,000원으로 입찰<br>
     - 최고가 → 한철수 낙찰 (success_status=Y)<br>
   
     <b>2. auction_item</b> <br>
     - current_price=60,000, bid_status=F (낙찰완료)<br>
   
     <b>3. point_log</b> <br>
     - 한철수 → 포인트 60,000 차감 (U 타입, point_amount=30,000 남음)<br>
   
     <b>4. alarm_box</b> <br>
     - 홍길동 → "경매가 시작되었습니다"<br>
     - 김영희 → “새로운 낙찰자가 등장하였습니다” 알림<br>
     - 홍길동, 한철수 → “물품이 낙찰되었습니다” 알림<br><br>
   
     ![5-1  입찰](https://github.com/user-attachments/assets/d02416da-66ae-4a55-a853-b820b76c60da)  
     ![5-2  낙찰re](https://github.com/user-attachments/assets/cea2314a-eb45-48d3-ad01-5293dc7e9322)

   </details>

   <details>
     <summary><b>6️⃣ 배송</b></summary>
   
     <b>1. delivery</b> <br>
     - 한철수 → 배송지 “서울 광진구 긴고랑로4길 13” 등록 (delivery_id=1, status=E)<br>
     - 홍길동 → 운송장번호 “5231582571234” 입력 (status=I)<br>
     - 한철수 → 수령 확인 (status=S)<br><br>
   
     ![6  배송](https://github.com/user-attachments/assets/613cad97-b0f5-44d2-956d-d1a50f737738)
   </details>
   
   <details>
     <summary><b>7️⃣ 리뷰 & 신고</b></summary>
   
     <b>1. review</b> <br>
     - 한철수 → “상품 상태가 좋아요!” 별점 5점 후기 (review_id=1, reviewer_id=4, reviewee_id=1)<br>
     - 첨부파일 file_id=3 : 리뷰 사진 첨부<br>
   
     <b>2. report</b> <br>
     - 다른 회원(예: user_id=4 한철수) → “홍길동이 상품 설명과 다른 물품을 올렸어요” 신고 (report_id=1)<br>
     - 관리자 처리(handler_id=3), report_status=Y, report_action='경고 조치 완료'<br><br>
   
     ![7  리뷰 및 신고](https://github.com/user-attachments/assets/b3c631d3-d849-40aa-8c4e-6557004f008c)
   </details>

   <details>
     <summary><b>8️⃣ 로그</b></summary>
   
     <b>1. user_log</b> <br>
     - 홍길동 → 닉네임 “길동이” → “홍길동짱” 수정 (컬럼명: user_nickname)<br><br>
   
     ![8  로그](https://github.com/user-attachments/assets/dd2cfdd9-bc3d-4585-84c2-ce9855400f06)
   </details>

   <details>
     <summary><b>9️⃣ 알림</b></summary>
   
     <b>1. alarm_template</b> <br>
     - 관리자가 회원들에게 발송할 알림 메시지 등록<br>
       → “경매 시작되었습니다”<br>
       → “새로운 입찰자가 등장하였습니다”<br>
       → “낙찰되었습니다”<br>
   
     <b>2. alarm_box</b> <br>
     - 회원이 경매를 시작 시 관리자가 등록한 알림 메시지가 발송되며, 알림 박스에 저장됨<br>
       - 경매가 시작되었습니다 : 영희(첫 입찰자) 등장 시 판매자(홍길동)에게 전송<br>
       - 새로운 입찰자가 등장하였습니다: 한철수(상위 입찰자 등장 시) → 김영희에게 알림 발송<br>
       - 낙찰되었습니다: 한철수(낙찰자)와 홍길동에게 발송<br><br>
       
   ![9  알림-1](https://github.com/user-attachments/assets/24894578-a166-44f5-98b4-d2bd183826bb)
      
   ![9  알림-2](https://github.com/user-attachments/assets/99f0650a-48e4-442c-ad4e-6dc80f6ca517)
       
   </details>
- ### 🔐LINUX 이중화(Replication)
  안전한 데이터베이스 관리를 위해 master / slave 를 나누어서 데이터를 보관한다

  <details>
  <summary><b>데이터베이스 생성</b></summary>
   <br>
   - 마리아db 루트계정 접속 <br>
     : cmd > sudo mariadb -u root -p <br><br>
   - charlymarket DB를 생성 <br>
     : create database charlymarket; <br><br>
   - 생성 확인 <br>
     : show databses;<br>
   <img width="297" height="166" alt="데이터베이스 생성" src="https://github.com/user-attachments/assets/8b7128c8-dee6-4d3c-8740-e9adb5fb1cfa" />
  </details>

  <details>
  <summary><b>테이블 및 테스트데이터 삽입</b></summary><br>
   - <b>create 테이블 , insert 테스트 데이터</b><br><br>
     테이블 , 테스트 데이터<br>
     [여기](https://www.notion.so/8-2-DB-26036d2af8f5808ab2c9ebea34b8378f?source=copy_link)

  </details>

  <details>
  <summary><b>master / slave</b></summary><br>
     <b>마스터 db 를 복제한 slave db를 생성</b><br>
     master 계정과 slave 계정을 나누어서 환경설정(포트 , ip , position ...) <br><br>
     자세한 설정 방법은 <br>
     [여기]([https://www.notion.so/8-2-DB-26036d2af8f5808ab2c9ebea34b8378f?source=copy_link](https://www.notion.so/blimu/25c2fdb14148813abc10d9713d491507?source=copy_link))

  </details>

  <details>
  <summary><b>Replication 확인</b></summary><br>
   - 나누어진 Db를 확인해 본다<br>
   <br>
     update 테스트 <br>
     
     ![replication_charly](https://github.com/user-attachments/assets/e21d1d4b-df6b-439c-a529-b54988efbaec)


   <br><br>
     insert 테스트 <br> 
    ![replication_charly2](https://github.com/user-attachments/assets/986e919a-a871-4b37-88cc-ea1789611f92)


  </details>

- ### ↗️ 성능 개선
     성능 개선을 자세히 보려면 [여기](https://www.notion.so/26236d2af8f580fcb5a8e3ee5dfbdeb4?v=25b36d2af8f5802b830b000cb9f5aefe&source=copy_link)를 클릭하세요  
  
     <details>
  <summary><b>1.경매 종료 프로세스 -인덱스 튜닝 효과</b></summary>
     - **Before: 풀스캔**
    
    ```sql
    Sort: auction_item.auction_end_time
      Filter: auction_end_time <= NOW(6)
            & (bid_status='B' OR bid_status IS NULL)
      Table scan on auction_item
    (cost=2673.52, rows≈29,969, time≈23.731s)
    ```
    
    - **After: 인덱스 도입 (covering range scan)**
    
    ```sql
    Covering index range scan using idx_auction_item_end_status
      over (auction_end_time <= '2025-09-02 11:49:54' AND bid_status <= 'B')
      + Filter(동일)
    (cost=51.07, rows≈248, time≈0.236s)
    ```
    
    ## 성능 인사이트 (전 → 후)
    
    - ⏱️ **실행시간**: **23.731s → 0.236s**
        
        → **약 100.6× 빠름**, **시간 99.01% 절감**
        
    - 📉 **옵티마이저 비용**: **2673.52 → 51.07**
        
        → **약 52.35× 개선**, **비용 98.09% 감소**
        
    - 📦 **터치한 행 수(스캔)**: **≈30,000 → 248**
        
        → **99.17% 감소**
  </details>

   <details>
  <summary><b>2.확인된 문의 글 조회</b></summary><br>
     - Before: 풀스캔
    
    ```sql
    Sort: inquiry.created_at DESC
      Filter: inquiry.inquiry_status = 'Y'
      Table scan on inquiry
    (cost=32234, rows≈20000, time≈0.149s)
    ```
    
    - After: 인덱스 도입
    
    ```sql
    Index lookup using idx_inquiry_answer_status
      over (inquiry_status = 'Y')
      + Filter: (동일)
    (cost=4860, rows≈20000, time≈0.053s)
    ```
    
    ## 성능 인사이트 (전 → 후)
    
    - ⏱️ **실행시간**: 0.149s → 0.053s
        
        → 약 2.8배 빨라졌으며, 시간은 64.4% 절감되었습니다.
        
    - 📉 **옵티마이저 비용**: 32,234 → 4,860
        
        → 약 6.6배 개선되었으며, 비용은 84.9% 감소했습니다.
        
    - 📦 **터치한 행 수(스캔)**: ≈320,002 → 20,000
        
        → 93.8% 감소했습니다.

  </details>

  <details>
  <summary><b>3.입찰/낙찰 목록 – 정렬/조인 튜닝 효과</b></summary><br>
   - **Before: 파일소트 + 풀테이블 스캔 드라이빙**
    
    ```sql
    Sort: ab.created_at DESC
      Table scan on auction_bid AS ab
    Nested loop ... (조인은 모두 PK 단건 lookup)
    (actual time=29.259..71.175 rows=30008)
    ```
    
    - **After: 인덱스 역방향 커버링 스캔 드라이빙**
    
    ```sql
    Covering index scan on ab using idx_ab_created_at (reverse)
      -- (created_at, auction_id, user_id, bid_amount, success_status)
    Nested loop ... (조인은 모두 PK 단건 lookup)
    (actual time=0.293..48.873 rows=30008)
    ```
    
    ## 성능 인사이트 (전 → 후)
    
    - ⚡ **첫 로우 응답(TTFB)**: **29.259s → 0.293s**
        
        → **약 99.86× 빠름**, **시간 99.00% 절감**
        
    - ⏱ **전체 완료 시간**: **71.175s → 48.873s**
        
        → **약 1.46× 빠름**, **시간 31.33% 절감**
        
    - 🧹 **파일소트 제거**: `Sort` 단계 소멸 → 인덱스 순서로 바로 스트리밍
    - 🧰 **I/O 패턴 개선**: `auction_bid`는 인덱스만으로 **정렬+조인키 커버** → 랜덤 I/O 감소

  </details>

---
## ⚠️ 5. Trouble Shooting
| ⚠️ 문제 상황 | 🧐 원인 분석 | 💡 해결 방법 |
|--------------|-------------|-------------|
| `alarm_id`가 NULL이 되어 알람 저장 실패 | `alarm_template` 테이블에서 전달한 키워드(`p_keyword`)로 `LIKE` 검색했으나 일치하는 템플릿이 없었음. 그 결과 `alarm_id`를 찾지 못해 NULL 상태로 `alarm_box`에 insert 시도됨 | 프로시저 내에서 키워드가 없거나 일치하지 않을 경우 최신 템플릿 하나를 보조 선택하도록 추가. `alarm_id`가 여전히 NULL일 경우 `LEAVE` 처리로 알림 insert 자체를 하지 않도록 안전장치 구현 |
| 상위 입찰 알림이 본인에게 발송됨 | `auction_bid` INSERT 시 가장 높은 입찰자를 찾을 때 방금 입찰한 유저와 같은 경우 발생 | `bid_id <> NEW.bid_id` 조건 추가하여 본인 제외 |
| 템플릿 키워드 컬럼이 없어 다양한 알림 분기 어려움 | `alarm_template`에는 별도 키 컬럼 없이 `alarm_content`만 존재. 다양한 문구 분리를 위해 정렬 불가능 또는 중복 발생 | 키워드로 `LIKE` 검색되도록 알람 등록 시 핵심 키워드 포함된 문구 사용. 예: '회원가입이 완료되었습니다.' → '회원가입' 키워드로 검색 가능 |
| 낙찰/유찰 조건식 오류 | SQL에서 AND와 OR의 연산자 우선순위 문제. OR가 독립적으로 먼저 적용되어 종료 조건(auction_end_time <= NOW(6))이 무시된 채 bid_status IS NULL인 행이 전부 반환됨 | 괄호를 통해 조건을 명확히 묶어줌으로써 정상적으로 종료 조건이 적용되도록 수정. 종료 시간이 지난 후, 낙찰 또는 유찰 대상만 정확히 조회되도록 정상화 |
| 동시 입찰 처리 문제 | 여러 사용자가 동시에 최초 입찰을 시도할 수 있어 단순 쿼리만으로는 데이터 정합성 깨짐(포인트 중복 차감, 동일 가격 중복 입찰) 발생 | 저장 프로시저와 트랜잭션 + 행 잠금(`FOR UPDATE`) 적용. 최초 입찰 시 경매 아이템 행 잠금, 포인트 차감과 경매 상태 변경 원자적 트랜잭션 처리, 종료 10분 이내 입찰 시 자동 연장. 이를 통해 동시 입찰 시 데이터 정합성 및 경매 상태 일관성 보장 |
| 신고 업데이트 트리거 문제 | 같은 테이블을 update할 때 트리거 안에서 update가 트리거 실행과 충돌 발생 | `AFTER UPDATE` → `BEFORE UPDATE`로 변경. 트리거가 실행 중인 update 문과 충돌하지 않도록 하고, 트리거 안에서 `SET`만 정의하여 값 변경 가능하게 처리 |
| 프로시저 입력값으로 계좌 선택 불가 | 사용자가 계좌를 선택할 수 없고, `p_user_id`와 `p_payment_amount`만 입력 받음 | `p_user_id`, `p_payment_amount`, `p_account_id`를 입력 받아 사용자가 계좌 선택 가능하도록 수정 |
| 포인트 충전/환불 로그 문제 | 결제 로그(payment_log)와 포인트 로그(point_log)를 분리했으나, 실제 돈→포인트 충전과 포인트→실제 돈 환불 과정도 포인트 로그에 입력되어야 함. 이로 인해 회원 테이블 잔고와 로그 잔고 불일치 발생 | 결제 로그(payment_log): 실제 돈과 포인트 오가는 행위만 기록(충전, 환불)<br>포인트 로그(point_log): 포인트 거래 모두 기록(충전, 환불, 이전, 반환 등)<br>`point_log`의 `bid_id` NOT NULL → NULL로 변경: 충전 시 경매 아이디 필요 없음 |
| 회원가입 insert 시 전화번호 정상 입력 안됨 | `user_phone` 속성이 INT로 되어 있어 010~ 번호가 10~으로 입력됨 | `user_phone` 컬럼을 VARCHAR로 수정 |
| 질의 사항 작성 시 파일 데이터 없으면 상세 데이터 출력 오류 | `inquiry` 테이블과 `file` 테이블을 JOIN했으나 file 테이블에 내용이 없으면 오류 발생 | `inquiry_id`를 기준으로 LEFT JOIN하여 해당 `inquiry_id`와 연결된 file 테이블이 없어도 정상 출력 |


---

# 🍺 6. 프로젝트 회고록

| 👤 이름       | 📝 내용 |
|---------------|---------|
| 이민욱        | ⏳ 처음 시작할 때는 시간이 넉넉하다고 느꼈지만, 막상 진행하면서 요구사항이 계속 추가되어 일정이 빠듯했습니다. 그럼에도 불구하고 💡 명확하고 매력적인 아이디어, 🤝 서로 믿고 협력하는 팀워크 덕분에 역할을 효과적으로 분담하고 끝까지 몰입할 수 있었고, 기대 이상의 완성도를 만들어낼 수 있었습니다. 실제 운영을 전제로 한 ‘경매’를 깊이 경험하며, 동시 입찰 경쟁, 자동 낙찰 및 유찰, 포인트 보관/환원 등 사례를 직접 설계하고 검증하면서 시스템 설계와 트랜잭션 중요성을 몸소 느낄 수 있었습니다. 안전하게 작동하는 시스템을 고민하며 협업의 힘과 설계의 중요성을 깨달았습니다. 🙌 |
| 김상재        | 😅 비전공자로 시작할 때 막막했지만, 팀원들의 👩‍🏫👨‍🏫 도움과 자유로운 의견 공유 덕분에 많이 배웠습니다. 혼자 혹은 둘이서 적절히 분업하며 부담을 줄이고, 모두 모여 피드백과 의견을 취합하며 프로젝트가 완성되는 과정을 통해 협업의 중요성을 실감했습니다. 의견이 갈리더라도 서로 설득하고 타협하는 과정 또한 큰 배움이었습니다. 🤝 |
| 박연수        | 💾 데이터베이스 구조를 처음부터 끝까지 모델링해보며 이해도가 높아졌습니다. 협업과 분업 속에서도 원활한 의견 조율 덕분에 DB 설계와 모델링을 직접 경험하면서 이론보다 훨씬 이해가 쉬웠고, DB 담당자의 노고를 알게 되었습니다. 모두 수고 많으셨습니다! 👏 |
| 김성태        | 😌 비전공자로 팀에 피해를 주지 않을까 걱정했지만, 팀의 격려와 협력 덕분에 프로젝트를 시작할 수 있었습니다. DB 관련 첫 프로젝트를 통해 SQL 작성과 데이터베이스 이해가 높아졌고, 화기애애한 협업 속에서 개발자 마인드와 협업의 중요성을 배우는 좋은 경험이었습니다. 💡 |
| 박인수        | 🏗 DB만으로 프로젝트를 진행하며 처음에는 간단할 것이라 생각했지만, 구현할 기능이 많고 테이블 관계를 고려해야 해서 DB 이해도가 늘었습니다. 열정적인 팀원들과 문제를 함께 해결하며 협업의 필요성을 몸소 느낄 수 있었습니다. 🔧 |
| 유한세        | 🎯 관심 있는 주제를 직접 DB로 구현하며 뿌듯함을 느꼈습니다. ERD 작성과 테이블 관계 구체화를 통해 경매 기능이 포함된 시스템을 구현하며 수업에서 배운 이론을 실제 프로젝트에 적용할 수 있었습니다. 어려움 속에서도 문제를 해결하며 프로젝트 완성에서 큰 성취감을 얻었고, 앞으로 DB 설계 능력을 더 발전시키고 싶습니다. 🚀 |
