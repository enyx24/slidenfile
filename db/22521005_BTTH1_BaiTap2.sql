/*Quan li giao vu*/
--I
--1
create database QLGV
use QLGV

create table KHOA (
	MAKHOA varchar(4) not null,
	TENKHOA varchar(40),
	NGTLAP smalldatetime,
	TRGKHOA char(4)
)

create table MONHOC (
	MAMH varchar(10) not null,
	TENMH varchar(40),
	TCLT tinyint,
	TCTH tinyint,
	MAKHOA varchar(4)
)

create table DIEUKIEN (
	MAMH varchar(10) not null,
	MAMH_TRUOC varchar(10) not null
)

create table GIAOVIEN (
	MAGV char(4) not null,
	HOTEN varchar(40),
	HOCVI varchar(10),
	HOCHAM varchar(10),
	GIOITinH varchar(3),
	NGSinH smalldatetime,
	NGVL smalldatetime,
	HESO numeric(4,2),
	MUCLUONG money,
	MAKHOA varchar(4)
) 

create table LOP (
	MALOP char(3) not null,
	TENLOP varchar(40),
	TRGLOP char(5),
	SISO tinyint,
	MAGVCN char(4)
)

create table HOCVIEN (
	MAHV char(5) not null,
	HO varchar(40),
	TEN varchar(10),
	NGSinH smalldatetime,
	GIOITinH varchar(3),
	NOISinH varchar(40),
	MALOP char(3)
)

create table GIANGDAY (
	MALOP char(3) not null,
	MAMH varchar(10) not null,
	MAGV char(4),
	HOCKY tinyint,
	NAM smallint,
	TUNGAY smalldatetime,
	DENNGAY smalldatetime
)

create table KETQUATHI (
	MAHV char(5) not null,
	MAMH varchar(10) not null,
	LANTHI tinyint not null,
	NGTHI smalldatetime,
	DIEM numeric(4,2),
	KQUA varchar(10)
)

alter table KHOA add constraint pk_k primary key (MAKHOA);

alter table MONHOC add constraint pk_mh primary key (MAMH);

alter table DIEUKIEN add constraint pk_dk primary key (MAMH,MAMH_TRUOC);

alter table GIAOVIEN add constraint pk_gv primary key (MAGV);

alter table LOP add constraint pk_l primary key (MALOP);

alter table HOCVIEN add constraint pk_hv primary key (MAHV);

alter table GIANGDAY add constraint pk_gd primary key (MALOP,MAMH);

alter table KETQUATHI add constraint pk_kqt primary key (MAHV,MAMH,LANTHI);

insert into KHOA values('KHMT','Khoa hoc may tinh','6/7/2005','GV01')
insert into KHOA values('HTTT','He thong thong tin','6/7/2005','GV02')
insert into KHOA values('CNPM','Cong nghe phan mem','6/7/2005','GV04')
insert into KHOA values('MTT','Mang va truyen thong','10/20/2005','GV03')
insert into KHOA values('KTMT','Ky thuat may tinh','12/20/2005','')

