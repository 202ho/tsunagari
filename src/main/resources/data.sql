
INSERT INTO TEST(title) VALUES('title1');
INSERT INTO TEST(title) VALUES('title2');
INSERT INTO TEST(title) VALUES('title3');
INSERT INTO TEST(title) VALUES('title4');
INSERT INTO TEST(title) VALUES('title5');

INSERT INTO Category(name) VALUES('아웃도어');
INSERT INTO Category(name) VALUES('피트니스');
INSERT INTO Category(name) VALUES('뷰티');
INSERT INTO Category(name) VALUES('공예');
INSERT INTO Category(name) VALUES('스포츠');
INSERT INTO Category(name) VALUES('베이킹');
INSERT INTO Category(name) VALUES('취미');
INSERT INTO Category(name) VALUES('온라인');
INSERT INTO Category(name) VALUES('자기계발');
INSERT INTO Category(name) VALUES('모임');
INSERT INTO Category(name) VALUES('심리상담');
INSERT INTO Category(name) VALUES('국내여행');
INSERT INTO Category(name) VALUES('해외여행');
INSERT INTO Category(name) VALUES('수상레포츠');
INSERT INTO Category(name) VALUES('요리');
INSERT INTO Category(name) VALUES('음료');

INSERT INTO member(email, nickname, password, ishost, intro, phone) VALUES('test@test.com', 'test','test', 'Y', '안녕하세요', '01012344567');
INSERT INTO member(email, nickname, password, ishost, intro, phone) VALUES('test2@test2.com', 'test','test', 'Y', '안녕하세요', '01012344567');
INSERT INTO member(email, nickname, password, ishost, intro, phone) VALUES('test3@test3.com', 'test','test', 'Y', '안녕하세요', '01012344567');


