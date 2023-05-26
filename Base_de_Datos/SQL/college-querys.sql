SELECT 
C1.name,
C1.state
from Colleges C1
WHERE EXISTS (
    SELECT 
    *
    FROM
    Colleges C2
    WHERE 
    C2.state = C1.state
    AND
    C2.name <> C1.name
);