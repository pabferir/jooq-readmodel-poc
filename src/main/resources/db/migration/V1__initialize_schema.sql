CREATE TABLE genre
(
    id   UUID         NOT NULL,
    name VARCHAR(255) NOT NULL,
    CONSTRAINT pk_genre PRIMARY KEY (id)
);

CREATE TABLE language
(
    id   UUID         NOT NULL,
    name VARCHAR(255) NOT NULL,
    CONSTRAINT pk_language PRIMARY KEY (id)
);

CREATE TABLE author
(
    id         UUID         NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name  VARCHAR(255) NOT NULL,
    CONSTRAINT pk_author PRIMARY KEY (id)
);

CREATE TABLE book
(
    id                 UUID         NOT NULL,
    title              VARCHAR(255) NOT NULL,
    author_id          UUID         NOT NULL,
    first_published_in INTEGER,
    language_id        UUID,
    CONSTRAINT pk_book PRIMARY KEY (id)
);

ALTER TABLE book
    ADD CONSTRAINT FK_BOOK_ON_AUTHOR FOREIGN KEY (author_id) REFERENCES author (id);

ALTER TABLE book
    ADD CONSTRAINT FK_BOOK_ON_LANGUAGE FOREIGN KEY (language_id) REFERENCES language (id);

CREATE TABLE book_genre
(
    book_id  UUID NOT NULL,
    genre_id UUID NOT NULL,
    CONSTRAINT pk_book_genre PRIMARY KEY (book_id, genre_id)
);

ALTER TABLE book_genre
    ADD CONSTRAINT fk_boogen_on_book FOREIGN KEY (book_id) REFERENCES book (id);

ALTER TABLE book_genre
    ADD CONSTRAINT fk_boogen_on_genre FOREIGN KEY (genre_id) REFERENCES genre (id);
