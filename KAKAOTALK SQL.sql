create database īī����;
use īī����;

create table ��(
	���̸� char(20) not null,
	�ǹ�ȣ char(20),
	primary key (�ǹ�ȣ)
	);

Insert Into �� Values('����','1');
Insert Into �� Values('����','2');
Insert Into �� Values('����','3');
Insert Into �� Values('īī��TV','4');
Insert Into �� Values('����','5');
Insert Into �� Values('����','6');
Insert Into �� Values('FUN','7');
Insert Into �� Values('������','8');


select *
from ��;

create table ä�ù�(
	ä�ù��ȣ char(10) not null,
	ä�ù����� char(10),
	primary key (ä�ù��ȣ)
	);

Insert Into ä�ù� Values('C001','1:1ä��1');
Insert Into ä�ù� Values('C002','1:1ä��2');
Insert Into ä�ù� Values('C003','1:1ä��3');
Insert Into ä�ù� Values('C004','�׷�ä��1');
Insert Into ä�ù� Values('C005','����ä��1');

select *
from ä�ù�;

create table �޼���(
	�޼�����ȣ int not null,
	ä�ù��̸� char(10),
	�޼����ð� date,
	�޼������� char(10) not null,
	primary key (�޼�����ȣ),
	foreign key(ä�ù��̸�) references ä�ù�(ä�ù��ȣ)
	);

Insert Into �޼��� Values(111,'C001','2021-05-29','��');
Insert Into �޼��� Values(112,'C002','2021-05-05','��������');
Insert Into �޼��� Values(113,'C003','2021-05-28','����Ƽ��');
Insert Into �޼��� Values(114,'C004','2021-04-02','��');
Insert Into �޼��� Values(115,'C005','2020-12-25','����');



select *
from �޼���;

create table ȸ��(
	ȸ���̸� char(10) not null,
	�����ʻ��� char(20),
	������ char(20),
	���¸޼��� char(100),
	ID int,
	�ǹ�ȣ char(20),
	ä�ù��ȣ char(10),
	primary key (ID),
	foreign key(�ǹ�ȣ) references ��(�ǹ�ȣ),
	foreign key(ä�ù��ȣ) references ä�ù�(ä�ù��ȣ),
	);

Insert Into ȸ�� Values('������', '������ ����',null,'�����ϴ´�� �ȴ�',123456788,'1','C005');
Insert Into ȸ�� Values('��ö��', '������ ����','�ɻ���','����� ����� �����ϸ� ��� �ڽ��� �����϶�.',987655752,'8','C001');
Insert Into ȸ�� Values('�̿���', '������ ����','�������','�����ϱ������ �׻� ���и� ��ģ��.',123484343,'7','C001');
Insert Into ȸ�� Values('�ֱ⿵', null,null,'���� ��ȭ�� �Ͼ �� ������ ���� ���.',00865467,'2','C004');
Insert Into ȸ�� Values('���ֿ�', null,'��������',null,0178612368,'5','C003');
Insert Into ȸ�� Values('�ӿ���', '������ ����',null,'�ᱹ, ���� �� �ִ°� ���� ���߳� ���� �Ϸ��.',364651321,'6','C003');
Insert Into ȸ�� Values('���¿�', null,'�ϴ� ����','���� �ִ� �� ����� �ִ�.',56876511,'4','C005');
Insert Into ȸ�� Values('�ֽſ�', '������ ����','�ٴ� ����','�������� ���� �׸��� ����� ��ħ�� �� ���� ��ư���.',3563218,'5','C005');
Insert Into ȸ�� Values('������', '���� ����','��ǳ ����',null,789465134,'7','C005');
Insert Into ȸ�� Values('����ȣ', '������ ����','�ٴ� ����','1�ۼ�Ʈ�� ���ɼ�, �װ��� ���� ���̴�.',798461358,'2','C002');
Insert Into ȸ�� Values('���Ѿ�', '�Ʊ� ����','�Ʊ� ����',null,1234568623,'3','C002');
Insert Into ȸ�� Values('���̳�', null,null,null,8651005,'1','C004');

select *
from ȸ��;

create table ����(
	����QR char(20) ,
	�Ա�ID int not null,--�Ա��ϴ� ���
	������ȣ char(30) not null, -- ������ȣ
	�ڻ� int,
	primary key (����QR),
	foreign key(�Ա�ID) references ȸ��(ID)
	);

