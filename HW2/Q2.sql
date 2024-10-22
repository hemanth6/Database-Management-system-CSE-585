SELECT class_name, COUNT(*) AS Total   --this return the classname and count of classes
FROM hemanth_bodala.Q2_hemanthb
GROUP BY class_name                  --the claases which are returned are grouped by class name
ORDER BY Total DESC, class_name;
