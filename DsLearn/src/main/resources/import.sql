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

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Olá mundo', TIMESTAMP WITH TIME ZONE '2024-01-30T00:00:00Z', false, 'www.google.com', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Olá mundo', TIMESTAMP WITH TIME ZONE '2024-01-30T00:00:00Z', false, 'www.google.com', 2);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Fala pessoal', TIMESTAMP WITH TIME ZONE '2024-01-30T00:00:00Z', false, 'www.youtube.com', 2);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Preciso de um emprego', TIMESTAMP WITH TIME ZONE '2024-01-30T00:00:00Z', false, 'www.meusite.com', 3);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://cdn-icons-png.flaticon.com/512/6681/6681144.png', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Forum do curso', 4, 'https://cdn-icons-png.flaticon.com/512/6681/6681144.png', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives do curso', 3, 'https://cdn-icons-png.flaticon.com/512/6681/6681144.png', 3, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Forum de apoio', 4, 'https://cdn-icons-png.flaticon.com/512/6681/6681144.png', 1, 2);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha CSS', 'Trilha principal do curso', 1, 'https://cdn-icons-png.flaticon.com/512/6681/6681144.png', 1, 2);
