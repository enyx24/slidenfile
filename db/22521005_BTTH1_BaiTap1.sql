--Quan li ban hang
--I
--1
create database QLBH
use QLBH

create table KHACHHANG (
	MAKH char(4) not null,
	HOTEN varchar(40),
	DCHI varchar(50),
	SODT varchar(20),
	NGSINH smalldatetime,
	NGDK smalldatetime,
	DOANHSO money
)

create table NHANVIEN (
	MANV char(4) not null,
	HOTEN char(40),
	DTHOAI char(20),
	NGVL smalldatetime
)
create table SANPHAM (
	MASP char(4) not null,
	TENSP char(40),
	DVT char(20),
	NUOCSX char(40),
	GIA money
)

create table HOADON (
	SOHD int not null,
	NGHD smalldatetime,
	MAKH char(4),
	MANV char(4),
	TRIGIA money
)
create table CTHD (
	SOHD int not null,
	MASP char(4) not null,
	SL int
)

alter table KHACHHANG 
add constraint 
pk_kh primary key (MAKH);

alter table NHANVIEN
add constraint 
pk_nv primary key (MANV);

alter table SANPHAM
add constraint 
pk_sp primary key (MASP);


alter table HOADON
add constraint 
pk_hd primary key (SOHD),
foreign key (MAKH) references KHACHHANG (MAKH),
foreign key (MANV) references NHANVIEN (MANV);

alter table CTHD
add constraint 
pk_chhd primary key (SOHD, MASP),
foreign key (SOHD) references HOADON (SOHD),
foreign key (MASP) references SANPHAM (MASP);

set dateformat dmy

insert into KHACHHANG values('KH01','Nguyen Van A','731 Tran Hung Dao, Q5, TpHCM','8823451','22/10/1960','22/07/2006',13060000)
insert into KHACHHANG values('KH02','Tran Ngoc Han','23/5 Nguyen Trai, Q5, TpHCM','908256478','03/04/1974','30/07/2006',280000)
insert into KHACHHANG values('KH03','Tran Ngoc Linh','45 Nguyen Canh Chan, Q1, TpHCM','938776266','12/06/1980','08/05/2006',3860000)
insert into KHACHHANG values('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q10, TpHCM','917325476','09/03/1965','10/02/2006',250000)
insert into KHACHHANG values('KH05','Le Nhat Minh','34 Truong Dinh, Q3, TpHCM','8246108','10/03/1950','28/10/2006',21000)
insert into KHACHHANG values('KH06','Le Hoai Thuong','227 Nguyen Van Cu, Q5, TpHCM','8631738','31/12/1981','24/11/2006',915000)
insert into KHACHHANG values('KH07','Nguyen Van Tam','32/3 Tran Binh Trong, Q5, TpHCM','916783565','06/04/1971','12/01/2006',12500)
insert into KHACHHANG values('KH08','Phan Thi Thanh','45/2 An Duong Vuong, Q5, TpHCM','938435756','10/01/1971','13/12/2006',365000)
insert into KHACHHANG values('KH09','Le Ha Vinh','873 Le Hong Phong, Q5, TpHCM','8654763','03/09/1979','14/01/2007',70000)
insert into KHACHHANG values('KH10','Ha Duy Lap','34/34B Nguyen Trai, Q1, TpHCM','8768904','02/05/1983','16/01/2007',67500)

insert into NHANVIEN values('NV01','Nguyen Nhu Nhut','927345678','13/04/2006')
insert into NHANVIEN values('NV02','Le Thi Phi Yen','987567390','21/04/2006')
insert into NHANVIEN values('NV03','Nguyen Van B','997047382','27/04/2006')
insert into NHANVIEN values('NV04','Ngo Thanh Tuan','913758498','24/06/2006')
insert into NHANVIEN values('NV05','Nguyen Thi Truc Thanh','918590387','20/07/2006')

