CREATE VIEW [newView1]
AS
SELECT S.id, S.Name, S.Terminus, RS.RouteId,RS.StopId
	FROM dbo.Stop AS S
	INNER JOIN dbo.RouteStop AS RS
	ON S.id = RS.id
	INNER JOIN dbo.Route AS Route
	ON S.id = Route.id