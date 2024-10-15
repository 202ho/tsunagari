INSERT INTO test(title) VALUES('title1');
INSERT INTO test(title) VALUES('title2');
INSERT INTO test(title) VALUES('title3');
INSERT INTO test(title) VALUES('title4');
INSERT INTO test(title) VALUES('title5');

SET SQL_SAFE_UPDATES = 0;

INSERT INTO category (id, name, image) VALUES (1, '아웃도어', '/resources/image/cateimage/Outdoor.jpg');
INSERT INTO category (id, name, image) VALUES (2, '피트니스', '/resources/image/cateimage/Fitness.jpg');
INSERT INTO category (id, name, image) VALUES (3, '뷰티', '/resources/image/cateimage/Beauty.jpg');
INSERT INTO category (id, name, image) VALUES (4, '공예', '/resources/image/cateimage/Craft.jpg');
INSERT INTO category (id, name, image) VALUES (5, '스포츠', '/resources/image/cateimage/Sports.jpg');
INSERT INTO category (id, name, image) VALUES (6, '베이킹', '/resources/image/cateimage/Baking.jpg');
INSERT INTO category (id, name, image) VALUES (7, '취미', '/resources/image/cateimage/Hobby.jpg');
INSERT INTO category (id, name, image) VALUES (8, '온라인', '/resources/image/cateimage/Online.jpg');
INSERT INTO category (id, name, image) VALUES (9, '자기계발', '/resources/image/cateimage/SelfImprovement.jpg');
INSERT INTO category (id, name, image) VALUES (10, '모임', '/resources/image/cateimage/Meeting.jpg');
INSERT INTO category (id, name, image) VALUES (11, '심리상담', '/resources/image/cateimage/Counsel.jpg');
INSERT INTO category (id, name, image) VALUES (12, '국내여행', '/resources/image/cateimage/Travel.jpg');
INSERT INTO category (id, name, image) VALUES (13, '해외여행', '/resources/image/cateimage/Trip.jpg');
INSERT INTO category (id, name, image) VALUES (14, '수상레포츠', '/resources/image/cateimage/WaterSports.jpg');
INSERT INTO category (id, name, image) VALUES (15, '요리', '/resources/image/cateimage/Cook.jpg');
INSERT INTO category (id, name, image) VALUES (16, '음료', '/resources/image/cateimage/Drink.jpg');


INSERT INTO member(email, nickname, password, ishost, intro, phone) VALUES('test@test.com', 'test','test', 'Y', '안녕하세요', '01012344567');
INSERT INTO member(email, nickname, password, ishost, intro, phone) VALUES('test2@test2.com', 'test','test', 'Y', '안녕하세요', '01012344567');
INSERT INTO member(email, nickname, password, ishost, intro, phone) VALUES('test3@test3.com', 'test','test', 'Y', '안녕하세요', '01012344567');


