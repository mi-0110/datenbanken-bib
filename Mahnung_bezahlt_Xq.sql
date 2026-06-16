SELECT
    Mahnstufe,
    ROUND(AVG(DATEDIFF(Bezahldatum, Mahnungsdatum)), 1) AS ⌀_TageBisZahlung,
    COUNT(*) AS Anzahl
FROM mahnung
WHERE Bezahlt = 1
GROUP BY Mahnstufe;