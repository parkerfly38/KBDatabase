CREATE TABLE [dbo].[tcontentstats]
(
[contentID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[siteID] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[views] [int] NOT NULL CONSTRAINT [DF__views] DEFAULT ((0)),
[rating] [float] NOT NULL CONSTRAINT [DF__rating] DEFAULT ((0)),
[totalVotes] [int] NOT NULL CONSTRAINT [DF__totalVotes] DEFAULT ((0)),
[upVotes] [int] NOT NULL CONSTRAINT [DF__upVotes] DEFAULT ((0)),
[downVotes] [int] NOT NULL CONSTRAINT [DF__downVotes] DEFAULT ((0)),
[comments] [int] NOT NULL CONSTRAINT [DF__comments] DEFAULT ((0)),
[majorVersion] [int] NULL CONSTRAINT [DF__tcontents__major__671F4F74] DEFAULT (NULL),
[minorVersion] [int] NULL CONSTRAINT [DF__tcontents__minor__681373AD] DEFAULT (NULL),
[lockID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontents__lockI__690797E6] DEFAULT (NULL),
[lockType] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tcontents__lockT__1E3A7A34] DEFAULT (NULL),
[disableComments] [int] NULL CONSTRAINT [DF__tcontents__disab__1F2E9E6D] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tcontentstats] ADD CONSTRAINT [PK_tcontentstats] PRIMARY KEY CLUSTERED  ([contentID], [siteID]) ON [PRIMARY]
GO
