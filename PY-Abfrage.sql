SELECT 
    MONTH(Ausleihedatum)                                AS Monat,
    COUNT(*)                                            AS Ausleihen,
    SUM(CASE WHEN Status = 0 THEN 1 ELSE 0 END)        AS NochOffen,
    SUM(CASE WHEN Status = 1 THEN 1 ELSE 0 END)        AS Zurueckgegeben
FROM ausleihe
WHERE YEAR(Ausleihedatum) = 2026
GROUP BY MONTH(Ausleihedatum)
ORDER BY Monat;