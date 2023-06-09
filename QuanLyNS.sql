USE [QuanLyNS]
GO
/****** Object:  Table [dbo].[TblBoPhan]    Script Date: 3/21/2023 1:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblBoPhan](
	[mabophan] [nchar](10) NOT NULL,
	[tenbophan] [nvarchar](50) NULL,
	[ngaythanhlap] [datetime] NULL,
	[ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblBoPhan] PRIMARY KEY CLUSTERED 
(
	[mabophan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCongHopDong]    Script Date: 3/21/2023 1:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCongHopDong](
	[tenbophan] [nvarchar](50) NULL,
	[tenphong] [nvarchar](50) NULL,
	[manvhd] [nchar](10) NOT NULL,
	[luonghdong] [int] NULL,
	[thang] [int] NULL,
	[nam] [int] NULL,
	[songaycong] [int] NULL,
	[songaynghi] [int] NULL,
	[sogiolamthem] [int] NULL,
	[luong] [float] NULL,
	[ghichu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCongNhanVienCoBan]    Script Date: 3/21/2023 1:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCongNhanVienCoBan](
	[tenphong] [nchar](10) NULL,
	[hoten] [nvarchar](50) NULL,
	[maluong] [nchar](10) NULL,
	[lcb] [int] NULL,
	[pcchucvu] [int] NULL,
	[pcapkhac] [int] NULL,
	[thuong] [nvarchar](50) NULL,
	[kyluat] [nvarchar](50) NULL,
	[thang] [nchar](10) NULL,
	[nam] [nchar](10) NULL,
	[songaycong] [int] NULL,
	[songaynghi] [int] NULL,
	[sogiolamthem] [int] NULL,
	[luong] [int] NULL,
	[ghichu] [nvarchar](50) NULL,
	[manv] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblDanhGiaNhanVien]    Script Date: 3/21/2023 1:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDanhGiaNhanVien](
	[manv] [nvarchar](50) NULL,
	[hoten] [nvarchar](50) NULL,
	[danhgia] [nvarchar](50) NULL,
	[ghichu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblLuong]    Script Date: 3/21/2023 1:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblLuong](
	[maluong] [nchar](10) NOT NULL,
	[lcb] [int] NULL,
	[phucapchuvu] [int] NULL,
	[ngaynhap] [datetime] NULL,
	[lcbmoi] [int] NULL,
	[ngaysua] [datetime] NULL,
	[lydo] [nvarchar](50) NULL,
	[pcchucvumoi] [int] NULL,
	[ngaysuapc] [datetime] NULL,
	[ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblLuong] PRIMARY KEY CLUSTERED 
(
	[maluong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblNVHopDong]    Script Date: 3/21/2023 1:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblNVHopDong](
	[manhanvienhd] [nchar](10) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[maphong] [nchar](10) NULL,
	[ngaysinh] [datetime] NULL,
	[gioitinh] [nchar](10) NULL,
	[diachi] [nvarchar](50) NULL,
	[hocvan] [nvarchar](20) NULL,
	[hocham] [nvarchar](20) NULL,
	[ngayhd] [datetime] NULL,
	[thanghd] [nvarchar](50) NULL,
	[ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblNVHopDong] PRIMARY KEY CLUSTERED 
(
	[manhanvienhd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblNVThoiViec]    Script Date: 3/21/2023 1:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblNVThoiViec](
	[hoten] [nvarchar](50) NULL,
	[cccd] [nvarchar](50) NOT NULL,
	[ngaythoiviec] [datetime] NULL,
	[lydo] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblNVThoiViec] PRIMARY KEY CLUSTERED 
(
	[cccd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblPhongBan]    Script Date: 3/21/2023 1:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblPhongBan](
	[maphongban] [nchar](10) NOT NULL,
	[mabophan] [nchar](10) NULL,
	[tenphong] [nvarchar](50) NULL,
	[ngaythanhlap] [datetime] NULL,
	[ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblPhongBan] PRIMARY KEY CLUSTERED 
(
	[maphongban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSoBH]    Script Date: 3/21/2023 1:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSoBH](
	[manv] [nvarchar](50) NULL,
	[maluong] [nchar](10) NULL,
	[masobh] [nchar](10) NOT NULL,
	[ngaycap] [datetime] NULL,
	[noicap] [nvarchar](50) NULL,
	[ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblSoBH] PRIMARY KEY CLUSTERED 
(
	[masobh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTangLuong]    Script Date: 3/21/2023 1:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTangLuong](
	[manv] [nvarchar](50) NULL,
	[hoten] [nvarchar](50) NULL,
	[gioitinh] [nchar](10) NULL,
	[chucvu] [nvarchar](50) NULL,
	[maluongcu] [nchar](10) NULL,
	[maluongmoi] [nchar](10) NULL,
	[ngaytang] [datetime] NULL,
	[lydo] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblThaiSan]    Script Date: 3/21/2023 1:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblThaiSan](
	[maphong] [nchar](10) NOT NULL,
	[mabophan] [nchar](10) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[ngaysinh] [datetime] NULL,
	[ngayvesom] [datetime] NULL,
	[ngaynghisinh] [datetime] NULL,
	[ngaytrollailam] [datetime] NULL,
	[trocap] [int] NULL,
	[ghichu] [nvarchar](50) NULL,
	[manv] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTTCaNhan]    Script Date: 3/21/2023 1:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTTCaNhan](
	[hoten] [nvarchar](50) NULL,
	[noisinh] [nvarchar](50) NULL,
	[nguyenquan] [nvarchar](50) NULL,
	[dcthuongchu] [nvarchar](50) NULL,
	[dctamchu] [nvarchar](50) NULL,
	[sdt] [nvarchar](20) NULL,
	[dantoc] [nvarchar](20) NULL,
	[tongiao] [nvarchar](20) NULL,
	[quoctich] [nvarchar](20) NULL,
	[hocvan] [nvarchar](20) NULL,
	[ghichu] [nvarchar](50) NULL,
	[manv] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTTNVCoBan]    Script Date: 3/21/2023 1:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTTNVCoBan](
	[mabophan] [nchar](10) NULL,
	[maphong] [nchar](10) NULL,
	[manv] [nvarchar](50) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[maluong] [nvarchar](50) NULL,
	[ngaysinh] [date] NULL,
	[gioitinh] [nchar](10) NULL,
	[tthonnhan] [nchar](10) NULL,
	[cccd] [nchar](20) NULL,
	[noicap] [nvarchar](50) NULL,
	[chucvu] [nvarchar](50) NULL,
	[loaihd] [nvarchar](50) NULL,
	[thoigian] [nchar](10) NULL,
	[ngayky] [date] NULL,
	[ngayhethan] [date] NULL,
	[ngach] [nchar](10) NULL,
	[dangordoanvien] [nchar](10) NULL,
	[ngayvao] [date] NULL,
	[thuocchibo] [nvarchar](50) NULL,
	[ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblTTNVCoBan] PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbuser]    Script Date: 3/21/2023 1:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbuser](
	[tbuser] [nchar](50) NULL,
	[pass] [nchar](20) NULL,
	[ten] [nchar](50) NULL,
	[quyen] [nchar](10) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TblCongHopDong]  WITH CHECK ADD  CONSTRAINT [FK_TblCongHopDong_TblNVHopDong] FOREIGN KEY([manvhd])
REFERENCES [dbo].[TblNVHopDong] ([manhanvienhd])
GO
ALTER TABLE [dbo].[TblCongHopDong] CHECK CONSTRAINT [FK_TblCongHopDong_TblNVHopDong]
GO
ALTER TABLE [dbo].[TblCongNhanVienCoBan]  WITH CHECK ADD  CONSTRAINT [FK_TblCongNhanVienCoBan_TblTTNVCoBan] FOREIGN KEY([hoten])
REFERENCES [dbo].[TblTTNVCoBan] ([manv])
GO
ALTER TABLE [dbo].[TblCongNhanVienCoBan] CHECK CONSTRAINT [FK_TblCongNhanVienCoBan_TblTTNVCoBan]
GO
ALTER TABLE [dbo].[TblDanhGiaNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_TblDanhGiaNhanVien_TblTTNVCoBan] FOREIGN KEY([manv])
REFERENCES [dbo].[TblTTNVCoBan] ([manv])
GO
ALTER TABLE [dbo].[TblDanhGiaNhanVien] CHECK CONSTRAINT [FK_TblDanhGiaNhanVien_TblTTNVCoBan]
GO
ALTER TABLE [dbo].[TblNVHopDong]  WITH CHECK ADD  CONSTRAINT [FK_TblNVHopDong_TblPhongBan] FOREIGN KEY([maphong])
REFERENCES [dbo].[TblPhongBan] ([maphongban])
GO
ALTER TABLE [dbo].[TblNVHopDong] CHECK CONSTRAINT [FK_TblNVHopDong_TblPhongBan]
GO
ALTER TABLE [dbo].[TblPhongBan]  WITH CHECK ADD  CONSTRAINT [FK_TblPhongBan_TblBoPhan] FOREIGN KEY([maphongban])
REFERENCES [dbo].[TblBoPhan] ([mabophan])
GO
ALTER TABLE [dbo].[TblPhongBan] CHECK CONSTRAINT [FK_TblPhongBan_TblBoPhan]
GO
ALTER TABLE [dbo].[TblSoBH]  WITH CHECK ADD  CONSTRAINT [FK_TblSoBH_TblLuong] FOREIGN KEY([maluong])
REFERENCES [dbo].[TblLuong] ([maluong])
GO
ALTER TABLE [dbo].[TblSoBH] CHECK CONSTRAINT [FK_TblSoBH_TblLuong]
GO
ALTER TABLE [dbo].[TblSoBH]  WITH CHECK ADD  CONSTRAINT [FK_TblSoBH_TblTTNVCoBan] FOREIGN KEY([manv])
REFERENCES [dbo].[TblTTNVCoBan] ([manv])
GO
ALTER TABLE [dbo].[TblSoBH] CHECK CONSTRAINT [FK_TblSoBH_TblTTNVCoBan]
GO
ALTER TABLE [dbo].[TblTangLuong]  WITH CHECK ADD  CONSTRAINT [FK_TblTangLuong_TblTTNVCoBan] FOREIGN KEY([manv])
REFERENCES [dbo].[TblTTNVCoBan] ([manv])
GO
ALTER TABLE [dbo].[TblTangLuong] CHECK CONSTRAINT [FK_TblTangLuong_TblTTNVCoBan]
GO
ALTER TABLE [dbo].[TblThaiSan]  WITH CHECK ADD  CONSTRAINT [FK_TblThaiSan_TblTTNVCoBan] FOREIGN KEY([hoten])
REFERENCES [dbo].[TblTTNVCoBan] ([manv])
GO
ALTER TABLE [dbo].[TblThaiSan] CHECK CONSTRAINT [FK_TblThaiSan_TblTTNVCoBan]
GO
ALTER TABLE [dbo].[TblTTCaNhan]  WITH CHECK ADD  CONSTRAINT [FK_TblTTCaNhan_TblTTNVCoBan] FOREIGN KEY([manv])
REFERENCES [dbo].[TblTTNVCoBan] ([manv])
GO
ALTER TABLE [dbo].[TblTTCaNhan] CHECK CONSTRAINT [FK_TblTTCaNhan_TblTTNVCoBan]
GO
ALTER TABLE [dbo].[TblTTNVCoBan]  WITH CHECK ADD  CONSTRAINT [FK_TblTTNVCoBan_TblPhongBan] FOREIGN KEY([mabophan])
REFERENCES [dbo].[TblPhongBan] ([maphongban])
GO
ALTER TABLE [dbo].[TblTTNVCoBan] CHECK CONSTRAINT [FK_TblTTNVCoBan_TblPhongBan]
GO
