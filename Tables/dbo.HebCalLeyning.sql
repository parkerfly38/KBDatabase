CREATE TABLE [dbo].[HebCalLeyning]
(
[id] [int] NOT NULL,
[AliyahOne] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AliyahTwo] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AliyahThree] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AliyahFour] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AliyahFive] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AliyahSix] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AliyahSeven] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[haftarah] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[maftir] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[torah] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TriennialId] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HebCalLeyning] ADD CONSTRAINT [PK__HebCalLe__3213E83F34C3F104] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HebCalLeyning] ADD CONSTRAINT [UK_stpof399j8q64ew1f996jbfee] UNIQUE NONCLUSTERED  ([TriennialId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HebCalLeyning] ADD CONSTRAINT [FK_stpof399j8q64ew1f996jbfee] FOREIGN KEY ([TriennialId]) REFERENCES [dbo].[HebCalTriennial] ([id])
GO
