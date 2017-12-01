USE [initial]
GO

/****** Object:  Table [dbo].[departments]    Script Date: 11/12/2014 11:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[departments](
	[dept_no] [char](4) NOT NULL,
	[dept_name] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[dept_no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[country]    Script Date: 11/12/2014 11:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[country](
	[country_id] [int] NOT NULL,
	[country_name] [varchar](100) NULL,
 CONSTRAINT [PK_country_master] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[clients]    Script Date: 11/12/2014 11:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clients](
	[client_id] [int] NOT NULL,
	[client] [varchar](100) NULL,
	[category] [varchar](10) NULL,
 CONSTRAINT [PK_clients] PRIMARY KEY CLUSTERED 
(
	[client_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[title]    Script Date: 11/12/2014 11:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[title](
	[id] [int] NOT NULL,
	[title] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[state]    Script Date: 11/12/2014 11:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[state](
	[state_id] [int] NOT NULL,
	[state] [varchar](100) NULL,
	[country_id] [int] NULL,
 CONSTRAINT [PK_state_master] PRIMARY KEY CLUSTERED 
(
	[state_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[city]    Script Date: 11/12/2014 11:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[city](
	[city_id] [int] NOT NULL,
	[city] [varchar](100) NULL,
	[state_id] [int] NULL,
 CONSTRAINT [PK_city_master] PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employee]    Script Date: 11/12/2014 11:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[emp_no] [int] NOT NULL,
	[birth_date] [date] NOT NULL,
	[first_name] [varchar](100) NOT NULL,
	[last_name] [varchar](100) NOT NULL,
	[gender] [varchar](10) NOT NULL,
	[hire_date] [date] NOT NULL,
	[salary] [int] NULL,
	[title_no] [int] NULL,
	[dept_no] [char](4) NULL,
	[current_city] [int] NULL,
	[base_city] [int] NULL,
	[marital_status] [varchar](10) NULL,
	[no_of_children] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[emp_no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[client_emp]    Script Date: 11/12/2014 11:31:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client_emp](
	[emp_no] [int] NOT NULL,
	[client] [int] NOT NULL,
 CONSTRAINT [PK_client_emp] PRIMARY KEY CLUSTERED 
(
	[emp_no] ASC,
	[client] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF__employee___salar__3A81B327]    Script Date: 11/12/2014 11:31:20 ******/
