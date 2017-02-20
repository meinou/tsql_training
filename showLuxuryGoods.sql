USE [Store]
GO
/****** Object:  StoredProcedure [dbo].[showLuxury]    Script Date: 16/02/2017 12:00:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[showLuxury]
	-- Add the parameters for the stored procedure here
	@categoryID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from [dbo].Goods where cast([price] as int) > 10 and categoryID = @categoryID
END
