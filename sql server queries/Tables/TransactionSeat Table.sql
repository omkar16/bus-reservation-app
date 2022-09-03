USE [BusReservation]
GO

/****** Object:  Table [dbo].[TransactionSeat]    Script Date: 03-09-2022 8.07.25 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TransactionSeat](
	[TId] [int] NOT NULL,
	[SeatNo] [varchar](2) NOT NULL,
 CONSTRAINT [PK_TId] PRIMARY KEY CLUSTERED 
(
	[TId] ASC,
	[SeatNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TransactionSeat]  WITH CHECK ADD FOREIGN KEY([TId])
REFERENCES [dbo].[TransactionDetails] ([TId])
GO