INSERT INTO activity (hostid, title, content, address, regdate, enddate, price, likecount, maxpeople, keyword, city, thumbnail, categoryid, x, y) VALUES
(3, '3 Hiking Adventure', 'Join us for a fun hiking trip.', '123 Mountain Rd', '2024-09-01', '2024-09-02', 5000, 1, 10, 'hiking', 'Denver', 'thumbnail1.jpg', 1, '33.450701', '126.570667'),
(3, '3 Cooking Class', 'Learn to cook Italian cuisine.', '456 Food St', '2024-09-05', '2024-09-05', 7500, 2, 8, 'cooking', 'New York', 'thumbnail2.jpg', 2, '33.450701', '126.570667'),
(3, '3 Photography Workshop', 'Improve your photography skills.', '789 Camera Ave', '2024-09-10', '2024-09-11', 1000, 3, 12, 'photography', 'San Francisco', 'thumbnail3.jpg',1, '33.450701', '126.570667'),
(3, '3 Yoga Retreat', 'Relax and rejuvenate with yoga.', '321 Peace Ln', '2024-09-15', '2024-09-17', 2000, 4, 15, 'yoga', 'Los Angeles', 'thumbnail4.jpg', 2, '33.450701', '126.570667'),
(3, '3 Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 1200, 5, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg', 3, '33.450701', '126.570667'),
(2, '2 Hiking Adventure', 'Join us for a fun hiking trip.', '123 Mountain Rd', '2024-09-01', '2024-09-02', 5000, 1, 10, 'hiking', 'Denver', 'thumbnail1.jpg', 3, '33.450701', '126.570667'),
(2, '2 Cooking Class', 'Learn to cook Italian cuisine.', '456 Food St', '2024-09-05', '2024-09-05', 7500, 2, 8, 'cooking', 'New York', 'thumbnail2.jpg', 3, '33.450701', '126.570667'),
(2, '2 Photography Workshop', 'Improve your photography skills.', '789 Camera Ave', '2024-09-10', '2024-09-11', 1000, 3, 12, 'photography', 'San Francisco', 'thumbnail3.jpg', 4, '33.450701', '126.570667'),
(2, '2 Yoga Retreat', 'Relax and rejuvenate with yoga.', '321 Peace Ln', '2024-09-15', '2024-09-17', 2000, 4, 15, 'yoga', 'Los Angeles', 'thumbnail4.jpg', 4, '33.450701', '126.570667'),
(2, '2 Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 1200, 5, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg', 5, '33.450701', '126.570667'),
(2, '2 Art Class', 'Unleash your creativity with painting.', '987 Art Blvd', '2024-09-25', '2024-09-26', 6000, 6, 10, 'art class', 'Chicago', 'thumbnail6.jpg', 5, '33.450701', '126.570667'),
(2, '2 Hiking Adventure', 'Join us for a fun hiking trip.', '123 Mountain Rd', '2024-09-01', '2024-09-02', 5000, 7, 10, 'hiking', 'Denver', 'thumbnail1.jpg', 6, '33.450701', '126.570667'),
(2, '2 Photography Workshop', 'Improve your photography skills.', '789 Camera Ave', '2024-09-10', '2024-09-11', 10000, 9, 12, 'photography', 'San Francisco', 'thumbnail3.jpg', 6, '33.450701', '126.570667'),
(2, '2 Yoga Retreat', 'Relax and rejuvenate with yoga.', '321 Peace Ln', '2024-09-15', '2024-09-17', 2000, 10, 15, 'yoga', 'Los Angeles', 'thumbnail4.jpg', 7, '33.450701', '126.570667'),
(2, '2 Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 1200, 11, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg', 7, '33.450701', '126.570667'),
(2, '2 A2rt Class', 'Unleash your creativity with painting.', '987 Art Blvd', '2024-09-25', '2024-09-26', 6000, 12, 10, 'art class', 'Chicago', 'thumbnail6.jpg', 8, '33.450701', '126.570667'),
(2, '2 Hiking Adventure', 'Join us for a fun hiking trip.', '123 Mountain Rd', '2024-09-01', '2024-09-02', 5000, 13, 10, 'hiking', 'Denver', 'thumbnail1.jpg', 8, '33.450701', '126.570667'),
(2, '2 Cooking Class', 'Learn to cook Italian cuisine.', '456 Food St', '2024-09-05', '2024-09-05', 7500, 14, 8, 'cooking', 'New York', 'thumbnail2.jpg', 9, '33.450701', '126.570667'),
(2, '2 Photography Workshop', 'Improve your photography skills.', '789 Camera Ave', '2024-09-10', '2024-09-11', 1000, 15, 12, 'photography', 'San Francisco', 'thumbnail3.jpg', 9, '33.450701', '126.570667'),
(2, '2 Yoga Retreat', 'Relax and rejuvenate with yoga.', '321 Peace Ln', '2024-09-15', '2024-09-17', 2000, 16, 15, 'yoga', 'Los Angeles', 'thumbnail4.jpg', 10, '33.450701', '126.570667'),
(2, '2 Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 1200, 17, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg', 10, '33.450701', '126.570667'),
(2, '2 Art Class', 'Unleash your creativity with painting.', '987 Art Blvd', '2024-09-25', '2024-09-26', 6000, 18, 10, 'art class', 'Chicago', 'thumbnail6.jpg', 11, '33.450701', '126.570667'),
(2, '2 Hiking Adventure', 'Join us for a fun hiking trip.', '123 Mountain Rd', '2024-09-01', '2024-09-02', 5000, 19, 10, 'hiking', 'Denver', 'thumbnail1.jpg', 11, '33.450701', '126.570667'),
(2, '2  Cooking Class', 'Learn to cook Italian cuisine.', '456 Food St', '2024-09-05', '2024-09-05', 7500, 20, 8, 'cooking', 'New York', 'thumbnail2.jpg', 12, '33.450701', '126.570667'),
(2, '2 Photography Workshop', 'Improve your photography skills.', '789 Camera Ave', '2024-09-10', '2024-09-11', 1000, 21, 12, 'photography', 'San Francisco', 'thumbnail3.jpg', 12, '33.450701', '126.570667'),
(2, '2 Yoga Retreat', 'Relax and rejuvenate with yoga.', '321 Peace Ln', '2024-09-15', '2024-09-17', 2000, 22, 15, 'yoga', 'Los Angeles', 'thumbnail4.jpg', 13, '33.450701', '126.570667'),
(2, '2 Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 12000, 23, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg', 13, '33.450701', '126.570667'),
(2, '2 Art Class', 'Unleash your creativity with painting.', '987 Art Blvd', '2024-09-25', '2024-09-26', 600, 24, 10, 'art class', 'Chicago', 'thumbnail6.jpg', 14, '33.450701', '126.570667'),
(2, '2 Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 1200, 25, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg', 14, '33.450701', '126.570667'),
(2, '2 Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 12000, 11, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg', 15, '33.450701', '126.570667'),
(2, '2 Art Class', 'Unleash your creativity with painting.', '987 Art Blvd', '2024-09-25', '2024-09-26', 6000, 12, 10, 'art class', 'Chicago', 'thumbnail6.jpg', 15, '33.450701', '126.570667'),
(2, '2 Hiking Adventure', 'Join us for a fun hiking trip.', '123 Mountain Rd', '2024-09-01', '2024-09-02', 5000, 13, 10, 'hiking', 'Denver', 'thumbnail1.jpg', 16, '33.450701', '126.570667'),
(2, '2 Cooking Class', 'Learn to cook Italian cuisine.', '456 Food St', '2024-09-05', '2024-09-05', 7500, 14, 8, 'cooking', 'New York', 'thumbnail2.jpg', 16, '33.450701', '126.570667'),
(2, '2 Photography Workshop', 'Improve your photography skills.', '789 Camera Ave', '2024-09-10', '2024-09-11', 1000, 15, 12, 'photography', 'San Francisco', 'thumbnail3.jpg', 1, '33.450701', '126.570667'),
(1, 'Yoga Retreat', 'Relax and rejuvenate with yoga.', '321 Peace Ln', '2024-09-15', '2024-09-17', 2000, 16, 15, 'yoga', 'Los Angeles', 'thumbnail4.jpg', 2, '33.450701', '126.570667'),
(1, 'Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 1200, 17, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg', 3, '33.450701', '126.570667'),
(1, 'Art Class', 'Unleash your creativity with painting.', '987 Art Blvd', '2024-09-25', '2024-09-26', 6000, 18, 10, 'art class', 'Chicago', 'thumbnail6.jpg', 4, '33.450701', '126.570667'),
(1, 'Hiking Adventure', 'Join us for a fun hiking trip.', '123 Mountain Rd', '2024-09-01', '2024-09-02', 5000, 19, 10, 'hiking', 'Denver', 'thumbnail1.jpg', 5, '33.450701', '126.570667'),
(1, 'Cooking Class', 'Learn to cook Italian cuisine.', '456 Food St', '2024-09-05', '2024-09-05', 7500, 20, 8, 'cooking', 'New York', 'thumbnail2.jpg', 6, '33.450701', '126.570667'),
(1, 'Photography Workshop', 'Improve your photography skills.', '789 Camera Ave', '2024-09-10', '2024-09-11', 1000, 21, 12, 'photography', 'San Francisco', 'thumbnail3.jpg', 7, '33.450701', '126.570667'),
(1, 'Yoga Retreat', 'Relax and rejuvenate with yoga.', '321 Peace Ln', '2024-09-15', '2024-09-17', 2000, 22, 15, 'yoga', 'Los Angeles', 'thumbnail4.jpg', 8, '33.450701', '126.570667'),
(1, 'Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 1200, 23, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg', 9, '33.450701', '126.570667'),
(1, 'Art Class', 'Unleash your creativity with painting.', '987 Art Blvd', '2024-09-25', '2024-09-26', 6000, 24, 10, 'art class', 'Chicago', 'thumbnail6.jpg', 10, '33.450701', '126.570667'),
(1, 'Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 12000, 25, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg', 11, '33.450701', '126.570667');

