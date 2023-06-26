create database 카카오톡;
use 카카오톡;

create table 탭(
	탭이름 char(20) not null,
	탭번호 char(20),
	primary key (탭번호)
	);

Insert Into 탭 Values('뉴스','1');
Insert Into 탭 Values('공연','2');
Insert Into 탭 Values('연예','3');
Insert Into 탭 Values('카카오TV','4');
Insert Into 탭 Values('쇼핑','5');
Insert Into 탭 Values('뮤직','6');
Insert Into 탭 Values('FUN','7');
Insert Into 탭 Values('스포츠','8');


select *
from 탭;

create table 채팅방(
	채팅방번호 char(10) not null,
	채팅방종류 char(10),
	primary key (채팅방번호)
	);

Insert Into 채팅방 Values('C001','1:1채팅1');
Insert Into 채팅방 Values('C002','1:1채팅2');
Insert Into 채팅방 Values('C003','1:1채팅3');
Insert Into 채팅방 Values('C004','그룹채팅1');
Insert Into 채팅방 Values('C005','오픈채팅1');

select *
from 채팅방;

create table 메세지(
	메세지번호 int not null,
	채팅방이름 char(10),
	메세지시간 date,
	메세지내용 char(10) not null,
	primary key (메세지번호),
	foreign key(채팅방이름) references 채팅방(채팅방번호)
	);

Insert Into 메세지 Values(111,'C001','2021-05-29','글');
Insert Into 메세지 Values(112,'C002','2021-05-05','음성파일');
Insert Into 메세지 Values(113,'C003','2021-05-28','기프티콘');
Insert Into 메세지 Values(114,'C004','2021-04-02','글');
Insert Into 메세지 Values(115,'C005','2020-12-25','사진');



select *
from 메세지;

create table 회원(
	회원이름 char(10) not null,
	프로필사진 char(20),
	배경사진 char(20),
	상태메세지 char(100),
	ID int,
	탭번호 char(20),
	채팅방번호 char(10),
	primary key (ID),
	foreign key(탭번호) references 탭(탭번호),
	foreign key(채팅방번호) references 채팅방(채팅방번호),
	);

Insert Into 회원 Values('염진희', '강아지 사진',null,'생각하는대로 된다',123456788,'1','C005');
Insert Into 회원 Values('김철수', '고양이 사진','꽃사진','당신의 노력을 존중하며 당신 자신을 존중하라.',987655752,'8','C001');
Insert Into 회원 Values('이영희', '본인의 사진','명언사진','성공하기까지는 항상 실패를 거친다.',123484343,'7','C001');
Insert Into 회원 Values('최기영', null,null,'작은 변화가 일어날 때 진정한 삶을 산다.',00865467,'2','C004');
Insert Into 회원 Values('성주원', null,'가족사진',null,0178612368,'5','C003');
Insert Into 회원 Values('임연희', '본인의 사진',null,'결국, 믿을 수 있는건 내가 버텨낸 오늘 하루다.',364651321,'6','C003');
Insert Into 회원 Values('정태영', null,'하늘 사진','삶이 있는 한 희망은 있다.',56876511,'4','C005');
Insert Into 회원 Values('최신영', '본인의 사진','바다 사진','오랫동안 꿈을 그리는 사람은 마침내 그 꿈을 닮아간다.',3563218,'5','C005');
Insert Into 회원 Values('김윤희', '빵집 사진','단풍 사진',null,789465134,'7','C005');
Insert Into 회원 Values('이현호', '떡볶이 사진','바다 사진','1퍼센트의 가능성, 그건이 나의 길이다.',798461358,'2','C002');
Insert Into 회원 Values('조한아', '아기 사진','아기 사진',null,1234568623,'3','C002');
Insert Into 회원 Values('김이나', null,null,null,8651005,'1','C004');

select *
from 회원;

