
-- ��¼�û���½
CREATE TABLE `beiker_user_login_log` (
	`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '��ʶ',
	`user_id` INT(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '�û���ʶ',
	`user_email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '�û�����',
	`login_ip` VARCHAR(50) NOT NULL DEFAULT '' COMMENT '�û���½IP',
	`login_time` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '�û���½ʱ��',
	PRIMARY KEY (`id`)
) 
COMMENT='�û���½��־��¼'
 ENGINE=InnoDB  DEFAULT CHARSET=utf8;
 
-- �����û���ȫ�ֻ�����ģ�� 
INSERT INTO   beiker_smstemplate  (  smstitle, smscontent, smstype) 
VALUES ('TRX_BEFORE_CHECK_PHONE_CODE',  '����ǧƷ���Ķ�̬֧�������ǣ�{0}������վ����󼴿�֧������ǧƷ����','TRX_BEFORE_CHECK_PHONE_CODE'   ) ;
-- ������Ԥȡ����
insert into beiker_smstemplate (smstitle,smscontent,smstype)
  values ('TGSN_PREFETCH_ALTER_SMS_TEMPLATE','������Ԥȡ������{0},����������','TGSN_PREFETCH_ALTER_SMS_TEMPLATE');

