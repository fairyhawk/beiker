-- ��Ʒ����Ȩ��
CREATE TABLE `beiker_goods_sort_weights` (
	`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '����ID',
	`goodsid` INT(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '��ƷID',
	`newscore` DECIMAL(30,10) NOT NULL DEFAULT '0.0000000000' COMMENT '��Ʒ�÷�',
	`salesscore` DECIMAL(30,10) NOT NULL DEFAULT '0.0000000000' COMMENT '�����÷�',
	`totalscore` DECIMAL(30,10) NOT NULL DEFAULT '0.0000000000' COMMENT '�ܵ÷�',
	`manualadjust` INT(11) NOT NULL DEFAULT '0' COMMENT '�˹�������',
	`cityid` INT(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '����ID',
	`addtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
	PRIMARY KEY (`id`)
)
COMMENT='��Ʒ����Ȩ��' ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `beiker_catlog_good` ADD COLUMN `sortweights` DECIMAL(30,10) NOT NULL DEFAULT '0.0000000000' COMMENT '����Ȩ��';

ALTER TABLE beiker_goods ADD old_goods_id int(11) NOT NULL DEFAULT '0' COMMENT 'ԭ��Ʒid';

alter table beiker_trxlog add  trxlog_sub_type  char(30)  NOT NULL DEFAULT  ''  COMMENT  '������־������';
