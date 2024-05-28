-- gghj-user 더미
INSERT INTO GGHJ_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_EMAIL, USER_NICKNAME, USER_BIRTH)
VALUES (1, 'John Doe', 'password123', 'john.doe@example.com', 'johnny', TO_DATE('1990-01-01', 'YYYY-MM-DD'));

INSERT INTO GGHJ_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_EMAIL, USER_NICKNAME, USER_BIRTH)
VALUES (2, 'Jane Smith', 'securePass!', 'jane.smith@example.com', 'janeS', TO_DATE('1985-05-15', 'YYYY-MM-DD'));

INSERT INTO GGHJ_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_EMAIL, USER_NICKNAME, USER_BIRTH)
VALUES (3, 'Alice Johnson', 'alicePwd$', 'alice.j@example.com', 'aliceJ', TO_DATE('1992-08-24', 'YYYY-MM-DD'));

INSERT INTO GGHJ_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_EMAIL, USER_NICKNAME, USER_BIRTH)
VALUES (4, 'Bob Brown', 'bobPass#2021', 'bob.brown@example.com', 'bobby', TO_DATE('1988-12-10', 'YYYY-MM-DD'));

INSERT INTO GGHJ_USER (USER_ID, USER_NAME, USER_PASSWORD, USER_EMAIL, USER_NICKNAME, USER_BIRTH)
VALUES (5, 'Charlie White', 'charlieSecure*', 'charlie.white@example.com', 'charlieW', TO_DATE('1995-03-30', 'YYYY-MM-DD'));

-- kakao 더미
INSERT INTO GGHJ_KAKAO (KAKAO_ID, KAKAO_EMAIL, KAKAO_NICKNAME, KAKAO_BIRTH)
VALUES (1, 'kakao.john@example.com', 'kakaoJohn', TO_DATE('1990-01-01', 'YYYY-MM-DD'));

INSERT INTO GGHJ_KAKAO (KAKAO_ID, KAKAO_EMAIL, KAKAO_NICKNAME, KAKAO_BIRTH)
VALUES (2, 'kakao.jane@example.com', 'kakaoJane', TO_DATE('1985-05-15', 'YYYY-MM-DD'));

INSERT INTO GGHJ_KAKAO (KAKAO_ID, KAKAO_EMAIL, KAKAO_NICKNAME, KAKAO_BIRTH)
VALUES (3, 'kakao.alice@example.com', 'kakaoAlice', TO_DATE('1992-08-24', 'YYYY-MM-DD'));

INSERT INTO GGHJ_KAKAO (KAKAO_ID, KAKAO_EMAIL, KAKAO_NICKNAME, KAKAO_BIRTH)
VALUES (4, 'kakao.bob@example.com', 'kakaoBob', TO_DATE('1988-12-10', 'YYYY-MM-DD'));

INSERT INTO GGHJ_KAKAO (KAKAO_ID, KAKAO_EMAIL, KAKAO_NICKNAME, KAKAO_BIRTH)
VALUES (5, 'kakao.charlie@example.com', 'kakaoCharlie', TO_DATE('1995-03-30', 'YYYY-MM-DD'));

-- GGHJ_UNI 테이블의 더미 데이터
INSERT INTO GGHJ_UNI (UNI_ID, UNI_STATUS, UNI_ABOUT, USER_ID, KAKAO_ID)
VALUES (1, '일반', null, 1, null);

INSERT INTO GGHJ_UNI (UNI_ID, UNI_STATUS, UNI_ABOUT, USER_ID, KAKAO_ID)
VALUES (2, '일반', null, 2, null);

INSERT INTO GGHJ_UNI (UNI_ID, UNI_STATUS, UNI_ABOUT, USER_ID, KAKAO_ID)
VALUES (6, '일반', null, 3, null);

INSERT INTO GGHJ_UNI (UNI_ID, UNI_STATUS, UNI_ABOUT, USER_ID, KAKAO_ID)
VALUES (4, '일반', null, 4, NULL);

INSERT INTO GGHJ_UNI (UNI_ID, UNI_STATUS, UNI_ABOUT, USER_ID, KAKAO_ID)
VALUES (5, '일반', null, 5, null);


