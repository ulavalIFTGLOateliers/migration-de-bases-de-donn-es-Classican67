
ALTER TABLE singer RENAME TO musician;

ALTER TABLE musician RENAME COLUMN singerName TO musicianName;
ALTER TABLE musician ADD COLUMN role VARCHAR(50);
ALTER TABLE musician ADD COLUMN bandName VARCHAR(50);


UPDATE musician 
SET role = CASE
WHEN musicianName LIKE 'Alina' THEN 'vocals'
WHEN musicianName LIKE 'Mysterio' THEN 'guitar'
WHEN musicianName LIKE 'Rainbow' THEN 'percussion'
WHEN musicianName LIKE 'Luna' THEN 'piano'
END,
    bandName = CASE
WHEN musicianName LIKE 'Alina' THEN 'Crazy Duo'
WHEN musicianName LIKE 'Mysterio' THEN 'Mysterio'
WHEN musicianName LIKE 'Rainbow' THEN 'Crazy Duo'
WHEN musicianName LIKE 'Luna' THEN 'Luna'
END
WHERE musicianName IN ('Alina', 'Rainbow', 'Mysterio', 'Luna');


CREATE TABLE band(
    bandName VARCHAR(50) PRIMARY KEY,
    creation YEAR,
    genre VARCHAR(50)
    );

INSERT INTO band (bandName, creation, genre) VALUES 
    ('Crazy Duo',2015,'rock'),
    ('Luna',2009,'classical'),
    ('Mysterio',2019,'pop');