insert into GIAOVIEN values('GV01','HO Thanh Son','PTS','GS','NAM','5/2/1950','1/11/2004',5.00,2250000,'KHMT')
insert into GIAOVIEN values('GV02','Tran Tam Thanh','TS','PGS','NAM','12/17/1965','4/20/2004',4.50,2025000,'HTTT')
insert into GIAOVIEN values('GV03','Do Nghiem Phung','TS','GS','Nu','8/1/1950','9/23/2004',4.00,1800000,'CNPM')
insert into GIAOVIEN values('GV04','Tran NAM Son','TS','PGS','NAM','2/22/1961','1/12/2005',4.50,2025000,'KTMT')
insert into GIAOVIEN values('GV05','Mai Thanh Danh','ThS','GV','NAM','3/12/1958','1/12/2005',3.00,1350000,'HTTT')
insert into GIAOVIEN values('GV06','Tran Doan Hung','TS','GV','NAM','3/11/1953','1/12/2005',4.50,2025000,'KHMT')
insert into GIAOVIEN values('GV07','Nguyen Minh Tien','ThS','GV','NAM','11/23/1971','3/1/2005',4.00,1800000,'KHMT')
insert into GIAOVIEN values('GV08','Le Thi Tran','KS','','Nu','3/26/1974','3/1/2005',1.69,760500,'KHMT')
insert into GIAOVIEN values('GV09','Nguyen To Lan','ThS','GV','Nu','12/31/1966','3/1/2005',4.00,1800000,'HTTT')
insert into GIAOVIEN values('GV10','Le Tran Anh Loan','KS','','Nu','7/17/1972','3/1/2005',1.86,837000,'CNPM')
insert into GIAOVIEN values('GV11','HO Thanh Tung','CN','GV','NAM','1/12/1980','5/15/2005',2.67,1201500,'MTT')
insert into GIAOVIEN values('GV12','Tran Van Anh','CN','','Nu','3/29/1981','5/15/2005',1.69,760500,'CNPM')
insert into GIAOVIEN values('GV13','Nguyen Linh Dan','CN','','Nu','5/23/1980','5/15/2005',1.69,760500,'KTMT')
insert into GIAOVIEN values('GV14','Truong Minh Chau','ThS','GV','Nu','11/30/1976','5/15/2005',3.00,1350000,'MTT')
insert into GIAOVIEN values('GV15','Le Ha Thanh','ThS','GV','NAM','5/4/1978','5/15/2005',3.00,1350000,'KHMT')
 
insert into MONHOC values('THDC','Tin hoc dai cuong',4,1,'KHMT')
insert into MONHOC values('CTRR','Cau truc roi rac',5,0,'KHMT')
insert into MONHOC values('CSDL','Co so du lieu',3,1,'HTTT')
insert into MONHOC values('CTDLGT','Cau truc du lieu va giai thuat',3,1,'KHMT')
insert into MONHOC values('PTTKTT','Phan tich thiet ke thuat toan',3,0,'KHMT')
insert into MONHOC values('DHMT','Do hoa may tinh',3,1,'KHMT')
insert into MONHOC values('KTMT','Kien truc may tinh',3,0,'KTMT')
insert into MONHOC values('TKCSDL','Thiet ke co so du lieu',3,1,'HTTT')
insert into MONHOC values('PTTKHTTT','Phan tich thiet ke he thong thong tin',4,1,'HTTT')
insert into MONHOC values('HDH','He dieu hanh',4,0,'KTMT')
insert into MONHOC values('NMCNPM','Nhap mon cong nghe phan mem',3,0,'CNPM')
insert into MONHOC values('LTCFW','Lap trinh C for win',3,1,'CNPM')
insert into MONHOC values('LTHDT','Lap trinh huong doi tuong',3,1,'CNPM')

insert into LOP values('K11','LOP 1 khoa 1','K1108',11,'GV07')
insert into LOP values('K12','LOP 2 khoa 1','K1205',12,'GV09')
insert into LOP values('K13','LOP 3 khoa 1','K1305',12,'GV14')