-- GGHJ_FILE 테이블의 더미 데이터
INSERT INTO GGHJ_FILE (FILE_ID, FILE_PROFILE_NAME, FILE_PROFILE_SOURCE, FILE_BACK_NAME, FILE_BACK_SOURCE, USER_ID)
VALUES (1, 'profile1.jpg', '/images/profile1.jpg', 'background1.jpg', '/images/background1.jpg', 1);

INSERT INTO GGHJ_FILE (FILE_ID, FILE_PROFILE_NAME, FILE_PROFILE_SOURCE, FILE_BACK_NAME, FILE_BACK_SOURCE, USER_ID)
VALUES (2, 'profile2.jpg', '/images/profile2.jpg', 'background2.jpg', '/images/background2.jpg', 2);

INSERT INTO GGHJ_FILE (FILE_ID, FILE_PROFILE_NAME, FILE_PROFILE_SOURCE, FILE_BACK_NAME, FILE_BACK_SOURCE, USER_ID)
VALUES (3, 'profile3.jpg', '/images/profile3.jpg', 'background3.jpg', '/images/background3.jpg', 6);

INSERT INTO GGHJ_FILE (FILE_ID, FILE_PROFILE_NAME, FILE_PROFILE_SOURCE, FILE_BACK_NAME, FILE_BACK_SOURCE, USER_ID)
VALUES (4, 'profile4.jpg', '/images/profile4.jpg', 'background4.jpg', '/images/background4.jpg', 4);

INSERT INTO GGHJ_FILE (FILE_ID, FILE_PROFILE_NAME, FILE_PROFILE_SOURCE, FILE_BACK_NAME, FILE_BACK_SOURCE, USER_ID)
VALUES (5, 'profile5.jpg', '/images/profile5.jpg', 'background5.jpg', '/images/background5.jpg', 5);

-- follow 더미
INSERT INTO GGHJ_FOLLOW (FOLLOW_ID, FOLLOW_TO_USER, FOLLOW_FROM_USER, FOLLOW_CREATED_DATE)
VALUES (1, 1, 2, SYSDATE);

INSERT INTO GGHJ_FOLLOW (FOLLOW_ID, FOLLOW_TO_USER, FOLLOW_FROM_USER, FOLLOW_CREATED_DATE)
VALUES (2, 1, 2, SYSDATE);

INSERT INTO GGHJ_FOLLOW (FOLLOW_ID, FOLLOW_TO_USER, FOLLOW_FROM_USER, FOLLOW_CREATED_DATE)
VALUES (6, 1, 6, SYSDATE);

INSERT INTO GGHJ_FOLLOW (FOLLOW_ID, FOLLOW_TO_USER, FOLLOW_FROM_USER, FOLLOW_CREATED_DATE)
VALUES (4, 1, 4, SYSDATE);

INSERT INTO GGHJ_FOLLOW (FOLLOW_ID, FOLLOW_TO_USER, FOLLOW_FROM_USER, FOLLOW_CREATED_DATE)
VALUES (5, 5, 2, SYSDATE);

-- Board 더미
INSERT INTO GGHJ_BOARD (BOARD_ID, BOARD_TITLE, BOARD_CONTENT, BOARD_PUBLIC, BOARD_CREATED_DATE, BOARD_UPDATED_DATE, BOARD_VIEW_COUNT, BOARD_LIFE_CYCLE, BOARD_LIKE_COUNT, BOARD_YEAR, USER_ID)
VALUES (1, 'My First Post', 'This is the content of my first post.', 'O', SYSDATE, SYSDATE, 0, '청소년기', 0, 2024, 1);

INSERT INTO GGHJ_BOARD (BOARD_ID, BOARD_TITLE, BOARD_CONTENT, BOARD_PUBLIC, BOARD_CREATED_DATE, BOARD_UPDATED_DATE, BOARD_VIEW_COUNT, BOARD_LIFE_CYCLE, BOARD_LIKE_COUNT, BOARD_YEAR, USER_ID)
VALUES (2, 'A Day in the Life', 'Today I want to share what a typical day looks like for me.', 'X', SYSDATE, SYSDATE, 0, '청년', 0, 2024, 2);

INSERT INTO GGHJ_BOARD (BOARD_ID, BOARD_TITLE, BOARD_CONTENT, BOARD_PUBLIC, BOARD_CREATED_DATE, BOARD_UPDATED_DATE, BOARD_VIEW_COUNT, BOARD_LIFE_CYCLE, BOARD_LIKE_COUNT, BOARD_YEAR, USER_ID)
VALUES (3, 'Reflections', 'Reflecting on the past few years and what I have learned.', 'O', SYSDATE, SYSDATE, 0, '중년', 0, 2024, 1);

INSERT INTO GGHJ_BOARD (BOARD_ID, BOARD_TITLE, BOARD_CONTENT, BOARD_PUBLIC, BOARD_CREATED_DATE, BOARD_UPDATED_DATE, BOARD_VIEW_COUNT, BOARD_LIFE_CYCLE, BOARD_LIKE_COUNT, BOARD_YEAR, USER_ID)
VALUES (4, 'Travel Diaries', 'Sharing my travel experiences and adventures.', 'O', SYSDATE, SYSDATE, 0, '전성기', 0, 2024, 4);

INSERT INTO GGHJ_BOARD (BOARD_ID, BOARD_TITLE, BOARD_CONTENT, BOARD_PUBLIC, BOARD_CREATED_DATE, BOARD_UPDATED_DATE, BOARD_VIEW_COUNT, BOARD_LIFE_CYCLE, BOARD_LIKE_COUNT, BOARD_YEAR, USER_ID)
VALUES (5, 'Family Memories', 'Cherishing the moments spent with family.', 'X', SYSDATE, SYSDATE, 0, '노년', 0, 2024, 5);

INSERT INTO GGHJ_BOARD (BOARD_ID, BOARD_TITLE, BOARD_CONTENT, BOARD_PUBLIC, BOARD_CREATED_DATE, BOARD_UPDATED_DATE, BOARD_VIEW_COUNT, BOARD_LIFE_CYCLE, BOARD_LIKE_COUNT, BOARD_YEAR, USER_ID)
VALUES (6, 'Family ', ' moments spent with family.', 'X', SYSDATE, SYSDATE, 0, '노년', 2, 2025, 5);

INSERT INTO GGHJ_BOARD (BOARD_ID, BOARD_TITLE, BOARD_CONTENT, BOARD_PUBLIC, BOARD_CREATED_DATE, BOARD_UPDATED_DATE, BOARD_VIEW_COUNT, BOARD_LIFE_CYCLE, BOARD_LIKE_COUNT, BOARD_YEAR, USER_ID)
VALUES (7, 'Memories', 'moments spent .', 'O', SYSDATE, SYSDATE, 0, '노년', 1, 2026, 5);

INSERT INTO GGHJ_BOARD (BOARD_ID, BOARD_TITLE, BOARD_CONTENT, BOARD_PUBLIC, BOARD_CREATED_DATE, BOARD_UPDATED_DATE, BOARD_VIEW_COUNT, BOARD_LIFE_CYCLE, BOARD_LIKE_COUNT, BOARD_YEAR, USER_ID)
VALUES (8, 'Memo', ' spent .', 'O', SYSDATE, SYSDATE, 1, '노년', 1, 2027, 2);



-- Board-file 더미
INSERT INTO GGHJ_BOARD_FILE (BOARD_FILE_ID, BOARD_FILE_NAME, BOARD_FILE_SOURCE_NAME, BOARD_ID)
VALUES (1, '/images/photo1.jpg', 'photo1.jpg', 1);

INSERT INTO GGHJ_BOARD_FILE (BOARD_FILE_ID, BOARD_FILE_NAME, BOARD_FILE_SOURCE_NAME, BOARD_ID)
VALUES (2, '/images/photo2.jpg', 'photo2.jpg', 2);

INSERT INTO GGHJ_BOARD_FILE (BOARD_FILE_ID, BOARD_FILE_NAME, BOARD_FILE_SOURCE_NAME, BOARD_ID)
VALUES (3, '/images/photo3.jpg', 'photo3.jpg', 3);

INSERT INTO GGHJ_BOARD_FILE (BOARD_FILE_ID, BOARD_FILE_NAME, BOARD_FILE_SOURCE_NAME, BOARD_ID)
VALUES (4, '/images/photo4.jpg', 'photo4.jpg', 4);