Insert Into ���� Values('��23��54', 123456788, '1523 3546 6541 3546', 862000000 );
Insert Into ���� Values('��88��45', 987655752, '6453 8465 1352 6485', 2000000 );
Insert Into ���� Values('��34��78', 123484343, '4545 2564 3586 3548', 5600000 );
Insert Into ���� Values('��61��75', 00865467, '4566 4635 6845 6975', 5000000 );
Insert Into ���� Values('��64��44', 0178612368, '6522 6845 3289 5984', 862000000 );
Insert Into ���� Values('��38��14', 364651321, '2313 5163 6846 2368', 259000000 );
Insert Into ���� Values('��18��73', 56876511, '2351 6845 3988 6878', 18000000 );
Insert Into ���� Values('��69��65', 3563218, '5465 6885 7962 2196', 56000000 );
Insert Into ���� Values('��69��65', 789465134, '1536 6847 1325 6512', 16000000 );
Insert Into ���� Values('��69��65', 798461358, '6153 9846 3546 9851', 98000000 );
Insert Into ���� Values('ī69��65', 1234568623, '3546 9465 3289 2962', 21000000 );
Insert Into ���� Values('��69��65', 8651005, '8621 9643 5256 7335', 1000000 );

select *
from ����;

----------------------------------------------------------------------------
-- 1. ȸ�� ������ �����ϴ� ä�ù��ȣ��? 
select ȸ���̸�, ȸ��.ä�ù��ȣ
from ȸ��
where ȸ���̸�='������';

-- 2. C005ä�ù濡 �����ϰ��ִ� ȸ���̸���?
select ȸ���̸�, ä�ù��ȣ
from ȸ��
where ä�ù��ȣ='C005';

-- 3. '����'���� �����ϴ� ȸ���� �̸��� �� ȸ���� �����ʻ���, ������, ���¸޼����� ������.
select ���̸�,ȸ���̸�, �����ʻ���, ������, ���¸޼���
from ȸ��,��
where ȸ��.�ǹ�ȣ = ��.�ǹ�ȣ and ��.�ǹ�ȣ='1';

-- 4. �����ʻ����� �������� ���� ȸ���� �̸��� �װ� ���� ä�ù��� ��ȣ�� ������?
select ȸ���̸�, �����ʻ���, ä�ù��ȣ
from ȸ��
where ȸ��.�����ʻ��� is null;

-- 5. �ڽ��� ������ ������ �������� ������ ȸ���� �̸��� ȸ���� ���� ä�ù��� �̸���?
select ȸ���̸�, �����ʻ���, ä�ù�.ä�ù�����
from ȸ��, ä�ù�
where ȸ��.ä�ù��ȣ = ä�ù�.ä�ù��ȣ AND ȸ��.�����ʻ��� Like '������ ����';

-- 6. C002 ä�ù��� �޼��� ����� �� ä�ù濡 ���� ȸ������ �̸���?
select ä�ù�.ä�ù��ȣ,ä�ù�����, ȸ���̸�
from ä�ù�, ȸ��
where ȸ��.ä�ù��ȣ=ä�ù�.ä�ù��ȣ and ä�ù�.ä�ù��ȣ='C002';

-- 7. '����'���� �����ϴ� ȸ���� ���������?
select ���̸�, ȸ���̸�, �����ʻ���, ������, ���¸޼���, ID,ȸ��.�ǹ�ȣ,ä�ù��ȣ
from ��, ȸ��
where ��.�ǹ�ȣ=ȸ��.�ǹ�ȣ and ���̸�='����';

-- 8. ���¸޼����� �������� ���� ȸ���� ä�ù��̸� , ä�ù� �޼����ð�, �޼��������� ������.
select ä�ù��̸�,�޼����ð�, �޼�������
from �޼���
where ä�ù��̸� in ( select ä�ù��ȣ
				from ä�ù�
				where ä�ù��ȣ in (
									select ä�ù��ȣ
									from ȸ��
									where ���¸޼��� is null
									)
				);

-- 9. '�׷�ä��1'���� �޼����ð��� ������?
select ä�ù�����,�޼����ð�, �޼�������
from ä�ù�, �޼���
where ä�ù�.ä�ù��ȣ=�޼���.ä�ù��̸� and ä�ù�.ä�ù�����='�׷�ä��1';

