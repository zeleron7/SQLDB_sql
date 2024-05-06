SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pets](
	[PetId] [int] IDENTITY(1,1) NOT NULL,
	[AnimalKind] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[FriendId] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[pets] ADD  CONSTRAINT [PK_pets] PRIMARY KEY CLUSTERED 
(
	[PetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[pets]  WITH CHECK ADD  CONSTRAINT [FK_pets_friends] FOREIGN KEY([FriendId])
REFERENCES [dbo].[friends] ([FriendId])
GO
ALTER TABLE [dbo].[pets] CHECK CONSTRAINT [FK_pets_friends]
GO
ALTER TABLE [dbo].[pets]  WITH CHECK ADD  CONSTRAINT [CK_Pet_AnimalKind] CHECK  (([AnimalKind]='Bird' OR [AnimalKind]='Fish' OR [AnimalKind]='Rabbit' OR [AnimalKind]='Cat' OR [AnimalKind]='Dog'))
GO
ALTER TABLE [dbo].[pets] CHECK CONSTRAINT [CK_Pet_AnimalKind]
GO