INSERT INTO GGHJ_BOARD_FILE (BOARD_FILE_ID, BOARD_FILE_NAME, BOARD_FILE_SOURCE_NAME, BOARD_ID)
VALUES (5, '/images/photo5.jpg', 'photo5.jpg', 5);

-- Comment 더미
INSERT INTO GGHJ_COMMENT (COMMENT_ID, COMMENT_CONTENT, COMMENT_CREATED_DATE, BOARD_ID, USER_ID)
VALUES (1, 'Great post! Really enjoyed reading it.', SYSDATE, 1, 1);

INSERT INTO GGHJ_COMMENT (COMMENT_ID, COMMENT_CONTENT, COMMENT_CREATED_DATE, BOARD_ID, USER_ID)
VALUES (2, 'Thank you for sharing your experience.', SYSDATE, 2, 2);

INSERT INTO GGHJ_COMMENT (COMMENT_ID, COMMENT_CONTENT, COMMENT_CREATED_DATE, BOARD_ID, USER_ID)
VALUES (3, 'This is very insightful, thanks!', SYSDATE, 3, 2);

INSERT INTO GGHJ_COMMENT (COMMENT_ID, COMMENT_CONTENT, COMMENT_CREATED_DATE, BOARD_ID, USER_ID)
VALUES (4, 'I can relate to this so much.', SYSDATE, 4, 4);

INSERT INTO GGHJ_COMMENT (COMMENT_ID, COMMENT_CONTENT, COMMENT_CREATED_DATE, BOARD_ID, USER_ID)
VALUES (5, 'Wonderful memories, thank you for posting.', SYSDATE, 5, 5);


--reply 더미
INSERT INTO GGHJ_REPLY (REPLY_ID, REPLY_CONTENT, REPLY_CREATED_DATE, COMMENT_ID)
VALUES (1, 'I agree with your point!', SYSDATE, 1);

INSERT INTO GGHJ_REPLY (REPLY_ID, REPLY_CONTENT, REPLY_CREATED_DATE, COMMENT_ID)
VALUES (2, 'Thanks for the feedback!', SYSDATE, 2);

INSERT INTO GGHJ_REPLY (REPLY_ID, REPLY_CONTENT, REPLY_CREATED_DATE, COMMENT_ID)
VALUES (3, 'Glad you found it helpful!', SYSDATE, 3);

INSERT INTO GGHJ_REPLY (REPLY_ID, REPLY_CONTENT, REPLY_CREATED_DATE, COMMENT_ID)
VALUES (4, 'Exactly my thoughts!', SYSDATE, 4);

INSERT INTO GGHJ_REPLY (REPLY_ID, REPLY_CONTENT, REPLY_CREATED_DATE, COMMENT_ID)
VALUES (5, 'Appreciate your kind word!', sysdate, 3);

-- report 더미
INSERT INTO GGHJ_REPORT (REPORT_ID, REPORT_REASON, REPORT_CREATED_DATE, REPORT_COUNT, USER_ID, REPLY_ID, COMMENT_ID)
VALUES (1, 'Inappropriate content', SYSDATE, 1, 1, 1, 1);

INSERT INTO GGHJ_REPORT (REPORT_ID, REPORT_REASON, REPORT_CREATED_DATE, REPORT_COUNT, USER_ID, REPLY_ID, COMMENT_ID)
VALUES (2, 'Harassment', SYSDATE, 1, 2, 2, 2);

INSERT INTO GGHJ_REPORT (REPORT_ID, REPORT_REASON, REPORT_CREATED_DATE, REPORT_COUNT, USER_ID, REPLY_ID, COMMENT_ID)
VALUES (3, 'Spam', SYSDATE, 1, 4, 3, 3);

INSERT INTO GGHJ_REPORT (REPORT_ID, REPORT_REASON, REPORT_CREATED_DATE, REPORT_COUNT, USER_ID, REPLY_ID, COMMENT_ID)
VALUES (4, 'Offensive language', SYSDATE, 1, 5, 4, 4);

INSERT INTO GGHJ_REPORT (REPORT_ID, REPORT_REASON, REPORT_CREATED_DATE, REPORT_COUNT, USER_ID, REPLY_ID, COMMENT_ID)
VALUES (5, 'False information', SYSDATE, 1, 4, 5, 5);