insert into HOCVIEN values('K1101','Nguyen Van','A','1/27/1986','NAM','TpHCM','K11')
insert into HOCVIEN values('K1102','Tran Ngoc','Han','3/1/1986','Nu','Kien Giang','K11')
insert into HOCVIEN values('K1103','Ha Duy','Lap','4/18/1986','NAM','Nghe An','K11')
insert into HOCVIEN values('K1104','Tran Ngoc','Linh','3/30/1986','Nu','Tay Ninh','K11')
insert into HOCVIEN values('K1105','Tran Minh','Long','2/27/1986','NAM','TpHCM','K11')
insert into HOCVIEN values('K1106','Le Nhat','Minh','1/24/1986','NAM','TpHCM','K11')
insert into HOCVIEN values('K1107','Nguyen Nhu','Nhut','1/27/1986','NAM','Ha Noi','K11')
insert into HOCVIEN values('K1108','Nguyen Manh','Tam','2/27/1986','NAM','Kien Giang','K11')
insert into HOCVIEN values('K1109','Phan Thi Thanh','Tam','1/27/1986','Nu','Vinh Long','K11')
insert into HOCVIEN values('K1110','Le HOai','Thuong','2/5/1986','Nu','Can Tho','K11')
insert into HOCVIEN values('K1111','Le Ha','Vinh','12/25/1986','NAM','Vinh Long','K11')
insert into HOCVIEN values('K1201','Nguyen Van','B','2/11/1986','NAM','TpHCM','K12')
insert into HOCVIEN values('K1202','Nguyen Thi Kim','Duyen','1/18/1986','Nu','TpHCM','K12')
insert into HOCVIEN values('K1203','Tran Thi Kim','Duyen','9/17/1986','Nu','TpHCM','K12')
insert into HOCVIEN values('K1204','Truong My','Hanh','5/19/1986','Nu','Dong Nai','K12')
insert into HOCVIEN values('K1205','Nguyen Thanh','NAM','4/17/1986','NAM','TpHCM','K12')
insert into HOCVIEN values('K1206','Nguyen Thi Truc','Thanh','3/4/1986','Nu','Kien Giang','K12')
insert into HOCVIEN values('K1207','Tran Thi Bich','Thuy','2/8/1986','Nu','Nghe An','K12')
insert into HOCVIEN values('K1208','Huynh Thi Kim','Trieu','4/8/1986','Nu','Tay Ninh','K12')
insert into HOCVIEN values('K1209','Pham Thanh','Trieu','2/23/1986','NAM','TpHCM','K12')
insert into HOCVIEN values('K1210','Ngo Thanh','Tuan','2/14/1986','NAM','TpHCM','K12')
insert into HOCVIEN values('K1211','Do Thi','Xuan','3/9/1986','Nu','Ha Noi','K12')
insert into HOCVIEN values('K1212','Le Thi Phi','Yen','3/12/1986','Nu','TpHCM','K12')
insert into HOCVIEN values('K1301','Nguyen Thi Kim','Cuc','6/9/1986','Nu','Kien Giang','K13')
insert into HOCVIEN values('K1302','Truong Thi My','Hien','3/18/1986','Nu','Nghe An','K13')
insert into HOCVIEN values('K1303','Le Duc','Hien','3/12/1986','NAM','Tay Ninh','K13')
insert into HOCVIEN values('K1304','Le Quang','Hien','4/18/1986','NAM','TpHCM','K13')
insert into HOCVIEN values('K1305','Le Thi','Huong','3/27/1986','Nu','TpHCM','K13')
insert into HOCVIEN values('K1306','Nguyen Thai','Huu','3/30/1986','NAM','Ha Noi','K13')
insert into HOCVIEN values('K1307','Tran Minh','Man','5/28/1986','NAM','TpHCM','K13')
insert into HOCVIEN values('K1308','Nguyen Hieu','Nghia','4/8/1986','NAM','Kien Giang','K13')
insert into HOCVIEN values('K1309','Nguyen Trung','Nghia','1/18/1987','NAM','Nghe An','K13')
insert into HOCVIEN values('K1310','Tran Thi HOng','Tham','4/22/1986','Nu','Tay Ninh','K13')
insert into HOCVIEN values('K1311','Tran Minh','Thuc','4/4/1986','NAM','TpHCM','K13')
insert into HOCVIEN values('K1312','Nguyen Thi Kim','Yen','9/7/1986','Nu','TpHCM','K13')

