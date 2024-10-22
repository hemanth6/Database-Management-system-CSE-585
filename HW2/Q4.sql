DELETE
FROM Q4_hemanth
WHERE samefam IS NULL AND id IN (SELECT samefam FROM Q4_hemanth);       --delete the rows where samefam is null and also whose id is presennt in samefam of another row 