ALTER TABLE [dbo].[employee] ADD  DEFAULT (NULL) FOR [salary]
GO
/****** Object:  Default [DF__employee___title__3B75D760]    Script Date: 11/12/2014 11:31:20 ******/
ALTER TABLE [dbo].[employee] ADD  DEFAULT (NULL) FOR [title_no]
GO
/****** Object:  Default [DF__employee___dept___3C69FB99]    Script Date: 11/12/2014 11:31:20 ******/
ALTER TABLE [dbo].[employee] ADD  DEFAULT (NULL) FOR [dept_no]
GO
/****** Object:  Default [DF__title_mas__title__2D27B809]    Script Date: 11/12/2014 11:31:20 ******/
ALTER TABLE [dbo].[title] ADD  DEFAULT (NULL) FOR [title]
GO
/****** Object:  ForeignKey [FK_city_master_state_master]    Script Date: 11/12/2014 11:31:20 ******/
ALTER TABLE [dbo].[city]  WITH CHECK ADD  CONSTRAINT [FK_city_master_state_master] FOREIGN KEY([state_id])
REFERENCES [dbo].[state] ([state_id])
GO
ALTER TABLE [dbo].[city] CHECK CONSTRAINT [FK_city_master_state_master]
GO
/****** Object:  ForeignKey [FK_client_emp_clients]    Script Date: 11/12/2014 11:31:20 ******/
ALTER TABLE [dbo].[client_emp]  WITH CHECK ADD  CONSTRAINT [FK_client_emp_clients] FOREIGN KEY([client])
REFERENCES [dbo].[clients] ([client_id])
GO
ALTER TABLE [dbo].[client_emp] CHECK CONSTRAINT [FK_client_emp_clients]
GO
/****** Object:  ForeignKey [FK_client_emp_employee_master_new]    Script Date: 11/12/2014 11:31:20 ******/
ALTER TABLE [dbo].[client_emp]  WITH CHECK ADD  CONSTRAINT [FK_client_emp_employee_master_new] FOREIGN KEY([emp_no])
REFERENCES [dbo].[employee] ([emp_no])
GO
ALTER TABLE [dbo].[client_emp] CHECK CONSTRAINT [FK_client_emp_employee_master_new]
GO
/****** Object:  ForeignKey [FK__employee___dept___3D5E1FD2]    Script Date: 11/12/2014 11:31:20 ******/
ALTER TABLE [dbo].[employee]  WITH CHECK ADD FOREIGN KEY([dept_no])
REFERENCES [dbo].[departments] ([dept_no])
GO
/****** Object:  ForeignKey [FK__employee___title__3E52440B]    Script Date: 11/12/2014 11:31:20 ******/
ALTER TABLE [dbo].[employee]  WITH CHECK ADD FOREIGN KEY([title_no])
REFERENCES [dbo].[title] ([id])
GO
/****** Object:  ForeignKey [FK_employee_master_new_city_master]    Script Date: 11/12/2014 11:31:20 ******/
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_master_new_city_master] FOREIGN KEY([current_city])
REFERENCES [dbo].[city] ([city_id])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FK_employee_master_new_city_master]
GO
/****** Object:  ForeignKey [FK_state_master_country_master]    Script Date: 11/12/2014 11:31:20 ******/
ALTER TABLE [dbo].[state]  WITH CHECK ADD  CONSTRAINT [FK_state_master_country_master] FOREIGN KEY([country_id])
REFERENCES [dbo].[country] ([country_id])
GO
ALTER TABLE [dbo].[state] CHECK CONSTRAINT [FK_state_master_country_master]
GO


-- Datawarehouse -----------------------------------------------------------------------


use [warehouse]
go

set ansi_nulls on
go
set quoted_identifier on
go
set ansi_padding on
go

create table [dbo].[dimCity]
(
	[city_id] [int] not null,
	[city] [varchar](100) null,
	[state_id] [int] null,
	[state] [varchar](100) null,
	[country_id] [int] not null,
	[country_name] [varchar](100) null,
	primary key ([city_id])
)

create table [dbo].[dimClients]
(
	[CID] [int] identity(1,1) not null,
	[client_id] [varchar](100) null,
	[client] [varchar](100) null,
	[category] [varchar](10) null,
	[current] [bit] not null default 1,
	primary key ([CID])
)

create table [dbo].[dimEmployee]
(
	[EID] [int] identity(1,1) not null,
	[emp_no] [int] not null,
	[birth_date] [date] not null,
	[first_name] [varchar](100) not null,
	[last_name] [varchar](100) not null,
	[gender] [varchar](10) not null,
	[hire_date] [date] not null,
	[title_id] [int] null,
	[title] [varchar](50) null,
	[current_city_id] [int] null foreign key references [dimCity](city_id),
	[base_city_id] [int] null foreign key references [dimCity](city_id),
	[dept_id] [varchar](4) null,
	[dept_name] [varchar](40) null,
	[start] [date] not null,
	[end] [date] null,
	primary key ([EID])
)

create table [dbo].[factSalary]
(
	[EID] [int] not null foreign key references [dimEmployee](EID),
	[factDate] [date] not null,
	[salary] [int] not null
)

create table [dbo].[bridgeEmployee]
(
	[CID] [int] not null foreign key references [dimClients](CID),
	[EID] [int] not null foreign key references [dimEmployee](EID),
	constraint PK_Person primary key (CID, EID)
)