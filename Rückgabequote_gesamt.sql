SELECT
    COUNT(*) AS Ausleihen_Gesamt,
    SUM(CASE WHEN Status = 1 THEN 1 ELSE 0 END) AS Zurückgegeben,
    ROUND( SUM(CASE WHEN Status = 1 THEN 1 ELSE 0 END) / COUNT(*) * 100, 1 ) AS Rückgabequote_Prozent
FROM ausleihe;
