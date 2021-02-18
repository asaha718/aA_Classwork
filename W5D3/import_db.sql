DROP TABLE IF EXISTS question_likes; 
DROP TABLE IF EXISTS replies;
DROP TABLE IF EXISTS question_follows;
DROP TABLE IF EXISTS questions; 
DROP TABLE IF EXISTS users; 

PRAGMA foreign_keys = ON;

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname VARCHAR NOT NULL,
    lname VARCHAR
);

CREATE TABLE questions (
    id INTEGER PRIMARY KEY,
    title VARCHAR NOT NULL,
    body VARCHAR NOT NULL,
    associated_author INTEGER NOT NULL,
    FOREIGN KEY (associated_author) REFERENCES users(id)
);

CREATE TABLE question_follows (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    questions_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (questions_id) REFERENCES questions(id)
);

CREATE TABLE replies (
    id INTEGER PRIMARY KEY, 
    questions_id INTEGER NOT NULL, 
    replies_id INTEGER, 
    user_id INTEGER NOT NULL, 
    body TEXT, 
    FOREIGN KEY (questions_id) REFERENCES questions(id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (replies_id) REFERENCES replies(id)
);

CREATE TABLE question_likes (
    id INTEGER PRIMARY KEY,
    questions_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (questions_id) REFERENCES questions(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO
    users(fname, lname)
VALUES
    ('Carrie', 'Bares'),
    ('Anug', 'Saha');

INSERT INTO
    questions(title, body, associated_author)
VALUES
    ('ruby', 'what''s ruby?', (SELECT id FROM users WHERE fname = 'Carrie')),
    ('sql', 'what''s sql?', (SELECT id FROM users WHERE fname = 'Anug'));

INSERT INTO
    question_follows(user_id, questions_id)
VALUES
    ((SELECT id FROM users WHERE fname = 'Carrie'), 
    (SELECT id FROM questions WHERE title = 'sql')),
    ((SELECT id FROM users WHERE fname = 'Anug'), 
    (SELECT id FROM questions WHERE title = 'ruby'));

INSERT INTO
    replies (questions_id, replies_id, user_id, body)
VALUES
    ((SELECT id FROM questions WHERE title = 'sql'),
    NULL,
    (SELECT id FROM users WHERE fname = 'Carrie'),
    'I also want to know what sql is'),
    ((SELECT id FROM questions WHERE title = 'ruby'),
    NULL,
    (SELECT id FROM users WHERE fname = 'Anug'),
    'I also want to know what ruby is');

INSERT INTO
    question_likes(questions_id, user_id)
VALUES
    ((SELECT id from questions WHERE title = 'ruby'),
    (SELECT id FROM users WHERE fname = 'Carrie')),
    ((SELECT id from questions WHERE title = 'sql'),
    (SELECT id FROM users WHERE fname = 'Anug'));