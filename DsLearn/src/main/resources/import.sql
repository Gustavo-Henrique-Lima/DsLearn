INSERT INTO tb_user (name, email, password) VALUES ('Gustavo Henrique', 'gustavo@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Lima Nascimento', 'lima@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Guilherme Rian', 'guilherme@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_uri, img_Gray_uri) VALUES ('BootcampHTML', 'https://www.publicdomainpictures.net/pictures/390000/nahled/course-introduction.jpg', 'https://cdn-icons-png.flaticon.com/512/6681/6681144.png');
INSERT INTO tb_course (name, img_uri, img_Gray_uri) VALUES ('BootcampCSS', 'https://www.publicdomainpictures.net/pictures/390000/nahled/course-introduction.jpg', 'https://cdn-icons-png.flaticon.com/512/6681/6681144.png');
INSERT INTO tb_course (name, img_uri, img_Gray_uri) VALUES ('BootcampJS', 'https://www.publicdomainpictures.net/pictures/390000/nahled/course-introduction.jpg', 'https://cdn-icons-png.flaticon.com/512/6681/6681144.png');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2024-01-30T00:00:00Z', TIMESTAMP WITH TIME ZONE '2024-03-30T00:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2024-09-30T00:00:00Z', TIMESTAMP WITH TIME ZONE '2024-11-30T00:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2024-01-30T00:00:00Z', TIMESTAMP WITH TIME ZONE '2024-03-30T00:00:00Z', 2);

INSERT INTO tb_notification (text, moment, read, route) VALUES ('Olá mundo', TIMESTAMP WITH TIME ZONE '2024-01-30T00:00:00Z', false, 'www.google.com');
INSERT INTO tb_notification (text, moment, read, route) VALUES ('Fala pessoal', TIMESTAMP WITH TIME ZONE '2024-01-30T00:00:00Z', false, 'www.youtube.com');
INSERT INTO tb_notification (text, moment, read, route) VALUES ('Preciso de um emprego', TIMESTAMP WITH TIME ZONE '2024-01-30T00:00:00Z', false, 'www.meusite.com');
