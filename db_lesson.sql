Q1.
create table departments (
department_id int auto_increment primary key,
name varchar(20) not null,
created_at timestamp default current_timestamp,
update_at timestamp default current_timestamp on update current_timestamp
);

Q2.
alter table people add department_id int unsigned;
alter table people modify department_id text after email;

Q3.
insert into departments (name)
values
('営業'),
('開発'),
('経理'),
('人事'),
('情報システム');

insert into people (name, email, department_id, age, gender)
values
('赤井爽太', 'akai@beyond-works.co.jp', 1, 22, 1),
('橙野あかり', 'touno@beyond-works.co.jp', 1, 23, 2),
('青木氷菓', 'aoki@beyond-works.co.jp', 3, 19, 2),
('緑川怪人', 'midorikawa@beyond-works.co.jp', 2, 25, 1),
('輪鍋和人', 'wanabe@beyond-works.co.jp', 2, 71, 1),
('月影真雛', 'tsukikage@beyond-works.co.jp', 2, 18, 2),
('神屋敷緋華理', 'hi_kamiyashiki@beyond-works.co.jp', 2, 21, 2),
('神屋敷吹雪', 'hu_kamiyashiki@beyond-works.co.jp', 1, 21, 1),
('音部春', 'otobe@beyond-works.co.jp', 4, 20, 1),
('黒崎瑪瑠', 'kurosaki@beyond-works.co.jp', 5, 21, 2);

insert into reports (person_id, content)
values
(7, '僕のことはMr.担々麵と呼びたまえ！'),
(8, 'あいつ、日報までうるさいのはなんなの……'),
(9, '二人ともお元気そうで何よりですが、他の方に迷惑は掛けないように。'),
(10, '一体なぜこんなところでこんなことを……俺はあいつを探さなければ'),
(11, 'うーん、この辺りには霊は居ないみたいだね。それにあの子の姿もないみたいだ'),
(12, '私が知っている「この星」ですらないみたい。ここはいったいどこだろう？'),
(13, 'ふーん、なんだかおもしろそうなところね。わたしを売り込むなら、吹雪に任せて間違いないし'),
(14, '変なシステムが出来上がらないといいんだが……緋華理は自重してくれないしな'),
(15, '僕は作曲くらいしかできないのに、人事？あいつに任せようかな……'),
(16, 'えっと、怪人先輩、どこですか～？');

Q4.
UPDATE people SET department_id = 2 WHERE department_id is null;

Q5.
select * from people where gender = 1 order by age desc;

Q6.
"peopleテーブルからdepartment_idが1であるレコードのname,email,ageカラムをcreated_atカラムの数値の昇順で表示する";

Q7.
select name from people where gender = 1 and 39 < age and age < 50 or gender = 2 and 19 < age and age < 30;

Q8.
select * from people where department_id = 1 order by age;

Q9.
select avg(age) as average_age from people where department_id = 2;

Q10.
SELECT p.name as person_name, d.name as department_name, r.content FROM people p join departments d on p.department_id = d.department_id JOIN reports r ON p.person_id = r.person_id;

Q11.
SELECT p.name FROM people p LEFT OUTER JOIN reports r USING (person_id) where r.content is null;