insert into GIANGDAY values('K11','THDC','GV07',1,2006,'1/2/2006','5/12/2006')
insert into GIANGDAY values('K12','THDC','GV06',1,2006,'1/2/2006','5/12/2006')
insert into GIANGDAY values('K13','THDC','GV15',1,2006,'1/2/2006','5/12/2006')
insert into GIANGDAY values('K11','CTRR','GV02',1,2006,'1/9/2006','5/17/2006')
insert into GIANGDAY values('K12','CTRR','GV02',1,2006,'1/9/2006','5/17/2006')
insert into GIANGDAY values('K13','CTRR','GV08',1,2006,'1/9/2006','5/17/2006')
insert into GIANGDAY values('K11','CSDL','GV05',2,2006,'6/1/2006','7/15/2006')
insert into GIANGDAY values('K12','CSDL','GV09',2,2006,'6/1/2006','7/15/2006')
insert into GIANGDAY values('K13','CTDLGT','GV15',2,2006,'6/1/2006','7/15/2006')
insert into GIANGDAY values('K13','CSDL','GV05',3,2006,'8/1/2006','12/15/2006')
insert into GIANGDAY values('K13','DHMT','GV07',3,2006,'8/1/2006','12/15/2006')
insert into GIANGDAY values('K11','CTDLGT','GV15',3,2006,'8/1/2006','12/15/2006')
insert into GIANGDAY values('K12','CTDLGT','GV15',3,2006,'8/1/2006','12/15/2006')
insert into GIANGDAY values('K11','HDH','GV04',1,2007,'1/2/2007','2/18/2007')
insert into GIANGDAY values('K12','HDH','GV04',1,2007,'1/2/2007','3/20/2007')
insert into GIANGDAY values('K11','DHMT','GV07',1,2007,'2/18/2007','3/20/2007')

insert into DIEUKIEN values('CSDL','CTRR')
insert into DIEUKIEN values('CSDL','CTDLGT')
insert into DIEUKIEN values('CTDLGT','THDC')
insert into DIEUKIEN values('PTTKTT','THDC')
insert into DIEUKIEN values('PTTKTT','CTDLGT')
insert into DIEUKIEN values('DHMT','THDC')
insert into DIEUKIEN values('LTHDT','THDC')
insert into DIEUKIEN values('PTTKHTTT','CSDL')