-- inquiry 더미
INSERT INTO GGHJ_INQUIRY (INQUIRY_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_RESPONSE, INQUIRY_CREATED_DATE, INQUIRY_PUBLIC, USER_ID)
VALUES (1, 'Question about service', 'I have a question about the service.', 'Thank you for your inquiry. We will get back to you shortly.', SYSDATE, 'O',  1);

INSERT INTO GGHJ_INQUIRY (INQUIRY_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_RESPONSE, INQUIRY_CREATED_DATE, INQUIRY_PUBLIC, USER_ID)
VALUES (2, 'Question about service', 'I have a question about the service.', 'Thank you for your inquiry. We will get back to you shortly.', SYSDATE, 'O',  1);

INSERT INTO GGHJ_INQUIRY (INQUIRY_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_RESPONSE, INQUIRY_CREATED_DATE, INQUIRY_PUBLIC, USER_ID)
VALUES (3, 'Bug report', 'There is a bug in the system.', 'Thank you for reporting the bug. Our team is looking into it.', SYSDATE, 'O', 1);

INSERT INTO GGHJ_INQUIRY (INQUIRY_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_RESPONSE, INQUIRY_CREATED_DATE, INQUIRY_PUBLIC, USER_ID)
VALUES (4, 'Question about service', 'I have a question about the service.', 'Thank you for your inquiry. We will get back to you shortly.', SYSDATE, 'O',  1);

INSERT INTO GGHJ_INQUIRY (INQUIRY_ID, INQUIRY_TITLE, INQUIRY_CONTENT, INQUIRY_RESPONSE, INQUIRY_CREATED_DATE, INQUIRY_PUBLIC, USER_ID)
VALUES (5, 'General inquiry', 'I would like to know more about your services.', 'Thank you for your interest. Please visit our FAQ section for more information.', SYSDATE, 'O', 5);

-- notice 더미
INSERT INTO GGHJ_NOTICE (NOTICE_ID, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_CREATED_DATE, USER_ID)
VALUES (1, 'Welcome to Our Service', 'We are excited to have you on board. Stay tuned for updates!', SYSDATE, 1);

INSERT INTO GGHJ_NOTICE (NOTICE_ID, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_CREATED_DATE, USER_ID)
VALUES (2, 'Maintenance Downtime', 'Our service will be down for maintenance on June 1st from 2 AM to 4 AM.', SYSDATE, 2);

INSERT INTO GGHJ_NOTICE (NOTICE_ID, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_CREATED_DATE, USER_ID)
VALUES (3, 'New Feature Release', 'We are excited to announce new features coming this summer!', SYSDATE, 1);

INSERT INTO GGHJ_NOTICE (NOTICE_ID, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_CREATED_DATE, USER_ID)
VALUES (4, 'Policy Update', 'Please review our updated privacy policy.', SYSDATE,  4);

INSERT INTO GGHJ_NOTICE (NOTICE_ID, NOTICE_TITLE, NOTICE_CONTENT, NOTICE_CREATED_DATE, USER_ID)
VALUES (5, 'Policy Update', 'Please review our updated privacy policy.', SYSDATE,  4);


--main-banner 더미
INSERT INTO GGHJ_MAIN_BANNER (BANNER_ID, BANNER_NAME, BANNER_SOURCE, USER_ID)
VALUES (1, '/images/main_banner1.jpg', 'main_banner1.jpg', 1);

INSERT INTO GGHJ_MAIN_BANNER (BANNER_ID, BANNER_NAME, BANNER_SOURCE, USER_ID)
VALUES (2, '/images/main_banner2.jpg', 'main_banner2.jpg', 2);

INSERT INTO GGHJ_MAIN_BANNER (BANNER_ID, BANNER_NAME, BANNER_SOURCE, USER_ID)
VALUES (3, '/images/main_banner3.jpg', 'main_banner3.jpg', 1);

INSERT INTO GGHJ_MAIN_BANNER (BANNER_ID, BANNER_NAME, BANNER_SOURCE, USER_ID)
VALUES (4, '/images/main_banner4.jpg', 'main_banner4.jpg', 4);

INSERT INTO GGHJ_MAIN_BANNER (BANNER_ID, BANNER_NAME, BANNER_SOURCE, USER_ID)
VALUES (5, '/images/main_banner5.jpg', 'main_banner5.jpg', 1);

