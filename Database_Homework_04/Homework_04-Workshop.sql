--Homework_04 - Workshop

--Declare scalar function (fn_FormatProductName) for retrieving the Product
--description for specific ProductId in the following format:
--	• Second and Third character from the Code
--	• Last three characters from the Name
--	• Product Price


CREATE FUNCTION fn_FormatProductName(@ProductId INT)
RETURNS NVARCHAR(MAX)
AS
BEGIN

DECLARE @Result NVARCHAR(MAX)


Select @Result = STRING_AGG(SUBSTRING(p.Code, 2, 2) + ' - ' + LEFT(p.Name, 3) + ' - ' + CAST((p.Price) as nvarchar(MAX)), ', ' )
From Products p
WHERE Id = @ProductId

RETURN @Result
END


