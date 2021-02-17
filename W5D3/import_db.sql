PRAGMA foreign_keys = ON;

CREATE TABLE users (
    id INTEGER NOT NULL,
    fname VARCHAR NOT NULL,
    lname VARCHAR,
    PRIMARY KEY(id)
);

CREATE TABLE questions (
    id INTEGER PRIMARY KEY,
    title VARCHAR NOT NULL,
    body VARCHAR NOT NULL,
    associated_author INTEGER NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (associated_author) REFERENCES users(id)
);

CREATE TABLE question_follows (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    questions_id INTEGER NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (questions_id) REFERENCES questions(id)
);

CREATE TABLE replies (
    id INTEGER PRIMARY KEY, 
    questions_id INTEGER NOT NULL, 
    replies_id INTEGER, 
    user_id INTEGER NOT NULL, 
    body TEXT, 
    PRIMARY KEY(id)
    FOREIGN KEY (questions_id) REFERENCES questions(id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (replies_id) REFERENCES replies(id)
);

CREATE TABLE questions_like (
    id INTEGER PRIMARY KEY,
    questions_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (questions_id) REFERENCES questions(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO
    users (fname, lname)
VALUES
    ('Carrie', 'Bares'),
    ('Anug', 'Saha');