-- 10. ����ä�ù濡 ���ϴ� ȸ���� �̸��� ID��?
select ȸ���̸�,ID
from ȸ��,ä�ù�
where ȸ��.ä�ù��ȣ=ä�ù�.ä�ù��ȣ AND ä�ù�.ä�ù�����='����ä��1';

-- 11. �׷�ä�ù��� �̿��ϴ� ȸ���� �̸��� �޼�����ȣ, �޼��� �ð��� ������ �����ټ����� ������.
select ȸ��.ä�ù��ȣ,ȸ���̸�, �޼�����ȣ, �޼����ð�
from ȸ��, �޼���,ä�ù�
where ȸ��.ä�ù��ȣ=ä�ù�.ä�ù��ȣ and ä�ù�.ä�ù��ȣ=�޼���.ä�ù��̸� and ȸ��.ä�ù��ȣ='C004' 
Order By ȸ��.ä�ù��ȣ Asc;

-- 12. �޼����� '��'���������� ȸ���� �̸��� ID��?
select ȸ���̸�, ID
from ȸ��
where ä�ù��ȣ in ( select ä�ù��ȣ
						from ä�ù�
						where ä�ù��ȣ in ( select ä�ù��̸�
												from �޼���
												where �޼������� = '��'
												)
						);


-- 13. 'C005'ä�ù��� �̿��ϴ� ȸ�� �� ������ ������ ���� ȸ����?
select ȸ���̸�, �����ʻ���
from ȸ��
where ä�ù��ȣ='C005' and �����ʻ��� is null;

-- 14. �����ʻ����� �������� �ʴ� ȸ�� �� ���¸޼����� ������ ȸ���� ���¸޼����� �� ȸ���� ���� �׷�ä�ù���?
select ȸ���̸�,�����ʻ���,���¸޼���,ä�ù��ȣ
from ȸ��
where �����ʻ��� is null and ���¸޼��� is not null;

-- 15. '�ֽſ�'ȸ���� �����ʻ���, �ڻ�, ���� ä�ù��ȣ, ������ȣ�� ������. 
select ȸ���̸�, �����ʻ���, �ڻ�, ä�ù��ȣ,������ȣ
from ȸ��,����
where ����.�Ա�ID = ȸ��.ID and ȸ���̸� = '�ֽſ�';

-- 16. �ڻ� 5600000�� �̻��� �����ϰ��ִ� ȸ���� ������ ȸ���̸� �����ټ����� ������.
select �ڻ�, ȸ���̸�,�����ʻ���, ������, ���¸޼���, ID,�ǹ�ȣ,ä�ù��ȣ
from ����, ȸ��
where ����.�Ա�ID = ȸ��.ID and �ڻ� >= 5600000 
Order By ȸ���̸� Asc;

-- 17. 2021�� 5�� 5�� ������ �޼����ð����� �δ� ä�ù��� �̸��� �� ä�ù濡 ���� ȸ���� ������?
select  �޼����ð�,ä�ù��̸�,ä�ù�����
from �޼���, ä�ù�
where �޼���.ä�ù��̸� = ä�ù�.ä�ù��ȣ and �޼����ð�<'2021-05-05';

-- 18. �����ʻ����� ������ ȸ������?
select count(*) as '�����ʻ��� ������ ȸ����'
from ȸ��
where �����ʻ��� is not null;


						

-- 19. īī��TV �Ǵ� ������ ���̸����� �� ȸ���� �̸��� ������.
select ȸ���̸�
from ȸ��
where �ǹ�ȣ IN ( select �ǹ�ȣ
							from ��
							where ���̸�='īī��TV' OR ���̸�='����'
							);


-- 20. �Ա�ID�� 1�� �����ϴ� ȸ���� ��������� ������.
select �Ա�ID,ȸ���̸�, �����ʻ���, ������, ���¸޼���,ID,�ǹ�ȣ,ä�ù��ȣ
from ȸ��, ����
where ȸ��.ID = ����.�Ա�ID and ����.�Ա�ID like '1%';


create view ����Ƽ��
as select *
	from �޼���
	where �޼������� = '����Ƽ��';

select *
from ����Ƽ��;


create view ä�ù��ȣ
as select ä�ù�����, ȸ���̸�
	from ä�ù�, ȸ��
	where ä�ù�.ä�ù��ȣ=ȸ��.ä�ù��ȣ and ä�ù�.ä�ù�����='�׷�ä��1';

select *
from ä�ù��ȣ;
