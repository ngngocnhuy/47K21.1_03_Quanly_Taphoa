create database TAPHOA
go

use TAPHOA
go

go
create table LOAIHANG
(
	MaLH int,
	Tenloaihang nvarchar(50),
	primary key (MaLH)
)

go
create table HANG
(
	Mahang varchar(10),
	Tenhang nvarchar(50),
	Gianhap numeric(15,0),
	Giaban numeric(15,0),
	Donvi nvarchar(50),
	MaLH int,
	primary key (Mahang),
	foreign key (MaLH) references LOAIHANG
)

go
create table CHUQUAN
(
	MaCQ varchar(10),
	TenCQ nvarchar(50),
	DChi_CQ nvarchar(100),
	SDT_CQ varchar(20),
	primary key (MaCQ)
)

create table NHACUNGCAP
(
	MaNCC varchar(10),
	TenNCC nvarchar(50),
	DChiban nvarchar(100),
	SDT_NCC varchar(20),
	STK char(20),
	primary key (MaNCC)
)


create table NGUOIMUAHANG
(
	MaNMH varchar(10),
	TenNMH nvarchar(50),
	DChi nvarchar(100),
	SDT varchar(20),
	primary key (MaNMH)
)

create table BAN
(
	MaBH varchar(10),
	Ngayban date,
	TGban time,
	Tongcong numeric(15,0),
	MaCQ varchar(10),
	MaNMH varchar(10),
	primary key (MaBH),
	foreign key (MaCQ) references CHUQUAN,
	foreign key (MaNMH) references NGUOIMUAHANG
)

create table DONBANCT
(
	MaBH varchar(10),
	Mahang varchar(10),
	Soluong int,
	Thanhtien numeric(15,0),
	foreign key (MaBH) references BAN,
	foreign key (Mahang) references HANG
)

go
create table NHAP
(
	MaNH varchar(10),
	CK int,
	Ngaynhap date,
	Tongcong numeric(15,0),
	MaCQ varchar(10),
	MaNCC varchar(10),
	primary key (MaNH),
	foreign key (MaCQ) references CHUQUAN,
	foreign key (MaNCC) references NHACUNGCAP
)

create table NHAPCT
(
	MaNH varchar(10),
	Mahang varchar(10),
	Soluong int,
	Thanhtien numeric(15,0),
	foreign key (MaNH) references NHAP,
	foreign key (Mahang) references HANG
)

go
insert into LOAIHANG values(1, N'Thực phẩm khô')
insert into LOAIHANG values(2, N'Đồ uống')
insert into LOAIHANG values(3, N'Gia vị')
insert into LOAIHANG values(4, N'Lương thực')
insert into LOAIHANG values(5, N'Mỹ phẩm')
insert into LOAIHANG values(6, N'Hoá phẩm')
insert into LOAIHANG values(7, N'Đồ dùng học tập')

go
insert into HANG values ('TPK1', N'Mì gói Hảo Hảo',90000, 96000, N'Thùng', 1)
insert into HANG values ('TPK2', N'Cháo gói Gấu Đỏ',3500, 5000, N'Gói', 1)
insert into HANG values ('TPK3', N'Phở Cung Đình',8000, 10000, N'Gói', 1)
insert into HANG values ('TPK4', N'Mì SiuKay',10000, 13000, N'Gói', 1)
insert into HANG values ('TPK5', N'Mì Lẩu Thái',7000, 9000, N'Gói', 1)
insert into HANG values ('DU1', N'Nước ngọt Cocacola 1,5 lít',15000, 18000, N'Chai', 2)
insert into HANG values ('DU2', N'Bia Huda',245000, 250000,N'Thùng',2)
insert into HANG values ('DU3', N'Sữa Vinamilk có đường 180ml',27000, 30000, N'Lốc', 2)
insert into HANG values ('DU4', N'Sữa Vinamilk không đường 180ml',25000, 28000, N'Lốc', 2)
insert into HANG values ('DU5', N'Sữa Vinamilk ít đường 180ml',25000, 28000, N'Lốc', 2)
insert into HANG values ('GV1', N'Dầu ăn Simply 1 lít',52000, 55000, N'Chai', 3)
insert into HANG values ('GV2', N'Nước mắm Nam Ngư 900ml',44000, 48000, N'Chai', 3)
insert into HANG values ('GV3', N'Tương ớt Chinsu 0,5kg',20000, 23000, N'Bình', 3)
insert into HANG values ('GV4', N'Xì dầu Chinsu',20000, 25000, N'Chai', 3)
insert into HANG values ('GV5', N'Xì dầu Tam Thái Tử',12000, 15000, N'Chai', 3)
insert into HANG values ('LT1', N'Bột mì Meizan 1kg',32000, 35000, N'Gói', 4)
insert into HANG values ('LT2', N'Gạo Cỏ May 25kg',382000,390000, 'Bao', 4)
insert into HANG values ('LT3', N'Gạo Tư Hoảnh 25kg',390000,410000, 'Bao', 4)
insert into HANG values ('LT4', N'Gạo Tư Hoảnh 10kg',180000,185000, 'Bao', 4)
insert into HANG values ('MP1', N'Giấy Ăn Gumi 30 gói',130000,135000, N'Thùng', 5)
insert into HANG values ('MP2', N'Dầu gội Dove',52000,55000, N'Chai', 5)
insert into HANG values ('MP3', N'Dầu gội Clear',50000,55000, N'Chai', 5)
insert into HANG values ('MP4', N'Dầu gội Xmen',55000,58000, N'Chai', 5)
insert into HANG values ('HP1', N'Nước giặt Omo',30000,33000, N'Gói', 6)
insert into HANG values ('HP2', N'Nước lau sàn Sunlight',40000,45000, N'Chai', 6)
insert into HANG values ('HP3', N'Nước giặt Suft',25000,30000, N'Gói', 6)
insert into HANG values ('DDHT1', N'Bút Thiên Long',5000, 8000, N'Chiếc', 7)
insert into HANG values ('DDHT2', N'Vở Hồng Hà',4000, 7000, N'Quyển', 7)


