WITH user_1 AS (
    INSERT INTO users (name)
    VALUES ('user_1')
    RETURNING id
),
user_2 AS (
    INSERT INTO users (name)
    VALUES ('user_2')
    RETURNING id
)
INSERT INTO posts (text, owner_id)
VALUES
    ('post_1', (SELECT id FROM user_1)),
    ('post_2', (SELECT id FROM user_2));