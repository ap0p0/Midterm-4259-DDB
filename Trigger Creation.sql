
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[zadaca4]
ON [dbo].[Bus]
AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	DECLARE @BusID int
	DECLARE @ScheduleID int 
	SELECT @BusID = i.vehicle,
			@ScheduleID = i.scheduleId
	FROM inserted i;
	INSERT INTO [dbo].[driverStat] (DESC_STAT, DATE_STAT) 
	VALUES ('A new vehicle is inserted with ID = ' + CAST(@BusID AS varchar(18)) + ', which will go on the route = ' + CAST(@ScheduleID AS varchar(18)), GETDATE());


END
GO

