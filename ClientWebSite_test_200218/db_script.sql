USE [master]d
GO
/****** Object:  Database [test_pubs]    Script Date: 2020-03-11 오후 5:56:56 ******/
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
/****** Object:  User [test_id_11]    Script Date: 2020-03-11 오후 5:56:56 ******/
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
/****** Object:  Table [dbo].[mainBoard]    Script Date: 2020-03-11 오후 5:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mainBoard](
	[mainBoardNo] [int] IDENTITY(1,1) NOT NULL,
	[userID] [nvarchar](30) NOT NULL,
	[id_Name] [nvarchar](30) NOT NULL,
	[mainBoardTitle] [nvarchar](50) NOT NULL,
	[mainBoardContent] [nvarchar](300) NULL,
	[mainBoardPwd] [nchar](10) NULL,
 CONSTRAINT [PK_mainBoard_1] PRIMARY KEY CLUSTERED 
(
	[mainBoardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfor]    Script Date: 2020-03-11 오후 5:56:56 ******/
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

INSERT [dbo].[mainBoard] ([mainBoardNo], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [mainBoardPwd]) VALUES (1, N'isdi11', N'김석두', N'안녕하세요!', N'안녕하세요 가입했습니다.', NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [mainBoardPwd]) VALUES (2, N'mong22', N'이몽룡', N'반갑습니다~~', N'게시판 활동 많이 해주세요.... 너무 유령 게시판이에요~', NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [mainBoardPwd]) VALUES (3, N'chun11', N'성춘향', N'추천 받아 가입했습니다.', N'추천받고 가입했어용~ 반가워요', NULL)
INSERT [dbo].[mainBoard] ([mainBoardNo], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [mainBoardPwd]) VALUES (4, N'dark11', N'닥템', N'유령 게시판이네요', N'사람이 너무 업네요~ 보기 예전같지 않네여......................', N'1111      ')
INSERT [dbo].[mainBoard] ([mainBoardNo], [userID], [id_Name], [mainBoardTitle], [mainBoardContent], [mainBoardPwd]) VALUES (5, N'where11', N'언제', N'어디서어떻게 하려고', N'무엇을요 뭐든 해주세요 힘내세요 응원합니다~', NULL)
SET IDENTITY_INSERT [dbo].[mainBoard] OFF
INSERT [dbo].[UserInfor] ([userID], [userName], [userPwd], [userAddress], [userEmail], [userGrade]) VALUES (N'chun11', N'오춘자', N'3333', N'경기도 고양시 덕양구 강매로 77-119(강매동)', N'chun11@naver.com', N'DD')
INSERT [dbo].[UserInfor] ([userID], [userName], [userPwd], [userAddress], [userEmail], [userGrade]) VALUES (N'dark11', N'이일자', N'2222', N'경기도 파주시 가나무로 93-5(금촌동, 송인주택)', N'dar222@naver.com', N'FF')
INSERT [dbo].[UserInfor] ([userID], [userName], [userPwd], [userAddress], [userEmail], [userGrade]) VALUES (N'isdi11', N'김이진', N'1111', N'서울특별시 마포구 고산16길 38-7(대흥동)', N'iidssar@daum.net', N'FF')
INSERT [dbo].[UserInfor] ([userID], [userName], [userPwd], [userAddress], [userEmail], [userGrade]) VALUES (N'mong22', N'이몽이', N'2222', N'부산광역시 서구 감천로 237(암남동)', N'monggg@gmail.com', N'FF')
INSERT [dbo].[UserInfor] ([userID], [userName], [userPwd], [userAddress], [userEmail], [userGrade]) VALUES (N'where11', N'최영훈', N'5555', N'부산광역시 중구 용미길9번길 5-2(남포동1가)', N'chochoin@nate.com', N'BB')
ALTER TABLE [dbo].[mainBoard]  WITH CHECK ADD  CONSTRAINT [FK_mainBoard_User] FOREIGN KEY([userID])
REFERENCES [dbo].[UserInfor] ([userID])
GO
ALTER TABLE [dbo].[mainBoard] CHECK CONSTRAINT [FK_mainBoard_User]
GO
USE [master]
GO
ALTER DATABASE [test_pubs] SET  READ_WRITE 
GO


CREATE PROCEDURE pro_userInfo_CRUD
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