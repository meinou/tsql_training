DECLARE @X INT;
DECLARE @Y INT = 2;
DECLARE @Z FLOAT = 10.1, @Z2 FLOAT = 20.2;
SET @X = YEAR(GETDATE()) - (1 + 2 + @Y);

SELECT @X AS X, @Y AS Y, @Z + @Z2 AS [Z + Z2]

DECLARE @NUM FLOAT = 2.5;
DECLARE @DOLLAR VARCHAR(1) = '$';

SELECT CAST(@NUM AS VARCHAR(4)) + @DOLLAR;

SELECT CONVERT(VARCHAR(MAX), @NUM) + @DOLLAR;

DECLARE @S CHAR(6) = 'ABCDEF';
DECLARE @S_LENGTH INT = (SELECT DATALENGTH(@S));

SELECT '"' + @S + '"' + ' HAS ' + CAST(@S_LENGTH AS CHAR) + ' BYTES';