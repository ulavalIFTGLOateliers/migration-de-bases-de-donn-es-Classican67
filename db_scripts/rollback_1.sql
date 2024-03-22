ALTER TABLE musician RENAME TO singer;

ALTER TABLE singer RENAME COLUMN musicianName TO singerName;

ALTER TABLE singer DROP COLUMN role;
ALTER TABLE singer DROP COLUMN bandName;

DROP TABLE IF EXISTS band;