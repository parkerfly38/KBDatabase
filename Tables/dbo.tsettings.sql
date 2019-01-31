CREATE TABLE [dbo].[tsettings]
(
[SiteID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Site] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaxNestLevel] [int] NULL,
[PageLimit] [int] NULL,
[Locking] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Domain] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[exportLocation] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FileDir] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Contact] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MailserverIP] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MailServerUsername] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MailServerPassword] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmailBroadcaster] [int] NULL,
[Extranet] [int] NULL,
[ExtranetPublicReg] [int] NULL,
[ExtranetPublicRegNotify] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ExtranetSSL] [int] NULL,
[Cache] [int] NULL,
[ViewDepth] [int] NULL,
[NextN] [int] NULL,
[DataCollection] [int] NULL,
[columnCount] [int] NULL,
[columnNames] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[primaryColumn] [int] NULL,
[publicSubmission] [int] NULL,
[AdManager] [int] NULL,
[archiveDate] [datetime] NULL,
[contactName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[contactAddress] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[contactCity] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[contactState] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[contactZip] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[contactEmail] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[contactPhone] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[privateUserPoolID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[publicUserPoolID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[advertiserUserPoolID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[orderNo] [int] NULL,
[emailBroadcasterLimit] [int] NOT NULL,
[feedManager] [int] NULL,
[displayPoolID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[galleryMainScaleBy] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[galleryMainScale] [int] NULL,
[gallerySmallScaleBy] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[gallerySmallScale] [int] NULL,
[galleryMediumScaleBy] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[galleryMediumScale] [int] NULL,
[sendLoginScript] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[mailingListConfirmScript] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[publicSubmissionApprovalScript] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[reminderScript] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[loginURL] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[editProfileURL] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CommentApprovalDefault] [tinyint] NULL,
[deploy] [tinyint] NULL,
[lastDeployment] [datetime] NULL,
[accountActivationScript] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[googleAPIKey] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[useDefaultSMTPServer] [tinyint] NULL,
[theme] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[mailserverSMTPPort] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[mailserverPOPPort] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[mailserverTLS] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[mailserverSSL] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[siteLocale] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__siteL__245D67DE] DEFAULT (NULL),
[domainAlias] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[cacheCapacity] [int] NULL,
[cacheFreeMemoryThreshold] [int] NULL,
[tagline] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__tagli__3E1D39E1] DEFAULT (NULL),
[hasChangesets] [tinyint] NULL,
[baseID] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__baseI__625A9A57] DEFAULT (NULL),
[enforcePrimaryDomain] [tinyint] NULL CONSTRAINT [DF__tsettings__enfor__6EC0713C] DEFAULT ((0)),
[enforceChangesets] [tinyint] NULL CONSTRAINT [DF__tsettings__enfor__6FB49575] DEFAULT ((0)),
[smallImageHeight] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__small__70A8B9AE] DEFAULT (NULL),
[smallImageWidth] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__small__719CDDE7] DEFAULT (NULL),
[mediumImageHeight] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__mediu__72910220] DEFAULT (NULL),
[mediumImageWidth] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__mediu__73852659] DEFAULT (NULL),
[largeImageHeight] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__large__74794A92] DEFAULT (NULL),
[largeImageWidth] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__large__756D6ECB] DEFAULT (NULL),
[contentApprovalScript] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__conte__0E04126B] DEFAULT (NULL),
[contentRejectionScript] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__conte__0EF836A4] DEFAULT (NULL),
[hasComments] [int] NULL CONSTRAINT [DF__tsettings__hasCo__0FEC5ADD] DEFAULT ((0)),
[hasLockableNodes] [int] NULL CONSTRAINT [DF__tsettings__hasLo__10E07F16] DEFAULT ((0)),
[enableLockdown] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__enabl__1699586C] DEFAULT (NULL),
[customTagGroups] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__custo__178D7CA5] DEFAULT (NULL),
[filePoolID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__fileP__1B5E0D89] DEFAULT (NULL),
[categoryPoolID] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__categ__1C5231C2] DEFAULT (NULL),
[contentPoolID] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__conte__1D4655FB] DEFAULT (NULL),
[sendAuthCodeScript] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__sendA__29AC2CE0] DEFAULT (NULL),
[reCAPTCHASiteKey] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__reCAP__2E70E1FD] DEFAULT (NULL),
[reCAPTCHASecret] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__reCAP__2F650636] DEFAULT (NULL),
[reCAPTCHALanguage] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__reCAP__30592A6F] DEFAULT (NULL),
[JSONApi] [int] NULL CONSTRAINT [DF__tsettings__JSONA__314D4EA8] DEFAULT ((0)),
[useSSL] [int] NULL CONSTRAINT [DF__tsettings__useSS__324172E1] DEFAULT ((0)),
[isremote] [int] NULL CONSTRAINT [DF__tsettings__isrem__3335971A] DEFAULT ((0)),
[resourceSSL] [int] NULL CONSTRAINT [DF__tsettings__resou__3429BB53] DEFAULT ((0)),
[resourceDomain] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__resou__351DDF8C] DEFAULT (NULL),
[remoteport] [int] NULL CONSTRAINT [DF__tsettings__remot__361203C5] DEFAULT ((80)),
[remotecontext] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__remot__370627FE] DEFAULT (NULL),
[contentPendingScript] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__conte__5A4F643B] DEFAULT (NULL),
[contentCanceledScript] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__conte__5B438874] DEFAULT (NULL),
[showDashboard] [int] NULL CONSTRAINT [DF__tsettings__showD__5C37ACAD] DEFAULT ('0'),
[placeholderImgID] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__place__5D2BD0E6] DEFAULT (NULL),
[placeholderImgExt] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__tsettings__place__5E1FF51F] DEFAULT (NULL),
[scaffolding] [int] NULL CONSTRAINT [DF__tsettings__scaff__6A85CC04] DEFAULT (NULL)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tsettings] ADD CONSTRAINT [pk_tsettings] PRIMARY KEY CLUSTERED  ([SiteID]) ON [PRIMARY]
GO