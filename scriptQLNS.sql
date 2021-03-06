USE [master]
GO
/****** Object:  Database [QuanLyNhanSu1]    Script Date: 11/23/2016 9:06:34 AM ******/
CREATE DATABASE [QuanLyNhanSu1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyNhanSu1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QuanLyNhanSu1.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyNhanSu1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QuanLyNhanSu1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyNhanSu1] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyNhanSu1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyNhanSu1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyNhanSu1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyNhanSu1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyNhanSu1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyNhanSu1] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyNhanSu1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyNhanSu1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyNhanSu1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyNhanSu1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyNhanSu1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyNhanSu1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyNhanSu1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyNhanSu1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyNhanSu1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyNhanSu1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyNhanSu1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyNhanSu1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyNhanSu1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyNhanSu1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyNhanSu1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyNhanSu1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyNhanSu1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyNhanSu1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyNhanSu1] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyNhanSu1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyNhanSu1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyNhanSu1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyNhanSu1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyNhanSu1] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QuanLyNhanSu1]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/23/2016 9:06:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[IDNhanVien] [int] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[IDPhong] [int] NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[Luong] [bigint] NULL,
	[QueQuan] [nvarchar](100) NULL,
	[ChucVu] [nvarchar](100) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[IDNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 11/23/2016 9:06:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[IDPhong] [int] NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
	[IDTruongPhong] [int] NULL,
 CONSTRAINT [PK_PhongBan] PRIMARY KEY CLUSTERED 
(
	[IDPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/23/2016 9:06:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[IDTaiKhoan] [int] NOT NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[IDTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[NhanVien] ([IDNhanVien], [HoTen], [IDPhong], [NgaySinh], [GioiTinh], [Luong], [QueQuan], [ChucVu]) VALUES (1, N'Lê Hải Sơn', 2, CAST(N'1995-09-15' AS Date), N'Nam', 7500000, N'Hưng Yên', N'Quản lí')
INSERT [dbo].[NhanVien] ([IDNhanVien], [HoTen], [IDPhong], [NgaySinh], [GioiTinh], [Luong], [QueQuan], [ChucVu]) VALUES (2, N'Lê Trung Hiếu', 1, CAST(N'1995-05-19' AS Date), N'Nam', 7500000, N'Hưng Yên', N'Trợ lí')
INSERT [dbo].[NhanVien] ([IDNhanVien], [HoTen], [IDPhong], [NgaySinh], [GioiTinh], [Luong], [QueQuan], [ChucVu]) VALUES (3, N'Hồ Sĩ Việt', 2, CAST(N'1995-06-07' AS Date), N'Nam', 7000000, N'Nghệ An', N'Nhân Viên')
INSERT [dbo].[NhanVien] ([IDNhanVien], [HoTen], [IDPhong], [NgaySinh], [GioiTinh], [Luong], [QueQuan], [ChucVu]) VALUES (4, N'Lê Thị Trang', 2, CAST(N'1993-10-25' AS Date), N'Nữ', 8000000, N'Kiên Giang', N'Thủ Kho')
INSERT [dbo].[NhanVien] ([IDNhanVien], [HoTen], [IDPhong], [NgaySinh], [GioiTinh], [Luong], [QueQuan], [ChucVu]) VALUES (5, N'Trận Trọng Luật', 3, CAST(N'1994-10-22' AS Date), N'Nam', 1000000, N'Hồ Văn Vân', N'Nhân Viên')
INSERT [dbo].[PhongBan] ([IDPhong], [TenPhong], [IDTruongPhong]) VALUES (1, N'Hậu Cần', 2)
INSERT [dbo].[PhongBan] ([IDPhong], [TenPhong], [IDTruongPhong]) VALUES (2, N'Kĩ Thuật', 1)
INSERT [dbo].[PhongBan] ([IDPhong], [TenPhong], [IDTruongPhong]) VALUES (3, N'Chính trị', NULL)
INSERT [dbo].[PhongBan] ([IDPhong], [TenPhong], [IDTruongPhong]) VALUES (4, N'Hành chính', NULL)
INSERT [dbo].[PhongBan] ([IDPhong], [TenPhong], [IDTruongPhong]) VALUES (5, N'Tác chiến', NULL)
INSERT [dbo].[PhongBan] ([IDPhong], [TenPhong], [IDTruongPhong]) VALUES (6, N'Xe Quân Sự', NULL)
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau]) VALUES (1, N'lehaisonmath', N'lehaison')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau]) VALUES (2, N'hosiviet', N'vietcon')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau]) VALUES (3, N'nguyenquoctuan', N'quoctuan')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau]) VALUES (4, N'admin', N'admin')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau]) VALUES (5, N'tranvanhung', N'hung')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau]) VALUES (6, N'lehailong', N'lehailong')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau]) VALUES (7, N'tranvanquyet', N'vanquyet')
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_PhongBan] FOREIGN KEY([IDPhong])
REFERENCES [dbo].[PhongBan] ([IDPhong])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_PhongBan]
GO
USE [master]
GO
ALTER DATABASE [QuanLyNhanSu1] SET  READ_WRITE 
GO
