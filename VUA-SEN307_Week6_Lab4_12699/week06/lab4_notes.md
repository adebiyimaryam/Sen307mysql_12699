# VUA-SEN307 Week 6 Practical — Lab 4 Notes

**Name:** Adebiyi Maryam Titilayo  
**Matric Number:** VUGSEN2412699

In Part 4, MySQL returned Error 1451 when I tried to delete the department named “Library and Information Science”. This happened because the Transfer Student record still referenced that department through the foreign key in the Student table. MySQL prevented the deletion to maintain referential integrity and avoid leaving a student with an invalid department reference. I fixed the problem by first updating the student's `dept_id` to the Software Engineering department, and then deleting the Library and Information Science department. Another possible solution would be to delete the dependent student record first, but I used the reassignment method so that the student record was not lost.