UPDATE activity SET thumbnail = 'https://dictionary.cambridge.org/ko/images/thumb/dog_noun_001_04904.jpg?version=6.0.31';

INSERT INTO reservation (memberid, activityid, date) VALUES (2, 1, '2024-09-01');
INSERT INTO reservation (memberid, activityid, date) VALUES (2, 2, '2024-09-05');
INSERT INTO reservation (memberid, activityid, date) VALUES (2, 3, '2024-09-10');
INSERT INTO reservation (memberid, activityid, date) VALUES (2, 4, '2024-09-15');
INSERT INTO reservation (memberid, activityid, date) VALUES (2, 5, '2024-09-20');
INSERT INTO reservation (memberid, activityid, date) VALUES (3, 2, '2024-09-05');
INSERT INTO reservation (memberid, activityid, date) VALUES (3, 3, '2024-09-10');
INSERT INTO reservation (memberid, activityid, date) VALUES (3, 4, '2024-09-15');

INSERT INTO reservation (memberid, activityid, date) VALUES (2, 1, '2024-11-01');
INSERT INTO reservation (memberid, activityid, date) VALUES (2, 2, '2024-11-05');
INSERT INTO reservation (memberid, activityid, date) VALUES (2, 3, '2024-11-10');
INSERT INTO reservation (memberid, activityid, date) VALUES (2, 4, '2024-11-15');
INSERT INTO reservation (memberid, activityid, date) VALUES (2, 5, '2024-11-20');
INSERT INTO reservation (memberid, activityid, date) VALUES (3, 2, '2024-11-05');
INSERT INTO reservation (memberid, activityid, date) VALUES (3, 3, '2024-11-10');
INSERT INTO reservation (memberid, activityid, date) VALUES (3, 4, '2024-11-15');

INSERT INTO reservation (memberid, activityid, date) VALUES (2, 1, '2024-10-01');
INSERT INTO reservation (memberid, activityid, date) VALUES (2, 2, '2024-10-05');
INSERT INTO reservation (memberid, activityid, date) VALUES (3, 2, '2024-10-05');
INSERT INTO reservation (memberid, activityid, date) VALUES (3, 2, '2024-10-10');
INSERT INTO reservation (memberid, activityid, date) VALUES (2, 3, '2024-10-10');
INSERT INTO reservation (memberid, activityid, date) VALUES (3, 3, '2024-10-10');
INSERT INTO reservation (memberid, activityid, date) VALUES (2, 4, '2024-10-15');
INSERT INTO reservation (memberid, activityid, date) VALUES (3, 4, '2024-10-15');
INSERT INTO reservation (memberid, activityid, date) VALUES (2, 5, '2024-10-20');