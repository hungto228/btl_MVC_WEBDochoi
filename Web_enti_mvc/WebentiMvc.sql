use Webdochoi 

create table NguoiDung
(
	MaUser varchar(10) primary key ,
	TenUser varchar(100) not null,
	MkUser varchar(100)	not null,
	ChucDanh varchar(100)
)

INSERT INTO NguoiDung(MaUser, TenUser, MkUser,ChucDanh) VALUES
('1', N'admin', N'admin',N'Admin'),
('2', N'hungto228', N'hungto228',N'Khách hàng'),
('3', N'hieuhieu', N'hieuhieu',N'Khách hàng'),
('4', N'daidai', N'daidai',N'Khách hàng')

select *from NguoiDung
CREATE TABLE LoaiHang (
MaLoai varchar(10)  PRIMARY KEY,
TenLoai nvarchar(50) NOT NULL,
GhiChu varchar(200) NOT NULL)

INSERT INTO LoaiHang (MaLoai, TenLoai, GhiChu) VALUES
('LH1', N'Nhân vật', ''),
('LH2', N'Phụ kiện', ''),
('LH3', N'NENDOROID', ''),
('LH4', N'Trang phục', ''),
('LH5', N'Vật dụng khác', '')


SELECT * FROM LoaiHang
DROP TABLE SanPham
DELETE FROM SanPham



create table SanPham(MaSP nvarchar(10) primary key, TenSP nvarchar(100), 
Mota nvarchar(200), SoLuong int, HinhSP nvarchar(500),DonGia int, 
MaLoai varchar(10) foreign key(MaLoai) references LoaiHang (MaLoai))
--Nhân vật

select *from SanPham

INSERT INTO SanPham  (MaSP,TenSP,Mota,SoLuong,HinhSP,DonGia,MaLoai) VALUES('SP01',N'Luffy Gear 4 – Đế tròn',N'Nhân vật: Monkey D. Luffy
 Anime/Manga: One Piece
 Cao khoảng 28cm
 Nhựa PVC
 Nặng 1.7kg
 Kích thước hộp: 24x23x31cm',20,
'luffy.jpg','200000'
,'LH1');
INSERT INTO SanPham (MaSP,TenSP,Mota,SoLuong,HinhSP,DonGia,MaLoai) VALUES('SP02',N'Super Saiyan Broly 2020',N'Nhân vật: Broly
Anime/Manga: Dragon Ball – 7 Viên Ngọc Rồng
Cao khoảng 19cm
Nhựa PVC
Nặng khoảng 0.5kg
Kích thước hộp: 15x10x20cm',40,
'broly1.jpg','799000',
'LH1');
INSERT INTO SanPham (MaSP,TenSP,Mota,SoLuong,HinhSP,DonGia,MaLoai) VALUES('SP03',N'Charlotte Katakuri 18cm – POP'
,N'Nhân vật: Charlotte Katakuri
 Anime/Manga: One Piece
 Cao khoảng 18cm
 Nhựa PVC
 Nặng kg
 Kích thước hộp: 29x16x23cm',40,
'katakuri2.jpg','699000',
'LH1');
-- INSERT INTO SanPham (MaSP,MaLoai,TenSP,HinhSP,SoLuong,SoLuongCon,Mota) VALUES('SP04','LH2',N'Charlotte Katakuri 18cm – POP','jpg',40,10,N' cm');
--Phụ kiện
 INSERT INTO SanPham (MaSP,TenSP,Mota,SoLuong,HinhSP,DonGia,MaLoai) VALUES('SP04',N'Giày thể thao Adidas Yung 1 Frieza', N'Adidas Yung x Dragon Ball
Giày nhẹ, êm chân, kiểu dáng thể thao, cá tính. Size giày: 37 1/3 | 38 | 39 1/3 | 40 | 41 1/3 | 42 | 43 1/3 | 44',10,
 'GiayAdidas3.jpg','1160000','LH2'
);
 INSERT INTO SanPham (MaSP,TenSP,Mota,SoLuong,HinhSP,DonGia,MaLoai) VALUES('SP05',N'Kiếm Gỗ Law Dây Đỏ Nâu 1.2m', N'Anime/Manga: One Piece
Kích thước: Dài 1,2m
Chất liệu: Vỏ, cán, lưỡi đều bằng GỖ',30,
 'https://takishop.vn/wp-content/uploads/2019/03/PK012-Ki%E1%BA%BFm-Law-D%C3%A2y-%C4%90%E1%BB%8F-N%C3%A2u-1.2m-400x400.jpg','100000','LH2'
);
 INSERT INTO SanPham (MaSP,TenSP,Mota,SoLuong,HinhSP,DonGia,MaLoai) VALUES('SP06',N'Phi Tiêu Nhựa Kunai Naruto Bộ 3 Cây', N'Anime/Manga: Naruto Shippuden
Dài 13cm
Chất liệu nhựa ABS
Độ tuổi phù hợp: 15+ Nặng 0.1kg
Kích thước hộp: 8.8×15.5cm',100,
 'phitieu.jpg'
, '80000','LH2');

