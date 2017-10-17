-- aimccoy

#1a)
ALTER TABLE List ADD GPA NUMERIC (5,2);

#1b)
DELETE FROM List WHERE (Grade != 5 AND Grade != 6);

#1c)
INSERT INTO Teachers(LastName,FirstName,Classroom) VALUES ('''AP-MAWR''','''GAWAIN''',120);

#1d)
UPDATE List SET Classroom = 120 WHERE LastName = '''FLACHS''' OR LastName = '''HUANG''' OR LastName = '''GRUNIN''';

#1e)
UPDATE List SET GPA = 3.25 WHERE Grade = 6;

#1f)
UPDATE List SET GPA = 2.9 where (Classroom = 109 AND Grade = 5);

#1g)
UPDATE List SET GPA = 3.5 where (Classroom = 120 AND Grade = 5);

#1h)
UPDATE List SET GPA = GPA + 0.3 WHERE FirstName = '''Al''';

#2a)
DELETE FROM Data WHERE !(((Year = 1979 OR 1980) AND MPG >= 20) OR (MPG > 26 AND Horsepower > 110) OR (Cylinders = 8 AND Accelerate < 10);

#2b)
ALTER TABLE Data DROP Edispl, DROP Horsepower, DROP Weight;

#2c)
DELETE FROM Data WHERE Cylinders <= 5;