INSERT INTO activity (hostid, title, content, address, regdate, enddate, price, likecount, maxpeople, keyword, city, thumbnail, category, x, y) VALUES
(3, '3 Hiking Adventure', 'Join us for a fun hiking trip.', '123 Mountain Rd', '2024-09-01', '2024-09-02', 5000, 1, 10, 'hiking', 'Denver', 'thumbnail1.jpg', '아웃도어', '33.450701', '126.570667'),
(3, '3 Cooking Class', 'Learn to cook Italian cuisine.', '456 Food St', '2024-09-05', '2024-09-05', 7500, 2, 8, 'cooking', 'New York', 'thumbnail2.jpg', '피트니스', '33.450701', '126.570667'),
(3, '3 Photography Workshop', 'Improve your photography skills.', '789 Camera Ave', '2024-09-10', '2024-09-11', 1000, 3, 12, 'photography', 'San Francisco', 'thumbnail3.jpg','피트니스', '33.450701', '126.570667'),
(3, '3 Yoga Retreat', 'Relax and rejuvenate with yoga.', '321 Peace Ln', '2024-09-15', '2024-09-17', 2000, 4, 15, 'yoga', 'Los Angeles', 'thumbnail4.jpg', '피트니스', '33.450701', '126.570667'),
(3, '3 Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 1200, 5, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg', '피트니스', '33.450701', '126.570667'),
(2, '2 Hiking Adventure', 'Join us for a fun hiking trip.', '123 Mountain Rd', '2024-09-01', '2024-09-02', 5000, 1, 10, 'hiking', 'Denver', 'thumbnail1.jpg', '피트니스', '33.450701', '126.570667'),
(2, '2 Cooking Class', 'Learn to cook Italian cuisine.', '456 Food St', '2024-09-05', '2024-09-05', 7500, 2, 8, 'cooking', 'New York', 'thumbnail2.jpg', '뷰티', '33.450701', '126.570667'),
(2, '2 Photography Workshop', 'Improve your photography skills.', '789 Camera Ave', '2024-09-10', '2024-09-11', 1000, 3, 12, 'photography', 'San Francisco', 'thumbnail3.jpg', '뷰티', '33.450701', '126.570667'),
(2, '2 Yoga Retreat', 'Relax and rejuvenate with yoga.', '321 Peace Ln', '2024-09-15', '2024-09-17', 2000, 4, 15, 'yoga', 'Los Angeles', 'thumbnail4.jpg', '뷰티', '33.450701', '126.570667'),
(2, '2 Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 1200, 5, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg', '공예', '33.450701', '126.570667'),
(2, '2 Art Class', 'Unleash your creativity with painting.', '987 Art Blvd', '2024-09-25', '2024-09-26', 6000, 6, 10, 'art class', 'Chicago', 'thumbnail6.jpg', '공예', '33.450701', '126.570667'),
(2, '2 Hiking Adventure', 'Join us for a fun hiking trip.', '123 Mountain Rd', '2024-09-01', '2024-09-02', 5000, 7, 10, 'hiking', 'Denver', 'thumbnail1.jpg', '공예', '33.450701', '126.570667'),
(2, '2 Photography Workshop', 'Improve your photography skills.', '789 Camera Ave', '2024-09-10', '2024-09-11', 10000, 9, 12, 'photography', 'San Francisco', 'thumbnail3.jpg', '공예', '33.450701', '126.570667'),
(2, '2 Yoga Retreat', 'Relax and rejuvenate with yoga.', '321 Peace Ln', '2024-09-15', '2024-09-17', 2000, 10, 15, 'yoga', 'Los Angeles', 'thumbnail4.jpg', '스포츠', '33.450701', '126.570667'),
(2, '2 Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 1200, 11, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg', '스포츠', '33.450701', '126.570667'),
(2, '2 A2rt Class', 'Unleash your creativity with painting.', '987 Art Blvd', '2024-09-25', '2024-09-26', 6000, 12, 10, 'art class', 'Chicago', 'thumbnail6.jpg', '베이킹', '33.450701', '126.570667'),
(2, '2 Hiking Adventure', 'Join us for a fun hiking trip.', '123 Mountain Rd', '2024-09-01', '2024-09-02', 5000, 13, 10, 'hiking', 'Denver', 'thumbnail1.jpg', '베이킹', '33.450701', '126.570667'),
(2, '2 Cooking Class', 'Learn to cook Italian cuisine.', '456 Food St', '2024-09-05', '2024-09-05', 7500, 14, 8, 'cooking', 'New York', 'thumbnail2.jpg', '취미', '33.450701', '126.570667'),
(2, '2 Photography Workshop', 'Improve your photography skills.', '789 Camera Ave', '2024-09-10', '2024-09-11', 1000, 15, 12, 'photography', 'San Francisco', 'thumbnail3.jpg', '온라인', '33.450701', '126.570667'),
(2, '2 Yoga Retreat', 'Relax and rejuvenate with yoga.', '321 Peace Ln', '2024-09-15', '2024-09-17', 2000, 16, 15, 'yoga', 'Los Angeles', 'thumbnail4.jpg', '온라인', '33.450701', '126.570667'),
(2, '2 Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 1200, 17, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg', '자기계발', '33.450701', '126.570667'),
(2, '2 Art Class', 'Unleash your creativity with painting.', '987 Art Blvd', '2024-09-25', '2024-09-26', 6000, 18, 10, 'art class', 'Chicago', 'thumbnail6.jpg', '자기계발', '33.450701', '126.570667'),
(2, '2 Hiking Adventure', 'Join us for a fun hiking trip.', '123 Mountain Rd', '2024-09-01', '2024-09-02', 5000, 19, 10, 'hiking', 'Denver', 'thumbnail1.jpg', '자기계발', '33.450701', '126.570667'),
(2, '2  Cooking Class', 'Learn to cook Italian cuisine.', '456 Food St', '2024-09-05', '2024-09-05', 7500, 20, 8, 'cooking', 'New York', 'thumbnail2.jpg', '자기계발', '33.450701', '126.570667'),
(2, '2 Photography Workshop', 'Improve your photography skills.', '789 Camera Ave', '2024-09-10', '2024-09-11', 1000, 21, 12, 'photography', 'San Francisco', 'thumbnail3.jpg', '자기계발', '33.450701', '126.570667'),
(2, '2 Yoga Retreat', 'Relax and rejuvenate with yoga.', '321 Peace Ln', '2024-09-15', '2024-09-17', 2000, 22, 15, 'yoga', 'Los Angeles', 'thumbnail4.jpg', '모임', '33.450701', '126.570667'),
(2, '2 Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 12000, 23, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg', '모임', '33.450701', '126.570667'),
(2, '2 Art Class', 'Unleash your creativity with painting.', '987 Art Blvd', '2024-09-25', '2024-09-26', 600, 24, 10, 'art class', 'Chicago', 'thumbnail6.jpg', '심리상담', '33.450701', '126.570667'),
(2, '2 Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 1200, 25, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg', '심리상담', '33.450701', '126.570667'),
(2, '2 Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 12000, 11, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg', '국내여행', '33.450701', '126.570667'),
(2, '2 Art Class', 'Unleash your creativity with painting.', '987 Art Blvd', '2024-09-25', '2024-09-26', 6000, 12, 10, 'art class', 'Chicago', 'thumbnail6.jpg', '국내여행', '33.450701', '126.570667'),
(2, '2 Hiking Adventure', 'Join us for a fun hiking trip.', '123 Mountain Rd', '2024-09-01', '2024-09-02', 5000, 13, 10, 'hiking', 'Denver', 'thumbnail1.jpg', '해외여헹', '33.450701', '126.570667'),
(2, '2 Cooking Class', 'Learn to cook Italian cuisine.', '456 Food St', '2024-09-05', '2024-09-05', 7500, 14, 8, 'cooking', 'New York', 'thumbnail2.jpg', '해외여헹', '33.450701', '126.570667'),
(2, '2 Photography Workshop', 'Improve your photography skills.', '789 Camera Ave', '2024-09-10', '2024-09-11', 1000, 15, 12, 'photography', 'San Francisco', 'thumbnail3.jpg', '수상레포츠', '33.450701', '126.570667'),
(1, 'Yoga Retreat', 'Relax and rejuvenate with yoga.', '321 Peace Ln', '2024-09-15', '2024-09-17', 2000, 16, 15, 'yoga', 'Los Angeles', 'thumbnail4.jpg', '수상레포츠', '33.450701', '126.570667'),
(1, 'Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 1200, 17, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg', '요리', '33.450701', '126.570667'),
(1, 'Art Class', 'Unleash your creativity with painting.', '987 Art Blvd', '2024-09-25', '2024-09-26', 6000, 18, 10, 'art class', 'Chicago', 'thumbnail6.jpg', '요리', '33.450701', '126.570667'),
(1, 'Hiking Adventure', 'Join us for a fun hiking trip.', '123 Mountain Rd', '2024-09-01', '2024-09-02', 5000, 19, 10, 'hiking', 'Denver', 'thumbnail1.jpg', '요리', '33.450701', '126.570667'),
(1, 'Cooking Class', 'Learn to cook Italian cuisine.', '456 Food St', '2024-09-05', '2024-09-05', 7500, 20, 8, 'cooking', 'New York', 'thumbnail2.jpg', '요리', '33.450701', '126.570667'),
(1, 'Photography Workshop', 'Improve your photography skills.', '789 Camera Ave', '2024-09-10', '2024-09-11', 1000, 21, 12, 'photography', 'San Francisco', 'thumbnail3.jpg', '요리', '33.450701', '126.570667'),
(1, 'Yoga Retreat', 'Relax and rejuvenate with yoga.', '321 Peace Ln', '2024-09-15', '2024-09-17', 2000, 22, 15, 'yoga', 'Los Angeles', 'thumbnail4.jpg', '요리', '33.450701', '126.570667'),
(1, 'Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 1200, 23, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg', '요리', '33.450701', '126.570667'),
(1, 'Art Class', 'Unleash your creativity with painting.', '987 Art Blvd', '2024-09-25', '2024-09-26', 6000, 24, 10, 'art class', 'Chicago', 'thumbnail6.jpg', '요리', '33.450701', '126.570667'),
(1, 'Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 12000, 25, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg', '음료', '33.450701', '126.570667');