go
insert into CHUQUAN values ('CQ1', N'Nguyễn Thị Cam', N'64 Lê Chân, quận Sơn Trà, Đà Nẵng','0905181347')

go
insert into NHACUNGCAP values ('GM',N'Công ty CPPT Công Nghệ Ngày Đêm', N'366 Hoàng Văn Thái, Đà Nẵng', '0888505020', 'MBbank 09855222')
insert into NHACUNGCAP values ('HH',N'Công ty CP Acecook Việt Nam', N'Lô D3 đường số 10, KCN Hoà Khánh, quận Liên Chiểu, Đà Nẵng', '02363734750', 'TPbank 00905731625')
insert into NHACUNGCAP values ('TV',N'Nhà phân phối Bia Huda Trang Vàng', N'Số 27 Phạm Ngọc Thạch, quận Hải Châu, Đà Nẵng','02362211829', 'VCB 012305061997')
insert into NHACUNGCAP values ('G',N'Nhà phân phối Gạo Hương', N'Số 224 Mai Đăng Chơn, Đà Nẵng', '0889627705', 'VCB 012305062003')


go
insert into NGUOIMUAHANG values ('NMH1', N'Bác Hạ', N'70 Trần Nhân Tông, Đà Nẵng', '0905123456')
insert into NGUOIMUAHANG values ('NMH2', N'Chị Hoa', N'54 Tôn Quang Phiệt, Đà Nẵng', '0977635189')
insert into NGUOIMUAHANG values ('NMH3', N'Dì Trang', N'100 Lê Chân, Đà Nẵng', '0961198042')
insert into NGUOIMUAHANG values ('NMH4', N'Chú Vũ', N'50 Lê Chân, Đà Nẵng', '0949378123')
insert into NGUOIMUAHANG values ('NMH5', N'Cô Mai', N'17 An Hải 3, Đà Nẵng', '0949341599')
insert into NGUOIMUAHANG values ('NMH6', N'Anh Quốc', N'80 Lê Chân, Đà Nẵng', '0905167388')
insert into NGUOIMUAHANG values ('NMH7', N'Bé Châu', N'152 Nguyễn Thị Định, Đà Nẵng', '0914678912')
insert into NGUOIMUAHANG values ('NMH8', N'Dì Ngân', N'112 Nguyễn Trung Trực, Đà Nẵng', '0905128139')
insert into NGUOIMUAHANG values ('NMH9', N'Em Nga', N'189 Tôn Quang Phiệt, Đà Nẵng', '0932503811')

go
insert into BAN values ('HD1', '2023-9-12', '08:30',50000,'CQ1','NMH1')
insert into BAN values ('HD2', '2023-11-11', '15:03',110000,'CQ1','NMH2')
insert into BAN values ('HD3', '2023-11-18', '19:38',120000,'CQ1','NMH3')
insert into BAN values ('HD4', '2023-10-19', '17:45',250000,'CQ1','NMH4')
insert into BAN values ('HD5', '2023-8-20', '09:19',110000,'CQ1','NMH5')
insert into BAN values ('HD6', '2023-11-21', '12:11',48000,'CQ1','NMH6')
insert into BAN values ('HD7', '2023-9-23', '13:10',24000,'CQ1','NMH7')
insert into BAN values ('HD8', '2023-10-29', '18:18',33000,'CQ1','NMH8')
insert into BAN values ('HD9', '2023-11-22', '07:12',70000,'CQ1','NMH9')


go
insert into DONBANCT values ('HD1','TPK3',5,50000)
insert into DONBANCT values ('HD2','MP2',2,110000)
insert into DONBANCT values ('HD3','DU3',4,120000)
insert into DONBANCT values ('HD4','DU2',1,250000)
insert into DONBANCT values ('HD5','GV1',2,110000)
insert into DONBANCT values ('HD6','GV2',1,48000)
insert into DONBANCT values ('HD7','DDHT1',3,24000)
insert into DONBANCT values ('HD8','HP1',1,33000)
insert into DONBANCT values ('HD9','LT1',2,60000)

go
insert into NHAP values ('HDN1',0,'2023-11-17', 450000,'CQ1','HH')
insert into NHAP values ('HDN2',0,'2023-9-28',2450000,'CQ1','TV')
insert into NHAP values ('HDN3',0,'2023-8-13',2674000,'CQ1','G')
insert into NHAP values ('HDN4',0,'2023-10-16',390000,'CQ1','GM')

go
insert into NHAPCT values ('HDN1','TPK1',5,450000)
insert into NHAPCT values ('HDN2','DU2',10,2450000)
insert into NHAPCT values ('HDN3','LT2',2,2674000)
insert into NHAPCT values ('HDN4','MP1',3,390000)

--Fullbackup
BACKUP DATABASE [TAPHOA] TO  DISK = N'D:\Backup\Backup_TAPHOA.bak' WITH NOFORMAT, NOINIT,  NAME = N'TAPHOA-Full Database Backup', 
SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO