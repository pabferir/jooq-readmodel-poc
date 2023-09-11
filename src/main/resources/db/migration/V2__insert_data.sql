INSERT INTO language (id, name)
VALUES ('00bf79a1-1ef0-4e91-8f91-9e04754c969a', 'English');
INSERT INTO language (id, name)
VALUES ('27cf05ab-60ff-4e04-b560-561e1021c783', 'French');
INSERT INTO language (id, name)
VALUES ('c05419b1-0da4-48e8-af03-dc0e7fbfee4e', 'Chinese');
INSERT INTO language (id, name)
VALUES ('c5744494-4b79-440b-b889-cea0d10e3b13', 'Hindi');
INSERT INTO language (id, name)
VALUES ('cd83dc19-dd58-4a3c-94d9-30dcb8af1286', 'Portuguese');
INSERT INTO language (id, name)
VALUES ('7ebedee0-a934-4047-8776-133da2d61af3', 'Spanish');
INSERT INTO language (id, name)
VALUES ('d64d3506-925c-43e9-b4a9-015fc0e5dbc8', 'German');
INSERT INTO language (id, name)
VALUES ('6b406d64-d4f9-46f8-9324-3ef207b52ab8', 'Italian');

INSERT INTO genre (id, name)
VALUES ('21b09990-246d-4748-8c2d-3e9a6ff77080', 'Adventure');
INSERT INTO genre (id, name)
VALUES ('93ab9e0a-36ac-48c2-9ff3-2ba860a67460', 'Fantasy');
INSERT INTO genre (id, name)
VALUES ('29cb40fd-288e-4a6f-8e24-aaa3e023ce43', 'Fiction');
INSERT INTO genre (id, name)
VALUES ('5a6b20e6-4409-4172-ad3b-8df0bbcb9b3d', 'Historical');
INSERT INTO genre (id, name)
VALUES ('c14a0cc0-cd82-40b4-a9a9-8f349a2a682b', 'Mystery');
INSERT INTO genre (id, name)
VALUES ('30de0181-87ef-49f2-9775-18194df35aa1', 'Romance');
INSERT INTO genre (id, name)
VALUES ('ad726d6d-c2fd-4552-874a-37082d500b2c', 'Self-help');
INSERT INTO genre (id, name)
VALUES ('588e93ae-43a2-4ba6-af73-3c12d01f67f9', 'Thriller');
INSERT INTO genre (id, name)
VALUES ('ac6cfe22-2c29-4192-99cc-b010854e51c0', 'War');

INSERT INTO author (id, first_name, last_name)
VALUES ('476ca809-e407-4e12-b64b-2d1bf4f89781', 'Charles', 'Dickens');
INSERT INTO author (id, first_name, last_name)
VALUES ('9d28fde0-868a-4d17-95a1-e1e9ed08f56a', 'Antoine', 'de Saint-Exupéry');
INSERT INTO author (id, first_name, last_name)
VALUES ('6b147ae1-1146-479d-a2de-da17d31af9e8', 'J. K.', 'Rowling');
INSERT INTO author (id, first_name, last_name)
VALUES ('496d98f6-3e83-432a-9f84-b0a14f616019', 'Agatha', 'Christie');
INSERT INTO author (id, first_name, last_name)
VALUES ('ab3c7ea8-c269-4f23-930a-2b720ce48c7e', 'Cao', 'Xueqin');
INSERT INTO author (id, first_name, last_name)
VALUES ('5b5e3bd0-6984-43c8-990d-227ae7a7218f', 'J. R. R.', 'Tolkien');
INSERT INTO author (id, first_name, last_name)
VALUES ('494b785f-1f64-4280-b5e1-e2fb6ef7d43a', 'C. S.', 'Lewis');
INSERT INTO author (id, first_name, last_name)
VALUES ('18771009-b5e4-4ff5-87f9-439ffc947724', 'Dan', 'Brown');
INSERT INTO author (id, first_name, last_name)
VALUES ('2655faae-1e00-481c-b0dc-a22b6e1df368', 'Paulo', 'Coelho');
INSERT INTO author (id, first_name, last_name)
VALUES ('66ce6a49-6b5e-4d93-a679-0f686e576bab', 'Gabriel', 'García Márquez');
INSERT INTO author (id, first_name, last_name)
VALUES ('2c112634-a933-4857-85ba-14a17e7855af', 'J. D.', 'Sallinger');
INSERT INTO author (id, first_name, last_name)
VALUES ('db3dd3af-5df3-4db2-b433-6fc94f4d700e', 'Umberto', 'Eco');
INSERT INTO author (id, first_name, last_name)
VALUES ('b9d19d9e-8aa0-4727-ba13-78ba4c17922a', 'Johanna', 'Spyri');

INSERT INTO book (id, title, author_id, first_published_in, language_id)
VALUES ('bc15a534-9358-411a-affd-b2a35530f92f', 'A Tale of Two Cities', '476ca809-e407-4e12-b64b-2d1bf4f89781', 1859,
        '00bf79a1-1ef0-4e91-8f91-9e04754c969a');
INSERT INTO book (id, title, author_id, first_published_in, language_id)
VALUES ('9cdbee9d-f1f0-4285-abe0-64018c10e327', 'The Little Prince', '9d28fde0-868a-4d17-95a1-e1e9ed08f56a', 1943,
        '27cf05ab-60ff-4e04-b560-561e1021c783');
INSERT INTO book (id, title, author_id, first_published_in, language_id)
VALUES ('50bb0f13-1af7-415b-bcaa-f24d8fd597f3', 'Harry Potter and the Philosophers Stone',
        '6b147ae1-1146-479d-a2de-da17d31af9e8', 1997, '00bf79a1-1ef0-4e91-8f91-9e04754c969a');
INSERT INTO book (id, title, author_id, first_published_in, language_id)
VALUES ('a0c2474a-4764-4307-90bf-43f9019490a4', 'Harry Potter and the Chamber of Secrets',
        '6b147ae1-1146-479d-a2de-da17d31af9e8', 1998, '00bf79a1-1ef0-4e91-8f91-9e04754c969a');
INSERT INTO book (id, title, author_id, first_published_in, language_id)
VALUES ('568787ae-817e-4654-93ff-9dd410fccae1', 'Harry Potter and the Prisoner of Azkaban',
        '6b147ae1-1146-479d-a2de-da17d31af9e8', 1999, '00bf79a1-1ef0-4e91-8f91-9e04754c969a');
INSERT INTO book (id, title, author_id, first_published_in, language_id)
VALUES ('00a58bc2-20a8-4f97-83fd-9efca590238f', 'The Hobbit', '5b5e3bd0-6984-43c8-990d-227ae7a7218f', 1937,
        '00bf79a1-1ef0-4e91-8f91-9e04754c969a');
INSERT INTO book (id, title, author_id, first_published_in, language_id)
VALUES ('45f50210-d96e-4cb7-806c-b7322fe848c5', 'The Alchemist', '2655faae-1e00-481c-b0dc-a22b6e1df368', 1988,
        'cd83dc19-dd58-4a3c-94d9-30dcb8af1286');
INSERT INTO book (id, title, author_id, first_published_in, language_id)
VALUES ('699f7a96-7112-4fd1-9169-94bfe9d6d694', 'One Hundred Years of Solitude', '66ce6a49-6b5e-4d93-a679-0f686e576bab',
        1967, '7ebedee0-a934-4047-8776-133da2d61af3');
INSERT INTO book (id, title, author_id, first_published_in, language_id)
VALUES ('874ea5b9-0cf0-4f92-8847-e294b8a2e839', 'Heidi', 'b9d19d9e-8aa0-4727-ba13-78ba4c17922a', 1880,
        'd64d3506-925c-43e9-b4a9-015fc0e5dbc8');
INSERT INTO book (id, title, author_id, first_published_in, language_id)
VALUES ('1f24eb2d-9c1c-49d4-9d0c-0ca5fbbdefa9', 'The Name of the Rose', 'db3dd3af-5df3-4db2-b433-6fc94f4d700e', 1980,
        '6b406d64-d4f9-46f8-9324-3ef207b52ab8');

INSERT INTO book_genre (book_id, genre_id)
VALUES ('bc15a534-9358-411a-affd-b2a35530f92f', '5a6b20e6-4409-4172-ad3b-8df0bbcb9b3d');
INSERT INTO book_genre (book_id, genre_id)
VALUES ('bc15a534-9358-411a-affd-b2a35530f92f', '29cb40fd-288e-4a6f-8e24-aaa3e023ce43');
INSERT INTO book_genre (book_id, genre_id)
VALUES ('9cdbee9d-f1f0-4285-abe0-64018c10e327', '93ab9e0a-36ac-48c2-9ff3-2ba860a67460');
INSERT INTO book_genre (book_id, genre_id)
VALUES ('9cdbee9d-f1f0-4285-abe0-64018c10e327', '29cb40fd-288e-4a6f-8e24-aaa3e023ce43');
INSERT INTO book_genre (book_id, genre_id)
VALUES ('50bb0f13-1af7-415b-bcaa-f24d8fd597f3', '93ab9e0a-36ac-48c2-9ff3-2ba860a67460');
INSERT INTO book_genre (book_id, genre_id)
VALUES ('a0c2474a-4764-4307-90bf-43f9019490a4', '93ab9e0a-36ac-48c2-9ff3-2ba860a67460');
INSERT INTO book_genre (book_id, genre_id)
VALUES ('568787ae-817e-4654-93ff-9dd410fccae1', '93ab9e0a-36ac-48c2-9ff3-2ba860a67460');
INSERT INTO book_genre (book_id, genre_id)
VALUES ('00a58bc2-20a8-4f97-83fd-9efca590238f', '93ab9e0a-36ac-48c2-9ff3-2ba860a67460');
INSERT INTO book_genre (book_id, genre_id)
VALUES ('00a58bc2-20a8-4f97-83fd-9efca590238f', '29cb40fd-288e-4a6f-8e24-aaa3e023ce43');
INSERT INTO book_genre (book_id, genre_id)
VALUES ('45f50210-d96e-4cb7-806c-b7322fe848c5', '93ab9e0a-36ac-48c2-9ff3-2ba860a67460');
INSERT INTO book_genre (book_id, genre_id)
VALUES ('699f7a96-7112-4fd1-9169-94bfe9d6d694', '93ab9e0a-36ac-48c2-9ff3-2ba860a67460');
INSERT INTO book_genre (book_id, genre_id)
VALUES ('874ea5b9-0cf0-4f92-8847-e294b8a2e839', '29cb40fd-288e-4a6f-8e24-aaa3e023ce43');
INSERT INTO book_genre (book_id, genre_id)
VALUES ('1f24eb2d-9c1c-49d4-9d0c-0ca5fbbdefa9', '5a6b20e6-4409-4172-ad3b-8df0bbcb9b3d');
INSERT INTO book_genre (book_id, genre_id)
VALUES ('1f24eb2d-9c1c-49d4-9d0c-0ca5fbbdefa9', 'c14a0cc0-cd82-40b4-a9a9-8f349a2a682b');
