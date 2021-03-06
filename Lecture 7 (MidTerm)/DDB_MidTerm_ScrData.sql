USE [BusSchedule]
GO
SET IDENTITY_INSERT [dbo].[Route] ON 

GO
INSERT [dbo].[Route] ([id], [fare]) VALUES (1, 10)
GO
INSERT [dbo].[Route] ([id], [fare]) VALUES (2, 8)
GO
INSERT [dbo].[Route] ([id], [fare]) VALUES (3, 7)
GO
INSERT [dbo].[Route] ([id], [fare]) VALUES (4, 11)
GO
INSERT [dbo].[Route] ([id], [fare]) VALUES (5, 10)
GO
INSERT [dbo].[Route] ([id], [fare]) VALUES (6, 21)
GO
INSERT [dbo].[Route] ([id], [fare]) VALUES (7, 12)
GO
INSERT [dbo].[Route] ([id], [fare]) VALUES (8, 11)
GO
INSERT [dbo].[Route] ([id], [fare]) VALUES (9, 3)
GO
INSERT [dbo].[Route] ([id], [fare]) VALUES (10, 4)
GO
INSERT [dbo].[Route] ([id], [fare]) VALUES (11, 5)
GO
INSERT [dbo].[Route] ([id], [fare]) VALUES (12, 6)
GO
INSERT [dbo].[Route] ([id], [fare]) VALUES (13, 6)
GO
SET IDENTITY_INSERT [dbo].[Route] OFF
GO
SET IDENTITY_INSERT [dbo].[Schedule] ON 

