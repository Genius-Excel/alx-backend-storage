-- This script ranks origin according to number of fans.
CREATE TEMPORARY TABLE OriginRanking AS
SELECT origin, SUM(fans) as nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY num_fans DESC;

-- Query command to select combined data from temporary table.
SELECT origin, nb_fans FROM OriginRanking;