insert into SANPHAM values('BC01','But chi','cay','Singapore',3000)
insert into SANPHAM values('BC02','But chi','cay','Singapore',5000)
insert into SANPHAM values('BC03','But chi','cay','Viet Nam',3500)
insert into SANPHAM values('BC04','But chi','hop','Viet Nam',30000)
insert into SANPHAM values('BB01','But bi','cay','Viet Nam',5000)
insert into SANPHAM values('BB02','But bi','cay','Trung Quoc',7000)
insert into SANPHAM values('BB03','But bi','hop','Thai Lan',100000)
insert into SANPHAM values('TV01','Tap 100 giay mong','quyen','Trung Quoc',2500)
insert into SANPHAM values('TV02','Tap 200 giay mong','quyen','Trung Quoc',4500)
insert into SANPHAM values('TV03','Tap 100 giay tot','quyen','Viet Nam',3000)
insert into SANPHAM values('TV04','Tap 200 giay tot','quyen','Viet Nam',5500)
insert into SANPHAM values('TV05','Tap 100 trang','chuc','Viet Nam',23000)
insert into SANPHAM values('TV06','Tap 200 trang','chuc','Viet Nam',53000)
insert into SANPHAM values('TV07','Tap 100 trang','chuc','Trung Quoc',34000)
insert into SANPHAM values('ST01','So tay 500 trang','quyen','Trung Quoc',40000)
insert into SANPHAM values('ST02','So tay loai 1','quyen','Viet Nam',55000)
insert into SANPHAM values('ST03','So tay loai 2','quyen','Viet Nam',51000)
insert into SANPHAM values('ST04','So tay','quyen','Thai Lan',55000)
insert into SANPHAM values('ST05','So tay mong','quyen','Thai Lan',20000)
insert into SANPHAM values('ST06','Phan viet bang','hop','Viet Nam',5000)
insert into SANPHAM values('ST07','Phan khong bui','hop','Viet Nam',7000)
insert into SANPHAM values('ST08','Bong bang','cai','Viet Nam',1000)
insert into SANPHAM values('ST09','But long','cay','Viet Nam',5000)
insert into SANPHAM values('ST10','But long','cay','Trung Quoc',7000)

insert into HOADON values(1001,'23/07/2006','KH01','NV01',320000)
insert into HOADON values(1002,'12/08/2006','KH01','NV02',840000)
insert into HOADON values(1003,'23/08/2006','KH02','NV01',100000)
insert into HOADON values(1004,'01/09/2006','KH02','NV01',180000)
insert into HOADON values(1005,'20/10/2006','KH01','NV02',3800000)
insert into HOADON values(1006,'16/10/2006','KH01','NV03',2430000)
insert into HOADON values(1007,'28/10/2006','KH03','NV03',510000)
insert into HOADON values(1008,'28/10/2006','KH01','NV03',440000)
insert into HOADON values(1009,'28/10/2006','KH03','NV04',200000)
insert into HOADON values(1010,'01/11/2006','KH01','NV01',5200000)
insert into HOADON values(1011,'04/11/2006','KH04','NV03',250000)
insert into HOADON values(1012,'30/11/2006','KH05','NV03',21000)
insert into HOADON values(1013,'12/12/2006','KH06','NV01',5000)
insert into HOADON values(1014,'31/12/2006','KH03','NV02',3150000)
insert into HOADON values(1015,'01/01/2007','KH06','NV01',910000)
insert into HOADON values(1016,'01/01/2007','KH07','NV02',12500)
insert into HOADON values(1017,'02/01/2007','KH08','NV03',35000)
insert into HOADON values(1018,'13/01/2007','KH08','NV03',330000)
insert into HOADON values(1019,'13/01/2007','KH01','NV03',30000)
insert into HOADON values(1020,'14/01/2007','KH09','NV04',70000)
insert into HOADON values(1021,'16/01/2007','KH10','NV03',67500)
insert into HOADON values(1022,'16/01/2007',Null,'NV03',7000)
insert into HOADON values(1023,'17/01/2007',Null,'NV01',330000)

