CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName NVARCHAR(50) NOT NULL
);
CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName NVARCHAR(50) NOT NULL
);
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    ClassID INT FOREIGN KEY REFERENCES Classes(ClassID),
    CONSTRAINT FK_Students_Classes FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);
CREATE INDEX IX_SubjectName ON Subjects(SubjectName);
CREATE INDEX IX_ClassName ON Classes(ClassName);
CREATE INDEX IX_StudentLastName ON Students(LastName);