insert into KETQUATHI values('K1101','CSDL',1,'7/20/2006',10.00,'Dat')
insert into KETQUATHI values('K1101','CTDLGT',1,'12/28/2006',9.00,'Dat')
insert into KETQUATHI values('K1101','THDC',1,'5/20/2006',9.00,'Dat')
insert into KETQUATHI values('K1101','CTRR',1,'5/13/2006',9.50,'Dat')
insert into KETQUATHI values('K1102','CSDL',1,'7/20/2006',4.00,'Khong Dat')
insert into KETQUATHI values('K1102','CSDL',2,'7/27/2006',4.25,'Khong Dat')
insert into KETQUATHI values('K1102','CSDL',3,'8/10/2006',4.50,'Khong Dat')
insert into KETQUATHI values('K1102','CTDLGT',1,'12/28/2006',4.50,'Khong Dat')
insert into KETQUATHI values('K1102','CTDLGT',2,'1/5/2007',4.00,'Khong Dat')
insert into KETQUATHI values('K1102','CTDLGT',3,'1/15/2007',6.00,'Dat')
insert into KETQUATHI values('K1102','THDC',1,'5/20/2006',5.00,'Dat')
insert into KETQUATHI values('K1102','CTRR',1,'5/13/2006',7.00,'Dat')
insert into KETQUATHI values('K1103','CSDL',1,'7/20/2006',3.50,'Khong Dat')
insert into KETQUATHI values('K1103','CSDL',2,'7/27/2006',8.25,'Dat')
insert into KETQUATHI values('K1103','CTDLGT',1,'12/28/2006',7.00,'Dat')
insert into KETQUATHI values('K1103','THDC',1,'5/20/2006',8.00,'Dat')
insert into KETQUATHI values('K1103','CTRR',1,'5/13/2006',6.50,'Dat')
insert into KETQUATHI values('K1104','CSDL',1,'7/20/2006',3.75,'Khong Dat')
insert into KETQUATHI values('K1104','CTDLGT',1,'12/28/2006',4.00,'Khong Dat')
insert into KETQUATHI values('K1104','THDC',1,'5/20/2006',4.00,'Khong Dat')
insert into KETQUATHI values('K1104','CTRR',1,'5/13/2006',4.00,'Khong Dat')
insert into KETQUATHI values('K1104','CTRR',2,'5/20/2006',3.50,'Khong Dat')
insert into KETQUATHI values('K1104','CTRR',3,'6/30/2006',4.00,'Khong Dat')
insert into KETQUATHI values('K1201','CSDL',1,'7/20/2006',6.00,'Dat')
insert into KETQUATHI values('K1201','CTDLGT',1,'12/28/2006',5.00,'Dat')
insert into KETQUATHI values('K1201','THDC',1,'5/20/2006',8.50,'Dat')
insert into KETQUATHI values('K1201','CTRR',1,'5/13/2006',9.00,'Dat')
insert into KETQUATHI values('K1202','CSDL',1,'7/20/2006',8.00,'Dat')
insert into KETQUATHI values('K1202','CTDLGT',1,'12/28/2006',4.00,'Khong Dat')
insert into KETQUATHI values('K1202','CTDLGT',2,'1/5/2007',5.00,'Dat')
insert into KETQUATHI values('K1202','THDC',1,'5/20/2006',4.00,'Khong Dat')
insert into KETQUATHI values('K1202','THDC',2,'5/27/2006',4.00,'Khong Dat')
insert into KETQUATHI values('K1202','CTRR',1,'5/13/2006',3.00,'Khong Dat')
insert into KETQUATHI values('K1202','CTRR',2,'5/20/2006',4.00,'Khong Dat')
insert into KETQUATHI values('K1202','CTRR',3,'6/30/2006',6.25,'Dat')
insert into KETQUATHI values('K1203','CSDL',1,'7/20/2006',9.25,'Dat')
insert into KETQUATHI values('K1203','CTDLGT',1,'12/28/2006',9.50,'Dat')
insert into KETQUATHI values('K1203','THDC',1,'5/20/2006',10.00,'Dat')
insert into KETQUATHI values('K1203','CTRR',1,'5/13/2006',10.00,'Dat')
insert into KETQUATHI values('K1204','CSDL',1,'7/20/2006',8.50,'Dat')
insert into KETQUATHI values('K1204','CTDLGT',1,'12/28/2006',6.75,'Dat')
insert into KETQUATHI values('K1204','THDC',1,'5/20/2006',4.00,'Khong Dat')
insert into KETQUATHI values('K1204','CTRR',1,'5/13/2006',6.00,'Dat')
insert into KETQUATHI values('K1301','CSDL',1,'12/20/2006',4.25,'Khong Dat')
insert into KETQUATHI values('K1301','CTDLGT',1,'7/25/2006',8.00,'Dat')
insert into KETQUATHI values('K1301','THDC',1,'5/20/2006',7.75,'Dat')
insert into KETQUATHI values('K1301','CTRR',1,'5/13/2006',8.00,'Dat')
insert into KETQUATHI values('K1302','CSDL',1,'12/20/2006',6.75,'Dat')
insert into KETQUATHI values('K1302','CTDLGT',1,'7/25/2006',5.00,'Dat')
insert into KETQUATHI values('K1302','THDC',1,'5/20/2006',8.00,'Dat')
insert into KETQUATHI values('K1302','CTRR',1,'5/13/2006',8.50,'Dat')
insert into KETQUATHI values('K1303','CSDL',1,'12/20/2006',4.00,'Khong Dat')
insert into KETQUATHI values('K1303','CTDLGT',1,'7/25/2006',4.50,'Khong Dat')
insert into KETQUATHI values('K1303','CTDLGT',2,'8/7/2006',4.00,'Khong Dat')
insert into KETQUATHI values('K1303','CTDLGT',3,'8/15/2006',4.25,'Khong Dat')
insert into KETQUATHI values('K1303','THDC',1,'5/20/2006',4.50,'Khong Dat')
insert into KETQUATHI values('K1303','CTRR',1,'5/13/2006',3.25,'Khong Dat')
insert into KETQUATHI values('K1303','CTRR',2,'5/20/2006',5.00,'Dat')
insert into KETQUATHI values('K1304','CSDL',1,'12/20/2006',7.75,'Dat')
insert into KETQUATHI values('K1304','CTDLGT',1,'7/25/2006',9.75,'Dat')
insert into KETQUATHI values('K1304','THDC',1,'5/20/2006',5.50,'Dat')
insert into KETQUATHI values('K1304','CTRR',1,'5/13/2006',5.00,'Dat')
insert into KETQUATHI values('K1305','CSDL',1,'12/20/2006',9.25,'Dat')
insert into KETQUATHI values('K1305','CTDLGT',1,'7/25/2006',10.00,'Dat')
insert into KETQUATHI values('K1305','THDC',1,'5/20/2006',8.00,'Dat')
insert into KETQUATHI values('K1305','CTRR',1,'5/13/2006',10.00,'Dat')