insert into CTHD values(1001,'TV02',10)
insert into CTHD values(1001,'ST01',5)
insert into CTHD values(1001,'BC01',5)
insert into CTHD values(1001,'BC02',10)
insert into CTHD values(1001,'ST08',10)
insert into CTHD values(1002,'BC04',20)
insert into CTHD values(1002,'BB01',20)
insert into CTHD values(1002,'BB02',20)
insert into CTHD values(1003,'BB03',10)
insert into CTHD values(1004,'TV01',20)
insert into CTHD values(1004,'TV02',10)
insert into CTHD values(1004,'TV03',10)
insert into CTHD values(1004,'TV04',10)
insert into CTHD values(1005,'TV05',50)
insert into CTHD values(1005,'TV06',50)
insert into CTHD values(1006,'TV07',20)
insert into CTHD values(1006,'ST01',30)
insert into CTHD values(1006,'ST02',10)
insert into CTHD values(1007,'ST03',10)
insert into CTHD values(1008,'ST04',8)
insert into CTHD values(1009,'ST05',10)
insert into CTHD values(1010,'TV07',50)
insert into CTHD values(1010,'ST07',50)
insert into CTHD values(1010,'ST08',100)
insert into CTHD values(1010,'ST04',50)
insert into CTHD values(1010,'TV03',100)
insert into CTHD values(1011,'ST06',50)
insert into CTHD values(1012,'ST07',3)
insert into CTHD values(1013,'ST08',5)
insert into CTHD values(1014,'BC02',80)
insert into CTHD values(1014,'BB02',100)
insert into CTHD values(1014,'BC04',60)
insert into CTHD values(1014,'BB01',50)
insert into CTHD values(1015,'BB02',30)
insert into CTHD values(1015,'BB03',7)
insert into CTHD values(1016,'TV01',5)
insert into CTHD values(1017,'TV02',1)
insert into CTHD values(1017,'TV03',1)
insert into CTHD values(1017,'TV04',5)
insert into CTHD values(1018,'ST04',6)
insert into CTHD values(1019,'ST05',1)
insert into CTHD values(1019,'ST06',2)
insert into CTHD values(1020,'ST07',10)
insert into CTHD values(1021,'ST08',5)
insert into CTHD values(1021,'TV01',7)
insert into CTHD values(1021,'TV02',10)
insert into CTHD values(1022,'ST07',1)
insert into CTHD values(1023,'ST04',6)
--2
alter table SANPHAM
add GHICHU varchar(20);
--3
alter table KHACHHANG
add LOAIKH tinyint;
--4
alter table SANPHAM
alter column GHICHU varchar(40);
--5
alter table SANPHAM
drop column GHICHU;
--6
alter table KHACHHANG
alter column LOAIKH varchar(12)
alter table KHACHHANG
add constraint CHECK_LOAIKH check (LOAIKH in ('Vang lai', 'Thuong xuyen', 'Vip'));
--7
alter table SANPHAM
add constraint ck_dvt check(DVT in ('cay','hop','cai','quyen','chuc'));
--8
alter table SANPHAM
add constraint ck_gia check(GIA >= 500);
--9
alter table HOADON
add constraint ck_trigia check(TRIGIA > 0);
--10
alter table KHACHHANG
add constraint ck_ngsinh_ngdk check(NGDK > NGSINH)

--11
create trigger trg_ins_udt_nghd on hoadon
for insert, update
as
begin
	if (exists (select * from khachhang, inserted 
				where khachhang.makh = inserted.makh 
				and khachhang.ngdk > inserted.nghd))
	begin
		print 'error: nghd phai >= ngdk'
		rollback transaction
	end
end

create trigger trg_upd_ngdk on khachhang
for update
as
begin
	if (exists (select * from hoadon, inserted
				where hoadon.makh = inserted.makh
				and hoadon.nghd < inserted.ngdk))
	begin
		print 'error: nghd phai >= ngdk'
		rollback transaction
	end
end

--12
create trigger trg_ins_udt_ngbh on hoadon
for insert, update
as
begin
	if (exists (select * from nhanvien, inserted 
				where nhanvien.manv = inserted.makh 
				and nhanvien.ngvl > inserted.nghd))
	begin
		print 'error: nghd phai >= ngvl'
		rollback transaction
	end
end

create trigger trg_upd_ngvl on nhanvien
for update
as
begin
	if (exists (select * from hoadon, inserted
				where hoadon.manv = inserted.manv
				and hoadon.nghd < inserted.ngvl))
	begin
		print 'error: nghd phai >= ngdk'
		rollback transaction
	end
end

--13
create trigger trg_del_cthd on cthd
for delete
as
begin
	if ((select count(*) from deleted where sohd = deleted.sohd)
		= (select count(*) from hoadon, deleted where deleted.sohd = hoadon.sohd))
	begin
		print 'error: moi hoa don phai co it nhat 1 cthd'
		rollback transaction
	end
end

--15
create trigger trg_upd_doanhso on khachhang
for update
as
begin
	declare @tongtrigia money, @doanhso money

	select @tongtrigia = sum(trigia)
	from hoadon, inserted
	where hoadon.makh = inserted.makh

	select @doanhso = doanhso from inserted

	if (@doanhso <> @tongtrigia)
	begin
		print('doanh so cua mot khach hang la tong tri gia cac hoa don khach hang thanh vien do da mua')
		rollback transaction
	end
end




--II
--1 - I1

--2
select * into SANPHAM1 from SANPHAM
select * into KHACHHANG1 from KHACHHANG

--3
update SANPHAM1
set GIA = 1.05 * GIA
where NUOCSX = 'Thai Lan'

--4
update SANPHAM1
set GIA = 0.95 * GIA
where NUOCSX = 'Trung Quoc' and GIA <= 10000


--5
update KHACHHANG1
set LOAIKH = 'Vip'
where (NGDK < '1/1/2007' and DOANHSO >= 10000000)
or (NGDK >= '1/1/2007' and DOANHSO >= 2000000)

--III
--1
select MASP, TENSP
from SANPHAM
where NUOCSX = 'Trung Quoc'

--2
select MASP, TENSP
from SANPHAM
where DVT in ('cay', 'quyen')

--3
select MASP, TENSP
from SANPHAM
where MASP LIKE 'B%01'


--4
select MASP, TENSP
from SANPHAM
where 
	NUOCSX = 'Trung Quoc'
	and GIA between 30000 and 40000

--5
select MASP, TENSP
from SANPHAM
where 
	NUOCSX in ('Trung Quoc', 'Thai Lan')
	and GIA between 30000 and 40000

--6
select SOHD, TRIGIA
from HOADON
where NGHD in ('1/1/2007', '2/1/2007')

--7
select SOHD, TRIGIA
from HOADON
where month(NGHD) = 1 and year(NGHD) = 2007
order by NGHD asc, TRIGIA desc

--8
select distinct KHACHHANG.MAKH, HOTEN
from KHACHHANG, HOADON
where 
	KHACHHANG.MAKH = HOADON.MAKH 
	and NGHD = '1/1/2007'

--9
select SOHD, TRIGIA
from HOADON, NHANVIEN
where
	HOADON.MANV = NHANVIEN.MANV
	and HOTEN = 'Nguyen Van B'
	and NGHD = '28/10/2006'

--10
select distinct SANPHAM.MASP, TENSP
from SANPHAM, CTHD, KHACHHANG, HOADON
where
	CTHD.MASP = SANPHAM.MASP
	and CTHD.SOHD = HOADON.SOHD
	and HOADON.MAKH = KHACHHANG.MAKH
	and HOTEN = 'Nguyen Van A'
	and month(NGHD) = 10 and year(NGHD) = 2006

--11
select distinct SOHD
from CTHD
where MASP in ('BB01', 'BB02')

--12
select distinct SOHD
from CTHD
where 
	MASP in ('BB01', 'BB02') 
	and SL between 10 and 20

--13
select distinct SOHD
from CTHD
where MASP = 'BB01' and SL between 10 and 20
intersect
(
	select distinct SOHD
	from CTHD
	where MASP = 'BB02' and SL between 10 and 20
)

--14
select distinct SANPHAM.MASP, TENSP
from HOADON, SANPHAM, CTHD
where
	HOADON.SOHD = CTHD.SOHD
	and CTHD.MASP = SANPHAM.MASP
	and (NUOCSX = 'Trung Quoc'
	or NGHD = '1/1/2007')


--15
select MASP, TENSP
from SANPHAM
where MASP not in (select MASP from CTHD)

--16
select MASP, TENSP
from SANPHAM
where MASP not in
(
	select MASP 
	from CTHD, HOADON
	where 
		CTHD.SOHD = HOADON.SOHD
		and year(NGHD) = 2006
)


--17
select MASP, TENSP
from SANPHAM
where
	NUOCSX = 'Trung Quoc'
	and MASP not in
	(
		select MASP 
		from CTHD, HOADON
		where 
			CTHD.SOHD = HOADON.SOHD
			and year(NGHD) = 2006
	)

--18
select SOHD
from HOADON
where not exists
(
	select *
	from SANPHAM
	where NUOCSX = 'Singapore'
	and not exists
	(
		select *
		from CTHD
		where CTHD.SOHD = HOADON.SOHD
		and CTHD.MASP = SANPHAM.MASP
	)
)

--19
select SoHD
from HoaDon
where year(NgHD) = 2006 
and not exists
(
	select *
	from SanPham
	where NuocSX = 'Singapore'
	and not exists
	(
		select *
		from CTHD
		where CTHD.SoHD = HoaDon.SoHD
		and CTHD.MaSP = SanPham.MaSP
	)
)