GO
INSERT [dbo].[Schedule] ([id], [RouteId], [departure]) VALUES (1, 1, CAST(N'2015-10-26 10:00:00.000' AS DateTime))
GO
INSERT [dbo].[Schedule] ([id], [RouteId], [departure]) VALUES (2, 2, CAST(N'2015-10-26 10:30:00.000' AS DateTime))
GO
INSERT [dbo].[Schedule] ([id], [RouteId], [departure]) VALUES (3, 3, CAST(N'2015-10-26 11:00:00.000' AS DateTime))
GO
INSERT [dbo].[Schedule] ([id], [RouteId], [departure]) VALUES (4, 4, CAST(N'2015-10-27 11:00:00.000' AS DateTime))
GO
INSERT [dbo].[Schedule] ([id], [RouteId], [departure]) VALUES (5, 5, CAST(N'2015-10-27 10:30:00.000' AS DateTime))
GO
INSERT [dbo].[Schedule] ([id], [RouteId], [departure]) VALUES (6, 6, CAST(N'2015-10-27 10:00:00.000' AS DateTime))
GO
INSERT [dbo].[Schedule] ([id], [RouteId], [departure]) VALUES (7, 7, CAST(N'2015-10-28 11:00:00.000' AS DateTime))
GO
INSERT [dbo].[Schedule] ([id], [RouteId], [departure]) VALUES (8, 8, CAST(N'2015-10-28 10:00:00.000' AS DateTime))
GO
INSERT [dbo].[Schedule] ([id], [RouteId], [departure]) VALUES (9, 9, CAST(N'2015-10-28 10:30:00.000' AS DateTime))
GO
INSERT [dbo].[Schedule] ([id], [RouteId], [departure]) VALUES (10, 10, CAST(N'2015-10-29 10:30:00.000' AS DateTime))
GO
INSERT [dbo].[Schedule] ([id], [RouteId], [departure]) VALUES (11, 11, CAST(N'2015-10-29 10:00:00.000' AS DateTime))
GO
INSERT [dbo].[Schedule] ([id], [RouteId], [departure]) VALUES (12, 12, CAST(N'2015-10-29 11:00:00.000' AS DateTime))
GO
INSERT [dbo].[Schedule] ([id], [RouteId], [departure]) VALUES (13, 13, CAST(N'2015-10-30 10:30:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Schedule] OFF
GO
SET IDENTITY_INSERT [dbo].[Bus] ON 

GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (2, 1, 1, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (3, 1, 1, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (4, 2, 2, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (5, 3, 3, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (6, 4, 4, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (7, 5, 5, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (8, 6, 6, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (9, 7, 14, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (10, 8, 4, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (11, 9, 5, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (12, 10, 52, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (13, 11, 52, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (14, 12, 4, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (15, 13, 4, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (17, 11, 58, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (18, 10, 8, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (19, 9, 1, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (20, 8, 42, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (21, 7, 25, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (22, 6, 252, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (23, 5, 52, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (24, 4, 5, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (25, 3, 452, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (26, 2, 2, NULL)
GO
INSERT [dbo].[Bus] ([vehicle], [ScheduleId], [fleet_Id], [last_main]) VALUES (27, 1, 245, NULL)
GO
SET IDENTITY_INSERT [dbo].[Bus] OFF
GO
SET IDENTITY_INSERT [dbo].[Driver] ON 

GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (6, 2, N'Driver 19', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (7, 2, N'Driver 12', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (8, 3, N'Driver 13', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (10, 4, N'Driver 14', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (11, 5, N'Driver 15', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (12, 6, N'Driver 1', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (13, 7, N'Driver 15', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (14, 8, N'Driver 17', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (15, 9, N'Driver 6', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (16, 10, N'Driver 1', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (17, 11, N'Driver 14', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (18, 12, N'9', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (19, 13, N'Driver 10', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (20, 14, N'Driver 13', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (21, 15, N'Driver 1y', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (23, 14, N'Driver 1', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (24, 13, N'Driver 13', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (25, 12, N'Driver 14', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (26, 11, N'Driver 1', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (27, 10, N'Driver 17', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (28, 9, N'Driver 19', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (29, 8, N'Driver 1', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (30, 7, N'Driver 9', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (31, 6, N'Driver 1', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (32, 5, N'Driver 19', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (33, 4, N'Driver 16', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (34, 3, N'Driver 15', NULL)
GO
INSERT [dbo].[Driver] ([id], [BusVehicle], [Name], [employ_Date]) VALUES (35, 2, N'Driver 17', NULL)
GO
SET IDENTITY_INSERT [dbo].[Driver] OFF
GO
SET IDENTITY_INSERT [dbo].[Stop] ON 

GO
INSERT [dbo].[Stop] ([id], [Name], [Terminus]) VALUES (1, N'Stop1', NULL)
GO
INSERT [dbo].[Stop] ([id], [Name], [Terminus]) VALUES (2, N'Stop2', NULL)
GO
INSERT [dbo].[Stop] ([id], [Name], [Terminus]) VALUES (3, N'Stop3', NULL)
GO
INSERT [dbo].[Stop] ([id], [Name], [Terminus]) VALUES (4, N'stop4', N'1')
GO
INSERT [dbo].[Stop] ([id], [Name], [Terminus]) VALUES (5, N'stop5', NULL)
GO
INSERT [dbo].[Stop] ([id], [Name], [Terminus]) VALUES (6, N'stop6', NULL)
GO
INSERT [dbo].[Stop] ([id], [Name], [Terminus]) VALUES (7, N'stop7', NULL)
GO
INSERT [dbo].[Stop] ([id], [Name], [Terminus]) VALUES (8, N'stop8', NULL)
GO
INSERT [dbo].[Stop] ([id], [Name], [Terminus]) VALUES (9, N'stop9', NULL)
GO
INSERT [dbo].[Stop] ([id], [Name], [Terminus]) VALUES (10, N'stop10', NULL)
GO
INSERT [dbo].[Stop] ([id], [Name], [Terminus]) VALUES (11, N'stop0', N'1')
GO
SET IDENTITY_INSERT [dbo].[Stop] OFF
GO
SET IDENTITY_INSERT [dbo].[RouteStop] ON 

GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (2, 1, 2)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (3, 1, 3)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (4, 2, 4)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (5, 2, 5)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (6, 2, 6)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (7, 3, 1)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (8, 3, 7)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (9, 3, 8)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (10, 3, 9)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (11, 4, 10)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (12, 4, 11)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (14, 5, 11)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (15, 5, 10)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (17, 5, 1)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (18, 5, 2)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (19, 6, 1)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (20, 6, 6)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (21, 6, 7)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (23, 7, 11)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (24, 7, 3)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (25, 7, 1)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (26, 7, 6)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (27, 8, 5)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (28, 8, 4)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (29, 8, 3)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (30, 9, 10)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (31, 9, 4)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (32, 9, 5)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (34, 10, 2)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (35, 10, 5)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (36, 10, 8)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (37, 11, 10)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (38, 11, 7)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (39, 11, 6)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (40, 11, 1)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (41, 12, 1)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (42, 12, 4)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (43, 12, 7)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (44, 12, 9)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (45, 13, 11)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (46, 13, 5)
GO
INSERT [dbo].[RouteStop] ([id], [RouteId], [StopId]) VALUES (47, 13, 9)
GO
SET IDENTITY_INSERT [dbo].[RouteStop] OFF
GO
