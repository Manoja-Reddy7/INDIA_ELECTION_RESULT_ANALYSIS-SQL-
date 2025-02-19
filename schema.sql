USE [India Election Results]
GO
/****** Object:  Table [dbo].[constituencywise_details]    Script Date: 07-02-2025 22:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[constituencywise_details](
	[S_N] [int] NOT NULL,
	[Candidate] [varchar](100) NOT NULL,
	[Party] [varchar](100) NOT NULL,
	[EVM_Votes] [int] NOT NULL,
	[Postal_Votes] [int] NOT NULL,
	[Total_Votes] [int] NOT NULL,
	[of_Votes] [float] NOT NULL,
	[Constituency_ID] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[constituencywise_results]    Script Date: 07-02-2025 22:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[constituencywise_results](
	[S_No] [int] NOT NULL,
	[Parliament_Constituency] [varchar](100) NOT NULL,
	[Constituency_Name] [varchar](100) NOT NULL,
	[Winning_Candidate] [varchar](100) NOT NULL,
	[Total_Votes] [int] NOT NULL,
	[Margin] [int] NOT NULL,
	[Constituency_ID] [varchar](100) NOT NULL,
	[Party_ID] [int] NOT NULL,
 CONSTRAINT [PK_constituencywise_results] PRIMARY KEY CLUSTERED 
(
	[Parliament_Constituency] ASC,
	[Constituency_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partywise_results]    Script Date: 07-02-2025 22:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partywise_results](
	[Party] [varchar](100) NOT NULL,
	[Won] [int] NOT NULL,
	[Party_ID] [int] NOT NULL,
	[Party_Alliance] [varchar](50) NULL,
 CONSTRAINT [PK_partywise_results] PRIMARY KEY CLUSTERED 
(
	[Party_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[states]    Script Date: 07-02-2025 22:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[states](
	[State_ID] [varchar](100) NOT NULL,
	[State] [varchar](100) NOT NULL,
 CONSTRAINT [PK_states] PRIMARY KEY CLUSTERED 
(
	[State_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[statewise_results]    Script Date: 07-02-2025 22:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statewise_results](
	[Constituency] [varchar](100) NOT NULL,
	[Const_No] [int] NOT NULL,
	[Parliament_Constituency] [varchar](100) NOT NULL,
	[Leading_Candidate] [varchar](100) NOT NULL,
	[Trailing_Candidate] [varchar](100) NULL,
	[Margin] [int] NOT NULL,
	[Status] [varchar](100) NOT NULL,
	[State_ID] [varchar](100) NOT NULL,
	[State] [varchar](100) NOT NULL,
 CONSTRAINT [PK_statewise_results] PRIMARY KEY CLUSTERED 
(
	[Parliament_Constituency] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
