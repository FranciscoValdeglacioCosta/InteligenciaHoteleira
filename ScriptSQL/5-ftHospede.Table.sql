USE [DM_Reservas]
GO
/****** Object:  Table [dbo].[ftHospede]    Script Date: 25/06/2020 20:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ftHospede](
	[IDHOSPEDE] [int] IDENTITY(1,1) NOT NULL,
	[NOMEHOSPEDE] [varchar](300) NULL,
	[SEXO] [char](1) NULL,
	[UF] [char](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHOSPEDE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ftHospede] ON 

INSERT [dbo].[ftHospede] ([IDHOSPEDE], [NOMEHOSPEDE], [SEXO], [UF]) VALUES (1, N'James Gordon', N'M', N'CE')
INSERT [dbo].[ftHospede] ([IDHOSPEDE], [NOMEHOSPEDE], [SEXO], [UF]) VALUES (2, N'Harvey Bullock', N'M', N'SP')
INSERT [dbo].[ftHospede] ([IDHOSPEDE], [NOMEHOSPEDE], [SEXO], [UF]) VALUES (3, N'Oswald Cobblepot', N'M', N'RJ')
INSERT [dbo].[ftHospede] ([IDHOSPEDE], [NOMEHOSPEDE], [SEXO], [UF]) VALUES (4, N'Edward Nygma', N'M', N'SP')
INSERT [dbo].[ftHospede] ([IDHOSPEDE], [NOMEHOSPEDE], [SEXO], [UF]) VALUES (5, N'Alfred Pennyworth', N'M', N'ES')
INSERT [dbo].[ftHospede] ([IDHOSPEDE], [NOMEHOSPEDE], [SEXO], [UF]) VALUES (6, N'Selina Kyle', N'F', N'MT')
INSERT [dbo].[ftHospede] ([IDHOSPEDE], [NOMEHOSPEDE], [SEXO], [UF]) VALUES (7, N'Barbara Kean', N'F', N'SP')
INSERT [dbo].[ftHospede] ([IDHOSPEDE], [NOMEHOSPEDE], [SEXO], [UF]) VALUES (8, N'Carmine Falcone', N'M', N'CE')
INSERT [dbo].[ftHospede] ([IDHOSPEDE], [NOMEHOSPEDE], [SEXO], [UF]) VALUES (9, N'Fish Mooney', N'F', N'SP')
INSERT [dbo].[ftHospede] ([IDHOSPEDE], [NOMEHOSPEDE], [SEXO], [UF]) VALUES (10, N'Victor Zsasz', N'M', N'SP')
INSERT [dbo].[ftHospede] ([IDHOSPEDE], [NOMEHOSPEDE], [SEXO], [UF]) VALUES (11, N'Harvey Dent', N'M', N'RJ')
INSERT [dbo].[ftHospede] ([IDHOSPEDE], [NOMEHOSPEDE], [SEXO], [UF]) VALUES (12, N'Ivy Pepper', N'F', N'SP')
SET IDENTITY_INSERT [dbo].[ftHospede] OFF
