WITH company_users AS (
    INSERT INTO users (name)
    VALUES
        ('admin'),
        ('developer')
    RETURNING id
)
INSERT INTO posts (owner_id, text)
SELECT 
    id,
    'Тестовый пост'
FROM company_users;
