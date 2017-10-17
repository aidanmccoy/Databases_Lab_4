-- aimccoy

#1a)
ALTER TABLE List ADD GPA INTEGER;

#1b)
DELETE FROM List WHERE (Grade != 5 AND Grade != 6);

#1c)
INSERT INTO Teachers(LastName,FirstName,Classroom) VALUES ('''AP-MAWR''','''GAWAIN''',120);

#1d)
UPDATE List SET Classroom = 120 WHERE LastName = '''FLACHS''' OR LastName = '''HUANG''' OR LastName = '''GRUNIN''';
