USE [BusReservation]
GO

/****** Object:  Table [dbo].[BusSeat]    Script Date: 03-09-2022 8.06.06 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BusSeat](
	[SeatNo] [varchar](2) NOT NULL,
	[BusId] [int] NOT NULL,
	[Available] [bit] NULL,
 CONSTRAINT [PK_SeatNo_BusId] PRIMARY KEY CLUSTERED 
(
	[SeatNo] ASC,
	[BusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[BusSeat] ADD  DEFAULT ((1)) FOR [Available]
GO

ALTER TABLE [dbo].[BusSeat]  WITH CHECK ADD FOREIGN KEY([BusId])
REFERENCES [dbo].[Bus] ([BusId])
GO
