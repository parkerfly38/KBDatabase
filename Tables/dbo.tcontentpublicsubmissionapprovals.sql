CREATE TABLE [dbo].[tcontentpublicsubmissionapprovals]
(
[contentid] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[isApproved] [tinyint] NULL,
[email] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[siteid] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentpublicsubmissionapprovals] ON [dbo].[tcontentpublicsubmissionapprovals] ([contentid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tcontentpublicsubmissionapprovals_1] ON [dbo].[tcontentpublicsubmissionapprovals] ([siteid]) ON [PRIMARY]
GO
