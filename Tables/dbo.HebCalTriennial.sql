CREATE TABLE [dbo].[HebCalTriennial]
(
[id] [int] NOT NULL,
[AliyahOne] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AliyahTwo] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AliyahThree] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AliyahFour] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AliyahFive] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AliyahSix] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AliyahSeven] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[maftir] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HebCalTriennial] ADD CONSTRAINT [PK__HebCalTr__3213E83F2370F0A5] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
