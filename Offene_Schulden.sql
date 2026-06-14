SELECT
    COUNT(*)        AS AnzahlOffeneMahnungen,
    SUM(Betrag)     AS GesamtschuldEuro
FROM mahnung
WHERE Bezahlt = 0;