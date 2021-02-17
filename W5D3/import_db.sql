PRAGMA foreign_keys = ON;

CREATE TABLE users (
    id INTEGER NOT NULL,
    fname VARCHAR,
    lname VARCHAR
    PRIMARY KEY(id),
);

CREATE TABLE qustions (
    id INTEGER PRIMARY KEY,
    title VARCHAR,
    body VARCHAR,
    associated_author INTEGER NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (associated_author) REFERENCES users(id)
);

CREATE TABLE question_follows (
    id INTEGER PRIMARY KEY,
    user_id INTEGER;
    questions_id INTEGER;
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (questions_id) REFERENCES questions(id)
);