alter table MONHOC
add constraint fr_mh
foreign key (MAKHOA) references KHOA(MAKHOA);

alter table DIEUKIEN
add constraint fr_dk
foreign key (MAMH) references MONHOC(MAMH),
foreign key (MAMH_TRUOC) references MONHOC(MAMH);

alter table GIAOVIEN 
add constraint fr_gv
foreign key (MAKHOA) references KHOA(MAKHOA);

alter table LOP
add constraint fr_l
foreign key (TRGLOP) references HOCVIEN(MAHV),
foreign key (MAGVCN) references GIAOVIEN(MAGV);

alter table HOCVIEN 
add constraint fr_hv 
foreign key (MALOP) references LOP(MALOP);

alter table GIANGDAY
add constraint fr_gd 
foreign key (MALOP) references LOP(MALOP),
foreign key (MAMH) references MONHOC(MAMH);

alter table KETQUATHI
add constraint fr_kqt
foreign key (MAHV) references HOCVIEN(MAHV),
foreign key (MAMH) references MONHOC(MAMH);

alter table HOCVIEN 
add
GHICHU varchar(40),
DIEMTB numeric(4,2),
XEPLOAI varchar(10);

--2 
create trigger trg_ins_upd_HOCVIEN
on HOCVIEN
for insert, update 
as
begin
	declare @SISO int, @MAHV varchar(5), @MALOP varchar(3)

	select @MAHV = MAHV, @MALOP = MALOP from inSERTED
	select @SISO = SISO from LOP where LOP.MALOP = @MALOP

	if left(@MAHV,3) <> @MALOP
	begin
		print('3 ki tu dau cua MAHV phai la MALOP')
		rollback transaction
	end
	
	else if cast(right(@MAHV, 2) as int) not between 1 and @SISO
	begin
		print('2 ki tu cuoi cua MAHV phai la so thu tu hoc vien trong lop')
		rollback transaction
	end
end

--3
alter table HOCVIEN
add constraint ck_gthv 
check (GIOITinH in ('NAM', 'Nu'))

alter table GIAOVIEN 
add constraint ck_gtgv 
check (GIOITinH in ('NAM', 'Nu'))

--4
alter table KETQUATHI 
add constraint ck_diem 
check (
	DIEM between 0 and 10
	and right(cast(DIEM as varchar), 3) like '.__'
)

--5
alter table KETQUATHI
add constraint ck_ketqua 
check (	
	(KQUA = 'Dat' and DIEM between 5 and 10)
	or (KQUA = 'Khong dat' and DIEM < 5)
)

--6
alter table KETQUATHI 
add constraint ck_lanthi 
check (LANTHI <= 3)

--7
alter table GIANGDAY
add constraint ck_hocky 
check (HOCKY between 1 and 3)

