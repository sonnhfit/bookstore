


CREATE DATABASE shopbansach

CREATE TABLE DanhMucLoaiSach(
	[maloaisach] [nchar](10) NOT NULL,
	[TenloaiSach] [nvarchar](50) NULL,
 primary key (maloaisach) 
) 
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/29/2019 15:50:41 ******/

CREATE TABLE TaiKhoan(
	[taikhoan] [nvarchar](50) NOT NULL,
	[matkhau] [nvarchar](50) NULL,
	[sodt] [nvarchar](13) NULL,
	[hoten] [nvarchar](50) NULL,
	[quyentruycap] [nvarchar](50) NULL,
 primary key (taikhoan)
) 
GO
select * from taikhoan where taikhoan='admin' and matkhau='1'
insert into TaiKhoan values('admin','1','01247894416','nghia','full')
select * from TaiKhoan
/****** Object:  Table [dbo].[khachhang]    Script Date: 11/29/2019 15:50:41 ******/

CREATE TABLE khachhang(
	[makh] [nchar](10) NOT NULL,
	[tenkh] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NULL,
	[sodidong] [nchar](12) NULL,
	[socodinh] [nchar](12) NULL,
	[thanhtoan] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[noidungyeucau] [nvarchar](max) NULL,
 primary key (makh)
) 
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/29/2019 15:50:41 ******/

CREATE TABLE HoaDon(
	[maDH] [nchar](10) NOT NULL,
	[makh] [nchar](10) NOT NULL,
	[tenkh] [nvarchar](50) NULL,
	[masach] [nchar](10) NULL,
	[tensach] [nvarchar](max) NULL,
	[soluong] [int] NULL,
	[giabia] [float] NULL,

) 
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 11/29/2019 15:50:41 ******/


/****** Object:  Table [dbo].[chitietsach]    Script Date: 11/29/2019 15:50:41 ******/

CREATE TABLE chitietsach(
	[maloaisach] [nchar](10) NOT NULL,
	 masach [nchar](10)not null, 
	[tensach] [nvarchar](max) NULL,
	[kichthuoc] [nvarchar](50) NULL,
	[sotrang] [int] NULL,
	[namsx] [date] NULL,
	[nhaxb] [nvarchar](50) NULL,
	[tinhtrang] [nvarchar](50) NULL,
	[giabia] [float] NULL,
	[khuyenmai] [nvarchar](max) NULL,
	[phantramKMai] [float] NULL,
	[gioithieusach] [nvarchar](max) NULL,
	[IMG] [nvarchar](max) NULL,

primary key (masach),
	
	
)

GO
CREATE TABLE donhang(
	maDH nchar(10)not null primary key ,
	makh [nchar](10),
	masach [nchar](10)not null, 
	soluong [int] NULL,
	
) 
GO

CREATE TABLE tintuc
(
	maTin nchar(10)not null primary key ,
	tieude [nvarchar](max),
	doidung [nvarchar](max), 
	anh [nvarchar](max),
	
) 


