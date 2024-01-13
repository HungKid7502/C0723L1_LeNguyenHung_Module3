USE quanlysinhvien;

SELECT * FROM quanlysinhvien.subject;

-- 1. Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT * FROM Subject
ORDER BY Credit DESC
LIMIT 1;
-- hoặc
SELECT * FROM Subject 
WHERE Credit = ( 
				SELECT MAX(Credit) FROM Subject
               ); 

-- 2. Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT sub.*, m.Mark AS MAXMark FROM Mark m 
JOIN Subject sub 
ON m.MarkId = sub.SubId 
WHERE m.Mark = (
                SELECT MAX(Mark) FROM Mark
			   );
               
-- 3. Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần.
SELECT s.*, IFNULL(AVG(Mark), 0) AS AVG_Mark FROM Student s
LEFT JOIN Mark m 
ON s.StudentId = m.StudentId
GROUP BY s.StudentId
ORDER BY AVG_Mark DESC;






               
               