--20
select count(*)
from HoaDon
where MaKH IS NULL

--21
select count(distinct MaSP)
from HoaDon, CTHD
where
	HoaDon.SoHD = CTHD.SoHD
	and year(NgHD) = 2006

--22
select min(TriGia) Min_TriGia, max(TriGia) Max_TriGia
from HoaDon

--23
select avg(TriGia)
from HoaDon
where year(NgHD) = 2006

--24
select sum(TriGia)
from HoaDon
where year(NgHD) = 2006

--25
select max(TriGia)
from HoaDon
where year(NgHD) = 2006

--26
select distinct HoTen
from KhachHang, HoaDon
where 
	HoaDon.MaKH = KhachHang.MaKH
	and year(NgHD) = 2006
	and TriGia = (select max(TriGia) from HoaDon where year(NgHD) = 2006)

--27
select top 3 MaKH, HoTen
from KhachHang
order by DoanhSo desc

--28
select MaSP, TenSP
from SanPham
where Gia in (
	select distinct top 3 Gia
	from SanPham
	order by Gia desc
)

--29
select MaSP, TenSP
from SanPham
where NuocSX = 'Thai Lan'
and Gia in (
	select distinct top 3 Gia
	from SanPham
	order by Gia desc
)

--30
select MaSP, TenSP
from SanPham
where NuocSX = 'Trung Quoc'
and Gia in (
	select distinct top 3 Gia
	from SanPham
	where NuocSX = 'Trung Quoc'
	order by Gia desc
)

--31
select top 3 *
from KhachHang
order by DoanhSo desc

--32
select count(*)
from SanPham
where NuocSX = 'Trung Quoc'

--33
select NuocSX, count(*) SoSP
from SanPham
group by NuocSX

--34
select NuocSX, max(Gia) Max_Gia, min(Gia) Min_Gia, avg(Gia) TB_Gia
from SanPham
group by NuocSX

--35
select NgHD, sum(TriGia) DoanhThu
from HoaDon
group by NgHD

--36
select SanPham.MaSP, sum(SL) SoLuongBan
from SanPham, HoaDon, CTHD
where
	CTHD.MaSP = SanPham.MaSP
	and CTHD.SoHD = HoaDon.SoHD
	and MONTH(NgHD) = 10 and year(NgHD) = 2006
group by SanPham.MaSP

--37
select MONTH(NgHD) Thang, sum(TriGia) DoanhThu
from HoaDon
where year(NgHD) = 2006
group by MONTH(NgHD)

--38
select SoHD
from CTHD
group by SoHD
having count(distinct MaSP) >= 4

--39 
select SoHD
from CTHD, SanPham
where
	CTHD.MaSP = SanPham.MaSP
	and NuocSX = 'Viet Nam'
group by SoHD
having count(distinct CTHD.MaSP) >= 3

--40
select KhachHang.MaKH, HoTen
from KhachHang, HoaDon
where KhachHang.MaKH = HoaDon.MaKH
group by KhachHang.MaKH, HoTen
having count(*) >= ALL(select count(*) from HoaDon group by MaKH)

--41
select MONTH(NgHD)
from HoaDon
where year(NgHD) = 2006
group by MONTH(NgHD)
having sum(TriGia) >= ALL(select sum(TriGia) from HoaDON where year(NgHD) = 2006 group by MONTH(NgHD))

--42
select top 1 with TIES SanPham.MaSP, TenSP
from SanPham, CTHD, HoaDon
where 
	SanPham.MaSP = CTHD.MaSP
	and HoaDon.SoHD = CTHD.SoHD
	and year(NgHD) = 2006
group by SanPham.MaSP, TenSP
order by sum(SL)

--43
select NuocSX, MaSP, TenSP
from SanPham SP1
where exists
(
	select NuocSX
	from SanPham SP2
	group by NuocSX
	having SP1.NuocSX = SP2.NuocSX
	and SP1.Gia = max(Gia)
)

--44
select NuocSX
from SanPham
group by NUOCSX
having count(distinct GIA) >= 3

--45
select *
from KhachHang
where MaKH in
(
	select top 1 with TIES HoaDon.MaKH
	from (select top 10 MaKH from KhachHang order by DoanhSo desc) as A
	JOIN HoaDon ON A.MaKH = HoaDon.MaKH
	group by HoaDon.MaKH
	order by count(*) desc
)