UPDATE activity SET thumbnail = 'https://dictionary.cambridge.org/ko/images/thumb/dog_noun_001_04904.jpg?version=6.0.31';

INSERT INTO Reservation (memberid, activityid, date) VALUES (2, 1, '2024-09-01');
INSERT INTO Reservation (memberid, activityid, date) VALUES (2, 2, '2024-09-05');
INSERT INTO Reservation (memberid, activityid, date) VALUES (2, 3, '2024-09-10');
INSERT INTO Reservation (memberid, activityid, date) VALUES (2, 4, '2024-09-15');
INSERT INTO Reservation (memberid, activityid, date) VALUES (2, 5, '2024-09-20');
INSERT INTO Reservation (memberid, activityid, date) VALUES (3, 2, '2024-09-05');
INSERT INTO Reservation (memberid, activityid, date) VALUES (3, 3, '2024-09-10');
INSERT INTO Reservation (memberid, activityid, date) VALUES (3, 4, '2024-09-15');

INSERT INTO Reservation (memberid, activityid, date) VALUES (2, 1, '2024-11-01');
INSERT INTO Reservation (memberid, activityid, date) VALUES (2, 2, '2024-11-05');
INSERT INTO Reservation (memberid, activityid, date) VALUES (2, 3, '2024-11-10');
INSERT INTO Reservation (memberid, activityid, date) VALUES (2, 4, '2024-11-15');
INSERT INTO Reservation (memberid, activityid, date) VALUES (2, 5, '2024-11-20');
INSERT INTO Reservation (memberid, activityid, date) VALUES (3, 2, '2024-11-05');
INSERT INTO Reservation (memberid, activityid, date) VALUES (3, 3, '2024-11-10');
INSERT INTO Reservation (memberid, activityid, date) VALUES (3, 4, '2024-11-15');

INSERT INTO Reservation (memberid, activityid, date) VALUES (2, 1, '2024-10-01');
INSERT INTO Reservation (memberid, activityid, date) VALUES (2, 2, '2024-10-05');
INSERT INTO Reservation (memberid, activityid, date) VALUES (3, 2, '2024-10-05');
INSERT INTO Reservation (memberid, activityid, date) VALUES (3, 2, '2024-10-10');
INSERT INTO Reservation (memberid, activityid, date) VALUES (2, 3, '2024-10-10');
INSERT INTO Reservation (memberid, activityid, date) VALUES (3, 3, '2024-10-10');
INSERT INTO Reservation (memberid, activityid, date) VALUES (2, 4, '2024-10-15');
INSERT INTO Reservation (memberid, activityid, date) VALUES (3, 4, '2024-10-15');
INSERT INTO Reservation (memberid, activityid, date) VALUES (2, 5, '2024-10-20');