--NENDOROID
-- INSERT INTO SanPham (MaSP,MaLoai,TenSP,HinhSP,SoLuong,SoLuongCon,Mota) VALUES('SP07','LH3',N'Charlotte Katakuri 18cm – POP','jpg',40,10,N' cm');
INSERT INTO SanPham (MaSP,TenSP,Mota,SoLuong,HinhSP,DonGia,MaLoai) VALUES('SP07',N'Mô hình nendoroid: Nezuko Kamado',N'Nhân vật: Nezuko Kamado
 Anime/Manga: Kimetsu No Yaiba
 Cao khoảng 10cm
 Nhựa PVC
 Nặng khoảng 0.3kg
 Kích thước hộp: 18×6.5x21cm',180,
'nezuko5.jpg',
'60000','LH3');
INSERT INTO SanPham (MaSP,TenSP,Mota,SoLuong,HinhSP,DonGia,MaLoai) VALUES('SP08',N'Mô hình nendoroid: Jotaro Kujo ',N'Nhân vật: Jotaro Kujo
Anime/Manga: JoJo’s Bizarre Adventure: Stardust Crusaders
Cao khoảng 10cm
Nhựa PVC
Nặng khoảng 0.3kg
Kích thước hộp: 18×6.5x21cm',20,
'jotaro6.jpg','70000'
,'LH3');
INSERT INTO SanPham (MaSP,TenSP,Mota,SoLuong,HinhSP,DonGia,MaLoai) VALUES('SP09',N'Mô hình nendoroid: Lancer/Jeanne d’Arc Alter Santa Lily',N'Nhân vật: Lancer/Jeanne d’Arc Alter
 Anime/Manga: Fate/Grand Order
 Cao khoảng 10cm
 Nhựa PVC
 Nặng 0.3kg
 Kích thước hộp: 17.5x8x21cm',30,
'eanne7.jpg','100000'
,'LH3');
--Trang phục
INSERT INTO SanPham (MaSP,TenSP,Mota,SoLuong,HinhSP,DonGia,MaLoai) VALUES('SP10',N'Bộ Cosplay Đầm Emilia Trắng',N' Vải kate
Một bộ gồm: Áo, váy, 2 vớ chân dài, hoa trắng cài tóc, 2 vành tai elf giả, dây nơ tóc tím, 2 kẹp tăm
Size: M, L',10,
'Emilia8.jpg','1200000'
 ,'LH4');
INSERT INTO SanPham (MaSP,TenSP,Mota,SoLuong,HinhSP,DonGia,MaLoai) VALUES('SP11',N'Bộ Cosplay Son Goku – Chữ Quy',N'Vải kate, logo in.
Một bộ gồm: Áo, quần, dây đai, 2 băng tay.
Size: XXS, XS, S, M, L, XL',20,
'Goku9.jpg','1400000'
 ,'LH4');
INSERT INTO SanPham (MaSP,TenSP,Mota,SoLuong,HinhSP,DonGia,MaLoai) VALUES('SP12',N'Bộ cosplay Nữ cảnh sát xanh',
N'Một bộ gồm 4 món: Áo sơ mi xanh, váy ngắn xanh đen, cà vạt, nón.
Chất liệu vải kate.
Free size dưới 52kg',17,
'Nu19.jpg','800000'
,'LH4');
--INSERT INTO SanPham (MaSP,MaLoai,TenSP,HinhSP,SoLuong,SoLuongCon,Mota) VALUES('SP13','LH4',N'Charlotte Katakuri 18cm – POP','jpg',40,10,N' cm');

SELECT * FROM SanPham
DROP TABLE SanPham
DELETE FROM SanPham



