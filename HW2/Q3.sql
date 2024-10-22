SELECT pid
FROM hemanth_bodala.q3_hemanth
GROUP BY pid, status='C'          --we are grouping the project ids whose status is C
HAVING COUNT(*)=1;            --we initially grouped the project ids which were having C as their as status for one or more steps, however we want need only the projects with status C in the step 0, so the number of status C for a particular project id must be 1
