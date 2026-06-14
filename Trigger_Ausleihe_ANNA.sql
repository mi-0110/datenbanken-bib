-- Ausgangszustand
SELECT MediumID, Titel, Verfuegbarkeit 
FROM medium 
WHERE MediumID = 10;

SELECT AusleiheID, Ausleihedatum, Rueckgabedatum, status, MitgliedID, MediumID
FROM ausleihe
WHERE MediumID = 10;

-- INSERT
INSERT INTO ausleihe (AusleiheID, Ausleihedatum, Rueckgabedatum, Status, MitgliedID, MediumID)
VALUES (101, '2026-06-14', NULL, 0, 1, 10);

SELECT MediumID, Titel, Verfuegbarkeit 
FROM medium 
WHERE MediumID = 10;

SELECT AusleiheID, Ausleihedatum, Rueckgabedatum, status, MitgliedID, MediumID
FROM ausleihe
WHERE MediumID = 10;

-- UPDATE: 
UPDATE ausleihe 
SET Status = 1, Rueckgabedatum = '2026-06-20' 
WHERE AusleiheID = 101;

SELECT MediumID, Titel, Verfuegbarkeit 
FROM medium 
WHERE MediumID = 10;

SELECT AusleiheID, Ausleihedatum, Rueckgabedatum, status, MitgliedID, MediumID
FROM ausleihe
WHERE MediumID = 10;

-- Aufräumen 
DELETE FROM ausleihe WHERE AusleiheID = 101;