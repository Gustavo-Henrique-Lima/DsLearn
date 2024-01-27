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

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Neste capítulo vamos começar', 1, 'https://cdn-icons-png.flaticon.com/512/6681/6681144.png', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Neste capítulo vamos continuar', 2, 'https://cdn-icons-png.flaticon.com/512/6681/6681144.png', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Forum', 'Acesse o forum', 3, 'https://cdn-icons-png.flaticon.com/512/6681/6681144.png', 2, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Neste capítulo vamos finalizar', 3, 'https://cdn-icons-png.flaticon.com/512/6681/6681144.png', 1, 2);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Neste capítulo vamos começar', 1, 'https://cdn-icons-png.flaticon.com/512/6681/6681144.png', 5, null);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1,  TIMESTAMP WITH TIME ZONE '2024-01-30T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 2, TIMESTAMP WITH TIME ZONE '2024-01-30T13:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capítulo 1', 1, 1);
INSERT INTO tb_content (id, textcontent, video_Uri) VALUES (1, 'Material de apoio:abc', 'https://www.youtube.com/watch?v=rMuHty2zn_4');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capítulo 1', 2, 1);
INSERT INTO tb_content (id, textcontent, video_Uri) VALUES (2, 'Material de apoio:cde', 'https://www.youtube.com/watch?v=rMuHty2zn_4');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capítulo 2', 1, 2);
INSERT INTO tb_content (id, textcontent, video_Uri) VALUES (3, 'Material de apoio:efg', 'https://www.youtube.com/watch?v=rMuHty2zn_4');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capítulo 2', 2, 2);
INSERT INTO tb_content (id, textcontent, video_Uri) VALUES (4, 'Material de apoio:ghi', 'https://www.youtube.com/watch?v=rMuHty2zn_4');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Atividade do capítulo 1', 3, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (5, 'Fazer trabalho legal', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2024-01-26T13:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 5, 1, 1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 5', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 6', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);