--8
alter table GIAOVIEN 
add constraint ck_hocvi 
check (HOCVI in ('CN', 'KS', 'Ths', 'TS', 'PTS'))

--II
--1
update GIAOVIEN
set HESO = 0.2 + HESO
where MAGV in (select TRGKHOA from KHOA)

--2
update HOCVIEN
set DIEMTB =
(
	select AVG(DIEM)
	from KETQUATHI
	where LANTHI = (select max(LANTHI) from KETQUATHI KQ where MAHV = KETQUATHI.MAHV group by MAHV)
	group by MAHV
	having MAHV = HOCVIEN.MAHV
)

--3
update HOCVIEN
set GHICHU = 'Cam thi'
where MAHV in 
(
	select MAHV
	from KETQUATHI
	where LANTHI = 3 and DIEM < 5
)

--III
--1
select
	MAHV, (HO+TEN) HOTEN, NGSinH, HOCVIEN.MALOP
from
	HOCVIEN, LOP
where
	HOCVIEN.MAHV = LOP.TRGLOP

--2
select 
	HOCVIEN.MAHV, (HO+' '+TEN) HOTEN, LANTHI, DIEM 
from 
	KETQUATHI, HOCVIEN
where
	KETQUATHI.MAHV = HOCVIEN.MAHV
	and MAMH = 'CTRR'
	and MALOP = 'K12'
order by
	TEN, HO

--3
select
	HOCVIEN.MAHV, (HO+' '+TEN) HOTEN, TENMH
from
	KETQUATHI, MONHOC, HOCVIEN
where
	KETQUATHI.MAMH = MONHOC.MAMH
	and KETQUATHI.MAHV = HOCVIEN.MAHV
	and LANTHI = 1 and KQUA = 'Dat'

--4
select
	HOCVIEN.MAHV, (HO+' '+TEN) HOTEN
from
	HOCVIEN, KETQUATHI
where
	HOCVIEN.MAHV = KETQUATHI.MAHV
	and MALOP = 'K11'
	and MAMH = 'CTRR'
	and KQUA = 'Khong Dat'
	and LANTHI = 1

--5
select distinct
	HOCVIEN.MAHV, (HO+' '+TEN) HOTEN
from
	HOCVIEN, KETQUATHI
where
	HOCVIEN.MAHV = KETQUATHI.MAHV
	and MALOP like 'K%'
	and MAMH = 'CTRR'
	and not exists
		(select * from KETQUATHI 
		where 
			KQUA = 'Dat' 
			and MAMH = 'CTRR' 
			and MAHV = HOCVIEN.MAHV)

--6
select distinct TENMH
from
	MONHOC, GIAOVIEN, GIANGDAY
where
	MONHOC.MAMH = GIANGDAY.MAMH
	and GIAOVIEN.MAGV = GIANGDAY.MAGV
	and HOTEN = 'Tran Tam Thanh'
	and HOCKY = 1 and NAM = 2006

--7
select distinct
	MONHOC.MAMH, TENMH
from
	MONHOC, LOP, GIANGDAY
where
	GIANGDAY.MAMH = MONHOC.MAMH
	and GIANGDAY.MAGV = LOP.MAGVCN
	and LOP.MALOP = 'K11'
	and HOCKY = 1 and NAM = 2006

--8
select distinct 
	(HO+' '+TEN) HOTEN
from
	HOCVIEN, LOP, GIAOVIEN, GIANGDAY, MONHOC
where
	LOP.TrgLOP = HOCVIEN.MAHV
	and GIANGDAY.MALOP = LOP.MALOP
	and GIANGDAY.MAGV = GIAOVIEN.MAGV
	and GIANGDAY.MAMH = MONHOC.MAMH
	and HOTEN = 'Nguyen To Lan'
	and TENMH = 'Co So Du Lieu'

--9
select
	MONHOCTRUOC.MAMH, MONHOCTRUOC.TENMH
from
	MONHOC, MONHOC as MONHOCTRUOC, DIEUKIEN
