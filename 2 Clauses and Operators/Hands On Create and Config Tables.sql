--DROP TABLE students;

CREATE TABLE students(
    id int PRIMARY KEY IDENTITY,
    name VARCHAR(80) NOT NULL,
    document  CHAR(11) NOT NULL,
    city VARCHAR(60) NOT NULL,
    state CHAR(2) NOT NULL,
    birth_date DATE,
    active bit DEFAULT 1
);

CREATE TABLE categories (
    id int PRIMARY KEY identity,
    description VARCHAR(80) not null,
    created_at DATETIME DEFAULT GETDATE()
);

CREATE TABLE courses
(
    id int PRIMARY KEY identity,
    category_id INT not null,
    description VARCHAR(80) NOT NULL,
    total_hours int NOT null,
    value DECIMAL(12,2) NOT NULL DEFAULT 0,
    created_at DATETIME DEFAULT GETDATE(),
    active bit DEFAULT 1,
    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES categories(id)
)

CREATE TABLE students_courses(
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    created_at DATETIME DEFAULT GETDATE(),
    CONSTRAINT pk_student_course PRIMARY KEY(student_id, course_id),
    CONSTRAINT fk_student_id FOREIGN KEY(student_id) REFERENCES students(id),
    CONSTRAINT fk_course_id FOREIGN KEY(course_id) REFERENCES courses(id)

)

INSERT INTO students (name, document, city, state, birth_date) VALUES 
    ( 'Rafael','00000000011','Aracaju','SE', '2000-01-01' ),
    ( 'Eduardo','00000000012','São Paulo','SP', '2000-02-02' ),
    ( 'Bruno','00000000013','São Paulo','SP', '2000-03-03' ),
    ( 'Tiago','00000000014','Rio de Janeiro','RJ', '2000-04-04' ),
    ( 'Heloysa','00000000015','Aracaju','SE', '2000-05-05' );

INSERT INTO categories(description) VALUES ('Data Access'), ('Security'), ('WEB');

INSERT INTO courses(description, category_id, total_hours, value)  VALUES
    ('EF Core', 1, 17, 300),
    ('SQL Server', 1, 5, 200),
    ('ASP.NET Core Enterprise', 3, 5, 200),
    ('IdentityServer 4 Fundamentals Principles', 2, 5, 200);

INSERT INTO students_courses(student_id, course_id )  VALUES 
    (1,1),
    (1,2),
    (2,3),
    (3,1),
    (4,4),
    (5,1),
    (5,2),
    (5,3);

