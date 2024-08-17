Create TABLE students(
    id int PRIMARY KEY IDENTITY,
    name VARCHAR(80) not NULL,
    cpf CHAR(11) NOT NULL,
    birth_date DATE,
    active BIT DEFAULT 1
)