SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[friends](
	[FriendId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](200) NULL,
	[LastName] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[AdressId] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[friends] ADD  CONSTRAINT [PK_friends] PRIMARY KEY CLUSTERED 
(
	[FriendId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[friends]  WITH CHECK ADD  CONSTRAINT [FK_friends_address] FOREIGN KEY([AdressId])
REFERENCES [dbo].[address] ([AdressId])
GO
ALTER TABLE [dbo].[friends] CHECK CONSTRAINT [FK_friends_address]
GO
