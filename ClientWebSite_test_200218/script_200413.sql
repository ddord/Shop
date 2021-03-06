USE [master]
GO
/****** Object:  Database [test_pubs]    Script Date: 2020-04-13 오후 6:08:17 ******/
CREATE DATABASE [test_pubs]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'test_pubs', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS17\MSSQL\DATA\test_pubs.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'test_pubs_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS17\MSSQL\DATA\test_pubs_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [test_pubs] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [test_pubs].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [test_pubs] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [test_pubs] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [test_pubs] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [test_pubs] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [test_pubs] SET ARITHABORT OFF 
GO
ALTER DATABASE [test_pubs] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [test_pubs] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [test_pubs] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [test_pubs] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [test_pubs] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [test_pubs] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [test_pubs] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [test_pubs] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [test_pubs] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [test_pubs] SET  DISABLE_BROKER 
GO
ALTER DATABASE [test_pubs] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [test_pubs] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [test_pubs] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [test_pubs] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [test_pubs] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [test_pubs] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [test_pubs] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [test_pubs] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [test_pubs] SET  MULTI_USER 
GO
ALTER DATABASE [test_pubs] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [test_pubs] SET DB_CHAINING OFF 
GO
ALTER DATABASE [test_pubs] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [test_pubs] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [test_pubs] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [test_pubs] SET QUERY_STORE = OFF
GO
USE [test_pubs]
GO
/****** Object:  User [test_id_11]    Script Date: 2020-04-13 오후 6:08:17 ******/
CREATE USER [test_id_11] FOR LOGIN [test_id_11] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [test_id_11]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [test_id_11]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [test_id_11]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [test_id_11]
GO
ALTER ROLE [db_datareader] ADD MEMBER [test_id_11]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [test_id_11]
GO
/****** Object:  Table [dbo].[mainBoard]    Script Date: 2020-04-13 오후 6:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mainBoard](
	[mainBoardNo] [int] IDENTITY(1,1) NOT NULL,
	[category] [nchar](20) NULL,
	[userID] [nvarchar](30) NOT NULL,
	[id_Name] [nvarchar](30) NOT NULL,
	[mainBoardTitle] [nvarchar](50) NOT NULL,
	[mainBoardContent] [nvarchar](300) NULL,
	[writeDate] [datetime] NOT NULL,
	[mainBoardPwd] [nchar](10) NULL,
 CONSTRAINT [PK_mainBoard_1] PRIMARY KEY CLUSTERED 
(
	[mainBoardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfor]    Script Date: 2020-04-13 오후 6:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfor](
	[userID] [nvarchar](30) NOT NULL,
	[userName] [nvarchar](50) NOT NULL,
	[userPwd] [nvarchar](20) NOT NULL,
	[userAddress] [nvarchar](100) NOT NULL,
	[userEmail] [nvarchar](50) NOT NULL,
	[userGrade] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[mainBoard] ON 

INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (1, N'자유게시판               ', N'isdi11', N'김석두', N'안녕하세요!', N'안녕하세요 가입했습니다.', CAST(N'2020-03-17T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (2, N'자유게시판               ', N'mong22', N'이몽이', N'반갑습니다~~', N'게시판 활동 많이 해주세요.... 너무 유령 게시판이에요~', CAST(N'2020-03-17T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (3, N'자유게시판               ', N'where11', N'최영훈', N'추천 받아 가입했습니다.', N'추천받고 가입했어용~ 반가워요', CAST(N'2020-03-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (4, N'자유게시판               ', N'dark11', N'이일자', N'유령 게시판이네요', N'사람이 너무 없네요~ 보기 예전같지 않네여......................

많이 가입해주세요.

하하하하', CAST(N'2020-03-30T14:02:29.443' AS DateTime), N'1111      ')
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (5, N'자유게시판               ', N'where11', N'언제', N'어디서어떻게 하려고', N'무엇을요 뭐든 해주세요 힘내세요 응원합니다~', CAST(N'2020-03-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (6, N'자유게시판               ', N'isdi11', N'김석두', N'안녕하세요!', N'안녕하세요 가입했습니다.', CAST(N'2020-03-17T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (7, N'자유게시판               ', N'mong22', N'이몽이', N'반갑습니다~~', N'게시판 활동 많이 해주세요.... 너무 유령 게시판이에요~', CAST(N'2020-03-17T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (8, N'자유게시판               ', N'where11', N'최영훈', N'추천 받아 가입했습니다.', N'추천받고 가입했어용~ 반가워요', CAST(N'2020-03-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (9, N'자유게시판               ', N'dark11', N'닥템', N'유령 게시판이네요', N'사람이 너무 업네요~ 보기 예전같지 않네여......................', CAST(N'2020-03-02T00:00:00.000' AS DateTime), N'1111      ')
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (10, N'자유게시판               ', N'where11', N'언제', N'어디서어떻게 하려고', N'무엇을요 뭐든 해주세요 힘내세요 응원합니다~', CAST(N'2020-03-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (11, N'자유게시판               ', N'isdi11', N'김석두', N'안녕하세요!', N'안녕하세요 가입했습니다.', CAST(N'2020-03-17T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (12, N'자유게시판               ', N'mong22', N'이몽이', N'반갑습니다~~', N'게시판 활동 많이 해주세요.... 너무 유령 게시판이에요~', CAST(N'2020-03-17T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (13, N'자유게시판               ', N'where11', N'최영훈', N'추천 받아 가입했습니다.', N'추천받고 가입했어용~ 반가워요', CAST(N'2020-03-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (14, N'자유게시판               ', N'dark11', N'닥템', N'유령 게시판이네요', N'사람이 너무 업네요~ 보기 예전같지 않네여......................', CAST(N'2020-03-02T00:00:00.000' AS DateTime), N'1111      ')
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (15, N'자유게시판               ', N'where11', N'언제', N'어디서어떻게 하려고', N'무엇을요 뭐든 해주세요 힘내세요 응원합니다~', CAST(N'2020-03-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (16, N'자유게시판               ', N'isdi11', N'김석두', N'안녕하세요!', N'안녕하세요 가입했습니다.', CAST(N'2020-03-17T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (17, N'자유게시판               ', N'mong22', N'이몽이', N'반갑습니다~~', N'게시판 활동 많이 해주세요.... 너무 유령 게시판이에요~', CAST(N'2020-03-17T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (18, N'자유게시판               ', N'where11', N'최영훈', N'추천 받아 가입했습니다.', N'추천받고 가입했어용~ 반가워요', CAST(N'2020-03-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (19, N'자유게시판               ', N'dark11', N'닥템', N'유령 게시판이네요', N'사람이 너무 업네요~ 보기 예전같지 않네여......................', CAST(N'2020-03-02T00:00:00.000' AS DateTime), N'1111      ')
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (20, N'자유게시판               ', N'where11', N'언제', N'어디서어떻게 하려고', N'무엇을요 뭐든 해주세요 힘내세요 응원합니다~', CAST(N'2020-03-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (21, N'자유게시판               ', N'isdi11', N'김석두', N'안녕하세요!', N'안녕하세요 가입했습니다.', CAST(N'2020-03-17T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (22, N'자유게시판               ', N'mong22', N'이몽이', N'반갑습니다~~', N'게시판 활동 많이 해주세요.... 너무 유령 게시판이에요~', CAST(N'2020-03-17T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (23, N'자유게시판               ', N'where11', N'최영훈', N'추천 받아 가입했습니다.', N'추천받고 가입했어용~ 반가워요', CAST(N'2020-03-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (24, N'자유게시판               ', N'dark11', N'닥템', N'유령 게시판이네요', N'사람이 너무 업네요~ 보기 예전같지 않네여......................', CAST(N'2020-03-02T00:00:00.000' AS DateTime), N'1111      ')
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (25, N'자유게시판               ', N'where11', N'언제', N'어디서어떻게 하려고', N'무엇을요 뭐든 해주세요 힘내세요 응원합니다~', CAST(N'2020-03-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (28, N'자유게시판               ', N'dark11', N'이일자', N'출석체크입니다.', N'&lt;h1&gt;출석체크입니다.&lt;/h1&gt;', CAST(N'2020-04-01T15:10:00.590' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (29, N'자유게시판               ', N'dark11', N'이일자', N'테스트입니다.', N'&lt;h2 style="text-align:center;"&gt;테스트입니다.&lt;/h2&gt;', CAST(N'2020-04-01T15:16:42.780' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (33, N'자유게시판               ', N'dark11', N'이일자', N'테스트에요', N'테스트 입니다.', CAST(N'2020-04-01T15:27:34.830' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (34, N'자유게시판               ', N'dark11', N'이일자', N'테스트에요', N'ㅇㄴㅇㄴ', CAST(N'2020-04-01T15:29:00.560' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (37, N'자유게시판               ', N'dark11', N'이일자', N'안녕', N'인녀ㅑㅇ', CAST(N'2020-04-02T13:32:11.323' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (38, N'자유게시판               ', N'dark11', N'이일자', N'안녕', N'sss', CAST(N'2020-04-02T14:37:22.777' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (39, N'자유게시판               ', N'dark11', N'이일자', N'안녕하세요', N'0402테스트', CAST(N'2020-04-02T15:28:40.670' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (40, N'자유게시판               ', N'dark11', N'이일자', N'안녕하세요', N'0402테스트', CAST(N'2020-04-02T15:28:40.670' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (41, N'자유게시판               ', N'dark11', N'이일자', N'안녕하세요', N'dsdsds', CAST(N'2020-04-02T15:32:56.443' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (42, N'자유게시판               ', N'dark11', N'이일자', N'안녕하세요', N'dsdsds', CAST(N'2020-04-02T15:32:56.443' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (43, N'자유게시판               ', N'dark11', N'이일자', N'안녕', N'ds', CAST(N'2020-04-02T15:50:24.733' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (44, N'자유게시판               ', N'dark11', N'이일자', N'안녕', N'ds', CAST(N'2020-04-02T15:50:24.733' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (45, N'자유게시판               ', N'dark11', N'이일자', N'안녕하세요', N'테스트 0402ㅇㅇ', CAST(N'2020-04-02T16:09:53.630' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (46, N'자유게시판               ', N'dark11', N'이일자', N'안녕하세요', N'테스트 0402ㅇㅇ', CAST(N'2020-04-02T16:09:53.630' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (47, N'자유게시판               ', N'dark11', N'이일자', N'0413테스트입니다.', N'&lt;p&gt;&lt;span style="font-family:Gungsuh;"&gt;테스트입니다.&lt;/span&gt;&lt;/p&gt;&lt;h1&gt;&lt;span style="font-family:Gungsuh;"&gt;안녕하세요.&lt;/span&gt;&lt;/h1&gt;', CAST(N'2020-04-13T17:40:26.637' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (48, N'자유게시판               ', N'dark11', N'이일자', N'0413테스트입니다.', N'&lt;p&gt;&lt;span style="font-family:Gungsuh;"&gt;테스트입니다.&lt;/span&gt;&lt;/p&gt;&lt;h1&gt;&lt;span style="font-family:Gungsuh;"&gt;안녕하세요.&lt;/span&gt;&lt;/h1&gt;', CAST(N'2020-04-13T17:40:26.637' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (49, N'자유게시판               ', N'dark11', N'이일자', N'얼마일까요 0413', N'&lt;blockquote&gt;&lt;strong&gt;하하하하하 왜안되니&lt;/strong&gt;&lt;/blockquote&gt;', CAST(N'2020-04-13T18:04:30.000' AS DateTime), NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [category], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [writeDate], [mainBoardPwd]) VALUES (50, N'자유게시판               ', N'dark11', N'이일자', N'얼마일까요 0413', N'&lt;blockquote&gt;&lt;strong&gt;하하하하하 왜안되니&lt;/strong&gt;&lt;/blockquote&gt;', CAST(N'2020-04-13T18:04:30.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[mainBoard] OFF
INSERT [dbo].[UserInfor] ([userID], [userName], [userPwd], [userAddress], [userEmail], [userGrade]) VALUES (N'12312', N'이안녕', N'123', N'대구광역시 동구 효목동', N'kkjd@naver.com', N'FF')
INSERT [dbo].[UserInfor] ([userID], [userName], [userPwd], [userAddress], [userEmail], [userGrade]) VALUES (N'2dwd', N'김당', N'123', N'광주광역시 광산구 어룡동', N'exce@gmail.com', N'FF')
INSERT [dbo].[UserInfor] ([userID], [userName], [userPwd], [userAddress], [userEmail], [userGrade]) VALUES (N'chun11', N'오춘자', N'3333', N'경기도 고양시 덕양구 강매로 77-119(강매동)', N'chun11@naver.com', N'DD')
INSERT [dbo].[UserInfor] ([userID], [userName], [userPwd], [userAddress], [userEmail], [userGrade]) VALUES (N'dark11', N'이일자', N'2222', N'경기도 파주시 가나무로 93-5(금촌동, 송인주택)', N'dar222@naver.com', N'FF')
INSERT [dbo].[UserInfor] ([userID], [userName], [userPwd], [userAddress], [userEmail], [userGrade]) VALUES (N'dassd1', N'asdas', N'123', N'213', N'123', N'FF')
INSERT [dbo].[UserInfor] ([userID], [userName], [userPwd], [userAddress], [userEmail], [userGrade]) VALUES (N'dsa', N'이강모', N'123', N'서울 강남구 개포동 1163-8 (개포동)', N'232@naver.com', N'FF')
INSERT [dbo].[UserInfor] ([userID], [userName], [userPwd], [userAddress], [userEmail], [userGrade]) VALUES (N'imem', N'김이제', N'123', N'대구광역시 동구 신암동', N'dsajkl@naver.com', N'FF')
INSERT [dbo].[UserInfor] ([userID], [userName], [userPwd], [userAddress], [userEmail], [userGrade]) VALUES (N'isdi11', N'김이진', N'1111', N'서울특별시 마포구 고산16길 38-7(대흥동)', N'iidssar@daum.net', N'FF')
INSERT [dbo].[UserInfor] ([userID], [userName], [userPwd], [userAddress], [userEmail], [userGrade]) VALUES (N'lovela', N'박러브', N'123', N'경기 성남시 분당구 운중동 1033-3 (운중동)', N'lovelq@gmail.com', N'FF')
INSERT [dbo].[UserInfor] ([userID], [userName], [userPwd], [userAddress], [userEmail], [userGrade]) VALUES (N'mong22', N'이몽이', N'2222', N'부산광역시 서구 감천로 237(암남동)', N'monggg@gmail.com', N'FF')
INSERT [dbo].[UserInfor] ([userID], [userName], [userPwd], [userAddress], [userEmail], [userGrade]) VALUES (N'sjdk', N'김이', N'123', N'경기 성남시 분당구 정자동 153 (정자동, 분당중학교)', N'jkjk@naver.com', N'FF')
INSERT [dbo].[UserInfor] ([userID], [userName], [userPwd], [userAddress], [userEmail], [userGrade]) VALUES (N'where11', N'최영훈', N'5555', N'부산광역시 중구 용미길9번길 5-2(남포동1가)', N'chochoin@nate.com', N'BB')
ALTER TABLE [dbo].[mainBoard]  WITH CHECK ADD  CONSTRAINT [FK_mainBoard_User] FOREIGN KEY([userID])
REFERENCES [dbo].[UserInfor] ([userID])
GO
ALTER TABLE [dbo].[mainBoard] CHECK CONSTRAINT [FK_mainBoard_User]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetMainboard_PageCount]    Script Date: 2020-04-13 오후 6:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetMainboard_PageCount]
      @pageIndex INT = 1
      ,@pageSize INT
      ,@recordCount INT OUTPUT
AS
BEGIN
      SET NOCOUNT ON;
      SELECT ROW_NUMBER() OVER
      (
            ORDER BY writeDate desc, mainBoardNo desc
      )AS rowNumber
      ,mainBoardNo
      ,userID
      ,category
	  ,id_Name
	  ,mainBoardTitle
	  ,mainBoardContent
	  ,writeDate
	  ,mainBoardPwd
     INTO #Results
      FROM mainBoard
     
      SELECT @RecordCount = COUNT(*)
      FROM #Results
           
      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
     
      DROP TABLE #Results
END
GO
/****** Object:  StoredProcedure [dbo].[sp_MainBoard_CRUD]    Script Date: 2020-04-13 오후 6:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_MainBoard_CRUD]
(@mainBoardNo      int = null,
@userID	  nvarchar(30) = null,
@category      nchar(20) = null,
@id_Name   nvarchar(30) = null,
@mainBoardTitle    nvarchar(50) = null,
@mainBoardContent    nvarchar(300) = null,
@writeDate	datetime = null,
@StatementType NVARCHAR(20) = '')

as
BEGIN  
	IF @StatementType = 'Insert'  
        BEGIN  
            INSERT INTO mainBoard  
                        (    
                         userID,	  
                         category,     
                         id_Name,
                         mainBoardTitle,  
						 mainBoardContent,
						 writeDate)  
						   
            VALUES     (     
                         @userID,	  
                         @category,       
                         @id_Name, 
                         @mainBoardTitle,   
						 @mainBoardContent, 
          				 @writeDate) 
						SELECT @@IDENTITY
			END
  
      IF @StatementType = 'Select'  
        BEGIN  
            Select * from mainBoard Order by writeDate desc, mainBoardNo desc  
        END  
  
	  IF @StatementType = 'ViewAricle'  
        BEGIN  
            SELECT * FROM mainBoard WHERE category = @category AND mainBoardNo = @mainBoardNo
        END  
   
      IF @StatementType = 'Update'  
        BEGIN  
            UPDATE mainBoard
            SET            
                   userID	  		  =    @userID,	  
                   category     	  =    @category,       
				   id_Name 			  =    @id_Name, 
				   mainBoardTitle 	  =    @mainBoardTitle,  
				   mainBoardContent	  =    @mainBoardContent,
				   writeDate  		  =    @writeDate  
 		     
            WHERE  userID = @userID ANd mainBoardNo = @mainBoardNo
			SELECT @mainBoardNo
        END  
      ELSE IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM mainBoard  
            WHERE  userID = @userID ANd mainBoardNo = @mainBoardNo
        END    
END
GO
/****** Object:  StoredProcedure [dbo].[sp_userInfo_CRUD]    Script Date: 2020-04-13 오후 6:08:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_userInfo_CRUD]
(@userID      nvarchar(30),
@userName	  nvarchar(50),
@userPwd      nvarchar(20),
@userAddress   nvarchar(100),
@userEmail    nvarchar(50),
@userGrade    nvarchar(20),
@StatementType NVARCHAR(20) = '')

AS
BEGIN  
	IF @StatementType = 'Insert'  
        BEGIN  
            INSERT INTO UserInfor  
                        (userID,    
                         userName,	  
                         userPwd,     
                         userAddress,
                         userEmail,  
						 userGrade)  
						   
            VALUES     ( @userID,     
                         @userName,
                         @userPwd,      
                         @userAddress, 
                         @userEmail,   
						 @userGrade)   
        END  
  
      IF @StatementType = 'Select'  
        BEGIN  
            SELECT *  
            FROM   UserInfor  
        END  
  
      IF @StatementType = 'Update'  
        BEGIN  
            UPDATE UserInfor   
            SET         
                   userName	   = @userName,
                   userPwd     = @userPwd,  
                   userAddress = @userAddress,
				   userEmail   = @userEmail,  
				   userGrade   = @userGrade			     
            WHERE  userID = @userID  
        END  
      ELSE IF @StatementType = 'Delete'  
        BEGIN  
            DELETE FROM UserInfor  
            WHERE  userID = @userID  
        END    
END
GO
USE [master]
GO
ALTER DATABASE [test_pubs] SET  READ_WRITE 
GO
