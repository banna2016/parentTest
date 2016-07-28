create table game(
	game_id int not null auto_increment primary key comment '��Ϸid',
	open_id varchar(50) not null comment '�û���OpenID',
	game_answer varchar(4) not null comment '��������Ϸ����ȷ��',
	create_time varchar(20) not null comment '��Ϸ����ʱ��',
	game_status int not null comment '��Ϸ״̬��0:��Ϸ�� 1:ʤ�� 2:ʧ�ܣ�',
	finish_time varchar(20) comment '��Ϸ���ʱ��'
) comment='��������Ϸ��ÿһ��';

create table game_round(
	id int not null auto_increment primary key comment '����id',
	game_id int not null comment '��Ϸid',
	open_id varchar(50) not null comment '�û���OpenID',
	guess_number varchar(4) not null comment '�û��²������',
	guess_time varchar(20) not null comment '�û��²��ʱ��',
	guess_result varchar(4) not null comment '�û��²�Ľ��,��xAyB',
	FOREIGN KEY(game_id) REFERENCES game(game_id) on delete cascade on update cascade
) comment='��������Ϸ��ÿһ�غ�';
