create database sales_office
USE [sales_office]
GO

/****** Object:  Table [dbo].[employee]    Script Date: 7/24/2023 10:46:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[employee](
	[emp_id] [int] NOT NULL,
	[emp_name] [varchar](30) NULL,
	[sale_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[emp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [fk] FOREIGN KEY([sale_id])
REFERENCES [dbo].[sale_office] ([sale_id])
GO

ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [fk]
GO

USE [sales_office]
GO

/****** Object:  Table [dbo].[property]    Script Date: 7/24/2023 10:49:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[property](
	[p_id] [int] NOT NULL,
	[zipcode] [int] NULL,
	[pstate] [varchar](30) NULL,
	[city] [varchar](30) NULL,
	[sale_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[p_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[property]  WITH CHECK ADD  CONSTRAINT [fk1] FOREIGN KEY([sale_id])
REFERENCES [dbo].[sale_office] ([sale_id])
GO

ALTER TABLE [dbo].[property] CHECK CONSTRAINT [fk1]
GO

USE [sales_office]
GO

/****** Object:  Table [dbo].[sale_office]    Script Date: 7/24/2023 10:50:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sale_office](
	[sale_id] [int] NOT NULL,
	[sales_name] [varchar](50) NULL,
	[sale_loc] [varchar](50) NULL,
	[manager_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sale_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[sale_office]  WITH CHECK ADD  CONSTRAINT [fk2] FOREIGN KEY([manager_id])
REFERENCES [dbo].[employee] ([emp_id])
GO

ALTER TABLE [dbo].[sale_office] CHECK CONSTRAINT [fk2]
GO

USE [sales_office]
GO

/****** Object:  Table [dbo].[per_owner]    Script Date: 7/24/2023 10:52:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[per_owner](
	[owner_id] [int] NOT NULL,
	[property_id] [int] NOT NULL,
	[owner_percentage] [int] NOT NULL,
 CONSTRAINT [pk] PRIMARY KEY CLUSTERED 
(
	[owner_id] ASC,
	[property_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[per_owner]  WITH CHECK ADD  CONSTRAINT [fk3] FOREIGN KEY([property_id])
REFERENCES [dbo].[property] ([p_id])
GO

ALTER TABLE [dbo].[per_owner] CHECK CONSTRAINT [fk3]
GO

ALTER TABLE [dbo].[per_owner]  WITH CHECK ADD  CONSTRAINT [fk5] FOREIGN KEY([owner_id])
REFERENCES [dbo].[owner_property] ([id])
GO

ALTER TABLE [dbo].[per_owner] CHECK CONSTRAINT [fk5]
GO


USE [sales_office]
GO

/****** Object:  Table [dbo].[owner_property]    Script Date: 7/24/2023 10:52:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[owner_property](
	[id] [int] NOT NULL,
	[owner_name] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO










