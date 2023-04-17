create database quanlydondathang;
-- drop database quanlydondathang;
use quanlydondathang;
create table KhachHang
(
MaKH int				AUTO_INCREMENT	NOT NULL	PRIMARY KEY,
TenKH varchar(30)		NOT NULL,
DiaChi varchar(50)		NOT NULL,
DienThoai char(10)		NOT NULL
);
create table NguoiDat
(
id int					AUTO_INCREMENT	NOT NULL	PRIMARY KEY,
name varchar(30)		NOT NULL,
MaKH int,
FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH) 
);
create table SanPham
(
MaSP int				AUTO_INCREMENT	NOT NULL	PRIMARY KEY,
TenSP varchar(20)		NOT NULL,
DonVi varchar(10)		DEFAULT"Don vi",
MoTa varchar(50)
);
create table DatHang
(
SoDH int 				AUTO_INCREMENT	NOT NULL	PRIMARY KEY,
NgayDat date			NOT NULL,
SoLuong int				NOT NULL		CHECK (SoLuong > 0),
MaSp int,
id int,
FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP),
FOREIGN KEY (id) REFERENCES NguoiDat(id)
);
create table NguoiGiao
(
MaNG int				AUTO_INCREMENT	NOT NULL	PRIMARY KEY,
name varchar(30)		NOT NULL
);
create table NoiGiao
(
MaDDG int				AUTO_INCREMENT	NOT NULL	PRIMARY KEY,
name varchar(50)		NOT NULL
);
create table NguoiNhan
(
MaNN int 				AUTO_INCREMENT	NOT NULL	PRIMARY KEY,
name varchar(30)		NOT NULL,
MaKH int,
FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH)
);
create table GiaoHang
(
SoDG int				AUTO_INCREMENT	NOT NULL	PRIMARY KEY,
NgayGiao date			NOT NULL,
SoLuong	int				NOT NULL		CHECK (SoLuong > 0),
DonGia	int				NOT NULL		CHECK (DonGia > 0),
MaSP int,
MaNN int,
MaDDG int,
MaNG int,
FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP),
FOREIGN KEY (MaNN) REFERENCES NguoiNhan(MaNN),
FOREIGN KEY (MaDDG) REFERENCES NoiGiao(MaDDG),
FOREIGN KEY (MaNG) REFERENCES NguoiGiao(MaNG)
);
