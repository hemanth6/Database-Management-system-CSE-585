SELECT Q5_ins_hemanth.instructor      --returns the instructor from instructor table
FROM Q5_ins_hemanth
WHERE Q5_ins_hemanth.subject IN (SELECT subject FROM Q5_sub_hemanth)      --checks whether all the values in the subjects table are presnt matched with subjects thought by a particular instructor
GROUP BY Q5_ins_hemanth.Instructor          --groups by instructor name
HAVING COUNT(*) = (SELECT COUNT(*) FROM Q5_sub_hemanth)       --in the where and group by clauses we will get the instructors even if one subject matches with the subjected table, so the having clause will halp us find the instructors with maximum matched subjects (i.e. all the subjects must be matched with the subjects in subject table)
