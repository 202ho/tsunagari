INSERT INTO TEST(title) VALUES('title1');
INSERT INTO TEST(title) VALUES('title2');
INSERT INTO TEST(title) VALUES('title3');
INSERT INTO TEST(title) VALUES('title4');
INSERT INTO TEST(title) VALUES('title5');

INSERT INTO activity (hostid, title, content, address, regdate, enddate, price, likecount, maxpeople, keyword, city, thumbnail) VALUES
(1, 'Hiking Adventure', 'Join us for a fun hiking trip.', '123 Mountain Rd', '2024-09-01', '2024-09-02', 50, 1, 10, 'hiking', 'Denver', 'thumbnail1.jpg'),
(2, 'Cooking Class', 'Learn to cook Italian cuisine.', '456 Food St', '2024-09-05', '2024-09-05', 75, 2, 8, 'cooking', 'New York', 'thumbnail2.jpg'),
(3, 'Photography Workshop', 'Improve your photography skills.', '789 Camera Ave', '2024-09-10', '2024-09-11', 100, 3, 12, 'photography', 'San Francisco', 'thumbnail3.jpg'),
(4, 'Yoga Retreat', 'Relax and rejuvenate with yoga.', '321 Peace Ln', '2024-09-15', '2024-09-17', 200, 4, 15, 'yoga', 'Los Angeles', 'thumbnail4.jpg'),
(5, 'Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 120, 5, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg'),
(6, 'Art Class', 'Unleash your creativity with painting.', '987 Art Blvd', '2024-09-25', '2024-09-26', 60, 6, 10, 'art class', 'Chicago', 'thumbnail6.jpg'),
(7, 'Hiking Adventure', 'Join us for a fun hiking trip.', '123 Mountain Rd', '2024-09-01', '2024-09-02', 50, 7, 10, 'hiking', 'Denver', 'thumbnail1.jpg'),
(8, 'Cooking Class', 'Learn to cook Italian cuisine.', '456 Food St', '2024-09-05', '2024-09-05', 75, 8, 8, 'cooking', 'New York', 'thumbnail2.jpg'),
(9, 'Photography Workshop', 'Improve your photography skills.', '789 Camera Ave', '2024-09-10', '2024-09-11', 100, 9, 12, 'photography', 'San Francisco', 'thumbnail3.jpg'),
(10, 'Yoga Retreat', 'Relax and rejuvenate with yoga.', '321 Peace Ln', '2024-09-15', '2024-09-17', 200, 10, 15, 'yoga', 'Los Angeles', 'thumbnail4.jpg'),
(11, 'Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 120, 11, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg'),
(12, 'Art Class', 'Unleash your creativity with painting.', '987 Art Blvd', '2024-09-25', '2024-09-26', 60, 12, 10, 'art class', 'Chicago', 'thumbnail6.jpg'),
(13, 'Hiking Adventure', 'Join us for a fun hiking trip.', '123 Mountain Rd', '2024-09-01', '2024-09-02', 50, 13, 10, 'hiking', 'Denver', 'thumbnail1.jpg'),
(14, 'Cooking Class', 'Learn to cook Italian cuisine.', '456 Food St', '2024-09-05', '2024-09-05', 75, 14, 8, 'cooking', 'New York', 'thumbnail2.jpg'),
(15, 'Photography Workshop', 'Improve your photography skills.', '789 Camera Ave', '2024-09-10', '2024-09-11', 100, 15, 12, 'photography', 'San Francisco', 'thumbnail3.jpg'),
(16, 'Yoga Retreat', 'Relax and rejuvenate with yoga.', '321 Peace Ln', '2024-09-15', '2024-09-17', 200, 16, 15, 'yoga', 'Los Angeles', 'thumbnail4.jpg'),
(17, 'Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 120, 17, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg'),
(18, 'Art Class', 'Unleash your creativity with painting.', '987 Art Blvd', '2024-09-25', '2024-09-26', 60, 18, 10, 'art class', 'Chicago', 'thumbnail6.jpg'),
(19, 'Hiking Adventure', 'Join us for a fun hiking trip.', '123 Mountain Rd', '2024-09-01', '2024-09-02', 50, 19, 10, 'hiking', 'Denver', 'thumbnail1.jpg'),
(20, 'Cooking Class', 'Learn to cook Italian cuisine.', '456 Food St', '2024-09-05', '2024-09-05', 75, 20, 8, 'cooking', 'New York', 'thumbnail2.jpg'),
(21, 'Photography Workshop', 'Improve your photography skills.', '789 Camera Ave', '2024-09-10', '2024-09-11', 100, 21, 12, 'photography', 'San Francisco', 'thumbnail3.jpg'),
(22, 'Yoga Retreat', 'Relax and rejuvenate with yoga.', '321 Peace Ln', '2024-09-15', '2024-09-17', 200, 22, 15, 'yoga', 'Los Angeles', 'thumbnail4.jpg'),
(23, 'Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 120, 23, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg'),
(24, 'Art Class', 'Unleash your creativity with painting.', '987 Art Blvd', '2024-09-25', '2024-09-26', 60, 24, 10, 'art class', 'Chicago', 'thumbnail6.jpg'),
(25, 'Wine Tasting Tour', 'Explore local wineries.', '654 Vineyard Rd', '2024-09-20', '2024-09-20', 120, 25, 20, 'wine tasting', 'Napa Valley', 'thumbnail5.jpg');

UPDATE activity SET thumbnail = 'https://dictionary.cambridge.org/ko/images/thumb/dog_noun_001_04904.jpg?version=6.0.31';

INSERT INTO member(email, nickname, password,  ishost) VALUES('test@test.com', 'test','test', 0);

