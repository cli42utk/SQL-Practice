SELECT x, y, z, IF(x + y > z AND x + z > y AND z + y > x, "Yes", "No") AS triangle
FROM Triangle
;
