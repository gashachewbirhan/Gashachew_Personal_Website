-- 1. Student Database መፍጠር
create Database Student;
use Student;
DROP TABLE dku;
create table dku(
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    email VARCHAR(100) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO dku (full_name, department, year, email) 
VALUES ('Gashachew Birhan', 'Computer Science', 3, 'gashachewbrhan@gmail.com');

-- መረጃውን ለማየት
SELECT * FROM dku;