create table 지갑(
	지갑QR char(20) ,
	입금ID int not null,--입금하는 사람
	결제번호 char(30) not null, -- 결제번호
	자산 int,
	primary key (지갑QR),
	foreign key(입금ID) references 회원(ID)
	);

Insert Into 지갑 Values('고23마54', 123456788, '1523 3546 6541 3546', 862000000 );
Insert Into 지갑 Values('마88버45', 987655752, '6453 8465 1352 6485', 2000000 );
Insert Into 지갑 Values('스34버78', 123484343, '4545 2564 3586 3548', 5600000 );
Insert Into 지갑 Values('소61버75', 00865467, '4566 4635 6845 6975', 5000000 );
Insert Into 지갑 Values('아64버44', 0178612368, '6522 6845 3289 5984', 862000000 );
Insert Into 지갑 Values('나38버14', 364651321, '2313 5163 6846 2368', 259000000 );
Insert Into 지갑 Values('해18버73', 56876511, '2351 6845 3988 6878', 18000000 );
Insert Into 지갑 Values('디69버65', 3563218, '5465 6885 7962 2196', 56000000 );
Insert Into 지갑 Values('구69자65', 789465134, '1536 6847 1325 6512', 16000000 );
Insert Into 지갑 Values('지69사65', 798461358, '6153 9846 3546 9851', 98000000 );
Insert Into 지갑 Values('카69러65', 1234568623, '3546 9465 3289 2962', 21000000 );
Insert Into 지갑 Values('버69츠65', 8651005, '8621 9643 5256 7335', 1000000 );

select *
from 지갑;

----------------------------------------------------------------------------
-- 1. 회원 염진희가 참여하는 채팅방번호는? 
select 회원이름, 회원.채팅방번호
from 회원
where 회원이름='염진희';

-- 2. C005채팅방에 참여하고있는 회원이름은?
select 회원이름, 채팅방번호
from 회원
where 채팅방번호='C005';

-- 3. '뉴스'탭을 소유하는 회원의 이름과 그 회원의 프로필사진, 배경사진, 상태메세지를 보여라.
select 탭이름,회원이름, 프로필사진, 배경사진, 상태메세지
from 회원,탭
where 회원.탭번호 = 탭.탭번호 and 탭.탭번호='1';

-- 4. 프로필사진을 설정하지 않은 회원의 이름과 그가 속한 채팅방의 번호와 종류은?
select 회원이름, 프로필사진, 채팅방번호
from 회원
where 회원.프로필사진 is null;

-- 5. 자신의 사진을 프로필 사진으로 설정한 회원의 이름과 회원이 속한 채팅방의 이름은?
select 회원이름, 프로필사진, 채팅방.채팅방종류
from 회원, 채팅방
where 회원.채팅방번호 = 채팅방.채팅방번호 AND 회원.프로필사진 Like '본인의 사진';

-- 6. C002 채팅방의 메세지 내용과 그 채팅방에 속한 회원들의 이름은?
select 채팅방.채팅방번호,채팅방종류, 회원이름
from 채팅방, 회원
where 회원.채팅방번호=채팅방.채팅방번호 and 채팅방.채팅방번호='C002';

-- 7. '뮤직'탭을 소유하는 회원의 모든정보는?
select 탭이름, 회원이름, 프로필사진, 배경사진, 상태메세지, ID,회원.탭번호,채팅방번호
from 탭, 회원
where 탭.탭번호=회원.탭번호 and 탭이름='뮤직';

-- 8. 상태메세지를 설정하지 않은 회원의 채팅방이름 , 채팅방 메세지시간, 메세지내용을 보여라.
select 채팅방이름,메세지시간, 메세지내용
from 메세지
where 채팅방이름 in ( select 채팅방번호
				from 채팅방
				where 채팅방번호 in (
									select 채팅방번호
									from 회원
									where 상태메세지 is null
									)
				);