where
	MONHOC.MAMH = DIEUKIEN.MAMH
	and MONHOCTRUOC.MAMH = DIEUKIEN.MAMH_TRUOC
	and MONHOC.TENMH = 'Co So Du Lieu'

--10
select 
	MONHOC.MAMH, MONHOC.TENMH
from
	MONHOC, MONHOC as MONHOCTRUOC, DIEUKIEN
where
	MONHOC.MAMH = DIEUKIEN.MAMH
	and MONHOCTRUOC.MAMH = DIEUKIEN.MAMH_TRUOC
	and MONHOCTRUOC.TENMH = 'Cau Truc Roi Rac'

--11
select HOTEN
from
	GIAOVIEN, GIANGDAY
where
	GIAOVIEN.MAGV = GIANGDAY.MAGV
	and MALOP = 'K11'
	and HOCKY = 1 and NAM = 2006
intersect 
	(select HOTEN
	from
		GIAOVIEN, GIANGDAY
	where
		GIAOVIEN.MAGV = GIANGDAY.MAGV
		and MALOP = 'K12' and HOCKY = 1 and NAM = 2006)

--12
select
	HOCVIEN.MAHV, (HO+' '+TEN) HOTEN
from
	HOCVIEN, KETQUATHI
where
	HOCVIEN.MAHV = KETQUATHI.MAHV
	and MAMH = 'CSDL' and LANTHI = 1 and KQUA = 'Khong Dat'
	and not exists (select * from KETQUATHI where LANTHI > 1 and KETQUATHI.MAHV = HOCVIEN.MAHV)

--13
select MAGV, HOTEN
from GIAOVIEN
where MAGV not in (select MAGV from GIANGDAY)

--14
select MAGV, HOTEN
from GIAOVIEN
where not exists
(
	select *
	from MONHOC
	where MONHOC.MAKHOA = GIAOVIEN.MAKHOA
	and not exists
	(
		select *
		from GIANGDAY
		where GIANGDAY.MAMH = MONHOC.MAMH
		and GIANGDAY.MAGV = GIAOVIEN.MAGV
	)
)

--15
select distinct
	(HO+' '+TEN) HOTEN
from
	HOCVIEN, KETQUATHI
where
	HOCVIEN.MAHV = KETQUATHI.MAHV
	and MALOP = 'K11'
	and ((LANTHI = 2 and DIEM = 5)
	or HOCVIEN.MAHV in
	(
		select distinct MAHV
		from KETQUATHI
		where KQUA = 'Khong Dat'
		group by MAHV, MAMH
		having count(*) > 3	
	))

--16
select HOTEN
from
	GIAOVIEN, GIANGDAY
where
	GIAOVIEN.MAGV = GIANGDAY.MAGV
	and MAMH = 'CTRR'
group by 
	GIAOVIEN.MAGV, HOTEN, HOCKY
having 
	count(*) >= 2

--17
select
	HOCVIEN.*, DIEM as 'DIEM thi CSDL sau cung'
from
	HOCVIEN, KETQUATHI
where
	HOCVIEN.MAHV = KETQUATHI.MAHV
	and MAMH = 'CSDL'
	and LANTHI = 
	(
		select max(LANTHI) 
		from KETQUATHI 
		where MAMH = 'CSDL' and KETQUATHI.MAHV = HOCVIEN.MAHV 
		group by MAHV
	)

--18
select
	HOCVIEN.*, DIEM as 'DIEM thi CSDL cao nhat'
from
	HOCVIEN, KETQUATHI, MONHOC
where
	HOCVIEN.MAHV = KETQUATHI.MAHV
	and KETQUATHI.MAMH = MONHOC.MAMH
	and TENMH = 'Co So Du Lieu'
	and DIEM = 
	(
		select max(DIEM) 
		from KETQUATHI, MONHOC
		where
			KETQUATHI.MAMH = MONHOC.MAMH
			and MAHV = HOCVIEN.MAHV
			and TENMH = 'Co So Du Lieu'
		group by MAHV
	)