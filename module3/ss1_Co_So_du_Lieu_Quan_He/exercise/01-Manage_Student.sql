CREATE database if not exists manage_student;
USE manage_student;

-- Tạo bảng Class
CREATE TABLE CLASS
(
student_id int PRIMARY KEY,
student_name varchar(50) NOT NULL
);
-- student_id: khóa chính (UNIQUE và NOT NULL)
-- student_id: không được phép NULL

-- Tạo bảng Teacher
CREATE TABLE Teacher 
(
teacher_id int PRIMARY KEY,
teacher_name varchar(50) NOT NULL, 
age int,
country varchar(50) DEFAULT 'VN' 
);
-- teacher_id: khóa chính (UNIQUE và NOT NULL)
-- teacher_name: không được phép NULL
-- giá trị mặc định cho country là 'VN'

SELECT * FROM Class;
-- Thêm đầy đủ
INSERT INTO Class(student_id, student_name) 
             VALUE(1, 'Hưng');

-- Đảo vị trí attribute vẫn được             
INSERT INTO Class(student_name, student_id)
             VALUE('Loan', 2);     

-- INSERT INTO Class(student_id)
--             VALUE(3);  
-- lỗi vì đã khai báo student_name ko được NULL

SELECT * FROM Teacher;
-- Thêm đầy đủ
INSERT INTO Teacher(teacher_id, teacher_name, age, country)
             VALUE(1, 'Trung', 25, 'VN');

-- INSERT INTO Teacher(teacher_id, teacher_name, age, country)
--             VALUE(1, 'Chanh', 38, 'VN');
-- lỗi vì trùng key (teacher_id)

INSERT INTO Teacher(teacher_id, teacher_name, age)
             VALUE(2, 'Chanh', 38);
-- country tự động thêm 'VN' vì đã khai báo DEFAULT ở trên


             
             
                         





 