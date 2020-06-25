USE [DM_Reservas]
GO
/****** Object:  Table [dbo].[DimHoteis]    Script Date: 25/06/2020 20:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimHoteis](
	[IDHOTEL] [int] IDENTITY(1,1) NOT NULL,
	[HOTEL] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHOTEL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DimHoteis] ON 

INSERT [dbo].[DimHoteis] ([IDHOTEL], [HOTEL]) VALUES (1, N'Hotel Gotham')
SET IDENTITY_INSERT [dbo].[DimHoteis] OFF