-- 9. '그룹채팅1'방의 메세지시간과 내용은?
select 채팅방종류,메세지시간, 메세지내용
from 채팅방, 메세지
where 채팅방.채팅방번호=메세지.채팅방이름 and 채팅방.채팅방종류='그룹채팅1';

-- 10. 오픈채팅방에 속하는 회원의 이름과 ID는?
select 회원이름,ID
from 회원,채팅방
where 회원.채팅방번호=채팅방.채팅방번호 AND 채팅방.채팅방종류='오픈채팅1';

-- 11. 그룹채팅방을 이용하는 회원의 이름과 메세지번호, 메세지 시간과 내용을 가나다순으로 보여라.
select 회원.채팅방번호,회원이름, 메세지번호, 메세지시간
from 회원, 메세지,채팅방
where 회원.채팅방번호=채팅방.채팅방번호 and 채팅방.채팅방번호=메세지.채팅방이름 and 회원.채팅방번호='C004' 
Order By 회원.채팅방번호 Asc;

-- 12. 메세지에 '글'내용을보낸 회원의 이름과 ID는?
select 회원이름, ID
from 회원
where 채팅방번호 in ( select 채팅방번호
						from 채팅방
						where 채팅방번호 in ( select 채팅방이름
												from 메세지
												where 메세지내용 = '글'
												)
						);


-- 13. 'C005'채팅방을 이용하는 회원 중 프로필 사진이 없는 회원은?
select 회원이름, 프로필사진
from 회원
where 채팅방번호='C005' and 프로필사진 is null;

-- 14. 프로필사진을 설정하지 않는 회원 중 상태메세지를 설정한 회원의 상태메세지와 그 회원이 속한 그룹채팅방은?
select 회원이름,프로필사진,상태메세지,채팅방번호
from 회원
where 프로필사진 is null and 상태메세지 is not null;

-- 15. '최신영'회원의 프로필사진, 자산, 속한 채팅방번호, 결제번호를 보여라. 
select 회원이름, 프로필사진, 자산, 채팅방번호,결제번호
from 회원,지갑
where 지갑.입금ID = 회원.ID and 회원이름 = '최신영';

-- 16. 자산 5600000원 이상을 소유하고있는 회원의 정보를 회원이름 가나다순으로 보여라.
select 자산, 회원이름,프로필사진, 배경사진, 상태메세지, ID,탭번호,채팅방번호
from 지갑, 회원
where 지갑.입금ID = 회원.ID and 자산 >= 5600000 
Order By 회원이름 Asc;

-- 17. 2021년 5월 5일 이전을 메세지시간으로 두는 채팅방의 이름과 그 채팅방에 속한 회원의 정보는?
select  메세지시간,채팅방이름,채팅방종류
from 메세지, 채팅방
where 메세지.채팅방이름 = 채팅방.채팅방번호 and 메세지시간<'2021-05-05';

-- 18. 프로필사진을 설정한 회원수는?
select count(*) as '프로필사진 설정한 회원수'
from 회원
where 프로필사진 is not null;


						

-- 19. 카카오TV 또는 뉴스를 탭이름으로 둔 회원의 이름을 보여라.
select 회원이름
from 회원
where 탭번호 IN ( select 탭번호
							from 탭
							where 탭이름='카카오TV' OR 탭이름='뉴스'
							);


-- 20. 입금ID가 1로 시작하는 회원의 모든정보를 보여라.
select 입금ID,회원이름, 프로필사진, 배경사진, 상태메세지,ID,탭번호,채팅방번호
from 회원, 지갑
where 회원.ID = 지갑.입금ID and 지갑.입금ID like '1%';


create view 기프티콘
as select *
	from 메세지
	where 메세지내용 = '기프티콘';

select *
from 기프티콘;


create view 채팅방번호
as select 채팅방종류, 회원이름
	from 채팅방, 회원
	where 채팅방.채팅방번호=회원.채팅방번호 and 채팅방.채팅방종류='그룹채팅1';

select *
from 채팅방번호;

