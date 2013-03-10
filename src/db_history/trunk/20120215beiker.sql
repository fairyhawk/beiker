DROP TABLE IF EXISTS `beiker_account_notify_record`;
CREATE TABLE `beiker_account_notify_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '����',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '�˻�id',
  `sub_account_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '���˻�ID',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '�û�ID',
  `notify_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '֪ͨʱ��',
  `create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '����ʱ��',
  `lose_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '����ʱ��',
  `lose_balance` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '���ڽ��',
  `notify_type` char(15) NOT NULL DEFAULT '' COMMENT '֪ͨʱ������ͣ�30DAY,3DAY��',
  `is_notify` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '�Ƿ�֪ͨ',
  `version` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '�ֹ����汾��',
  `description` char(50) NOT NULL DEFAULT '' COMMENT '��ע',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='������֪ͨ��¼';


insert into beiker_smstemplate (smstitle,smscontent,smstype) values ('SMSACCOUNTNOTIFY_THREE','����ǧƷ��������У���{0}Ԫ���ڽ��ڹ��ڣ��뾡��ʹ�ã�����ʹ������ԡ��Ժ�����1�����þ���ǧƷ��(ǧƷ��)','SMSACCOUNTNOTIFY_THREE');

insert into beiker_smstemplate (smstitle,smscontent,smstype) values ('SMSACCOUNTNOTIFY_THIRTY','����ǧƷ������У���{0}Ԫ����{1}���ڣ��뾡��ʹ�ã�����ʹ������ԣ��Ժ�����1�����þ���ǧƷ��(ǧƷ��)','SMSACCOUNTNOTIFY_THIRTY');
