-- ��800CPS
alter table beiker_cps_tuan800 add trx_rule_id int(11) unsigned DEFAULT '0' COMMENT '���ױ��ʽ����ID��ֵΪ3ʱ������ɱ��Ʒ';



--  �������û�ע���ʼ�ģ��

INSERT INTO beiker_emailtemplate(templatecode,templatecontent,templatesubject)
VALUES('NEW_REGIST_VALIDATE','
<table width="700" border="0" align="center" cellpadding="0" cellspacing="0" style="font-size:14px;">
  <tr>
    <td><a href="http://www.qianpin.com?abacusoutsid=edm_v2_{3}_tnl_sow_r9940" target="_blank"><img src="http://c2.qianpincdn.com/jsp/images_a/logo.jpg" width="254" height="78" border="0" /></a></td>
    <td align="right"><a href="http://www.qianpin.com?abacusoutsid=edm_v2_{3}_tnl_sow_r9940" target="_blank"><img src="http://c2.qianpincdn.com/jsp/images_a/topicon.jpg" width="171" height="78" border="0" /></a></td>
  </tr>
  <tr>
    <td height="33" colspan="2" bgcolor="#3c3c3c"><table width="700" border="0" cellspacing="0" cellpadding="0" style="color:#fff;">
      <tr>
        <td width="50" height="33" align="center">&nbsp;</td>
        <td width="80" align="center"><a href="http://www.qianpin.com/ms.html?abacusoutsid=edm_v2_{3}_tnl_sow_r9940" 
			target="_blank" style="color:#fff;font-size:14px; font-weight:bold; text-decoration:none;">��ʳ</a></td>
        <td width="133" align="center"><a href="http://www.qianpin.com/xxyl.html?abacusoutsid=edm_v2_{3}_tnl_sow_r9940" 
			target="_blank" style="color:#fff;font-size:14px; font-weight:bold; text-decoration:none;">��������</a></td>
        <td width="115" align="center"><a href="http://www.qianpin.com/jdly.html?abacusoutsid=edm_v2_{3}_tnl_sow_r9940" 
		    target="_blank" style="color:#fff;font-size:14px; font-weight:bold; text-decoration:none;">�Ƶ�����</a></td>
        <td width="104" align="center"><a href="http://www.qianpin.com/lr.html?abacusoutsid=edm_v2_{3}_tnl_sow_r9940" 
			target="_blank" style="color:#fff;font-size:14px; font-weight:bold; text-decoration:none;">����</a></td>
        <td width="104" align="center"><a href="http://www.qianpin.com/shfw.html?abacusoutsid=edm_v2_{3}_tnl_sow_r9940" 
			target="_blank" style="color:#fff;font-size:14px; font-weight:bold; text-decoration:none;">�������</a></td>
        <td width="50" align="center">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="2" bgcolor="#fff4e8" style="padding:20px;">
    	<table width="660" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>
           	  <table width="657" border="0" cellspacing="0" cellpadding="0" style="border:1px solid #ffc98d">
                  <tr>
                    <td bgcolor="#FFFFFF" style="font-size:14px; font-weight:bold; padding:20px;">�װ���ǧƷ���û���</td>
                  </tr>
                  <tr>
                    <td bgcolor="#FFFFFF" style=" text-indent:2em;line-height:22px; padding:0 20px; font-size:14px;">
                    <p style="line-height:25px; margin:0;">����{0} �ύ��������֤���롣</p>
                    <p style="line-height:25px; margin:0;">���������������������֤��</p>
                    <p style="line-height:25px; margin:0;"><a href="{1}" target="_blank" style="color:#06F;">{1}</a></p>
                    <p style="line-height:25px; margin:0;">��������޷����������ӣ��뽫�����Ӹ��Ƶ��������ַ������ʣ�</p>
                    <p style="line-height:25px; margin:0;">���ʼ���ϵͳ�Զ�����������ظ���</p>
                    <p style="line-height:25px; margin:20px 0 0 0;">ǧƷ��</p>
                    <p style="line-height:25px; margin:0;">{2}</p></td>
                  </tr>
                  <tr>
                    <td height="50" align="right" bgcolor="#FFFFFF">&nbsp;</td>
                  </tr>
                </table>
            </td>
          </tr>
        </table>
    </td>
  </tr>
  <tr>
    <td height="50" colspan="2" align="center" style="font-size:12px;">������Ժ����յ������ʼ�������<a target="_blank" href="mailto:tuiding@qianpin.com?subject=�˶�&abacusoutsid=edm_v2_{3}_tnl_sow_r9940" style="color:#000;">ȡ������</a></td>
  </tr>
</table>','ǧƷ������ע����֤�ʼ�');






INSERT INTO beiker_emailtemplate(templatecode,templatecontent,templatesubject)
VALUES('NEW_REGIST_SUCCESS','
<table width="700" border="0" align="center" cellpadding="0" cellspacing="0" style="font-size:14px;">
  <tr>
    <td><a href="http://www.qianpin.com?abacusoutsid=edm_v2_{1}_tnl_sow_r9840" target="_blank">
	<img src="http://c2.qianpincdn.com/jsp/images_a/logo.jpg" width="254" height="78" border="0" /></a></td>
    <td align="right"><a href="http://www.qianpin.com?abacusoutsid=edm_v2_{1}_tnl_sow_r9840" target="_blank">
	<img src="http://c2.qianpincdn.com/jsp/images_a/topicon.jpg" width="171" height="78" border="0" /></a></td>
  </tr>
  <tr>
    <td height="33" colspan="2" bgcolor="#3c3c3c"><table width="700" border="0" cellspacing="0" cellpadding="0" style="color:#fff;">
      <tr>
        <td width="50" height="33" align="center">&nbsp;</td>
        <td width="80" align="center"><a href="http://www.qianpin.com/ms.html?abacusoutsid=edm_v2_{1}_tnl_sow_r9840" target="_blank" style="color:#fff;font-size:14px; font-weight:bold; text-decoration:none;">��ʳ</a></td>
        <td width="133" align="center"><a href="http://www.qianpin.com/xxyl.html?abacusoutsid=edm_v2_{1}_tnl_sow_r9840" target="_blank" style="color:#fff;font-size:14px; font-weight:bold; text-decoration:none;">��������</a></td>
        <td width="115" align="center"><a href="http://www.qianpin.com/jdly.html?abacusoutsid=edm_v2_{1}_tnl_sow_r9840" target="_blank" style="color:#fff;font-size:14px; font-weight:bold; text-decoration:none;">�Ƶ�����</a></td>
        <td width="104" align="center"><a href="http://www.qianpin.com/lr.html?abacusoutsid=edm_v2_{1}_tnl_sow_r9840" target="_blank" style="color:#fff;font-size:14px; font-weight:bold; text-decoration:none;">����</a></td>
        <td width="104" align="center"><a href="http://www.qianpin.com/shfw.html?abacusoutsid=edm_v2_{1}_tnl_sow_r9840" target="_blank" style="color:#fff;font-size:14px; font-weight:bold; text-decoration:none;">�������</a></td>
        <td width="50" align="center">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="2" bgcolor="#fff4e8" style="padding:20px;">
    	<table width="660" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>
           	  <table width="657" border="0" cellspacing="0" cellpadding="0" style="border:1px solid #ffc98d">
                  <tr>
                    <td colspan="2" bgcolor="#FFFFFF" style="font-size:14px; font-weight:bold; padding:20px;">�װ���ǧƷ���û���</td>
                  </tr>
                  <tr>
                    <td colspan="2" bgcolor="#FFFFFF" style=" text-indent:2em;line-height:22px; padding:0 20px; font-size:14px;">
                    <p style="line-height:35px; margin:0;">����ǧƷ�������� <strong style="font-family:Arial, Helvetica, sans-serif;">{0}</strong> ��֤�ɹ���������ʹ�ô������¼ǧƷ����</p>
                    <p style="line-height:35px; margin:0;">������ʳ�������͡���ӰƱ����������<a href="http://www.qianpin.com?abacusoutsid=edm_v2_{1}_tnl_sow_r9840" target="_blank" style="color:#3974f2; font-family:Arial, Helvetica, sans-serif;" >http://www.qianpin.com</a></p>
                    <p style="line-height:25px; margin:0;">&nbsp;</p></td>
                  </tr>
                  <tr>
                    <td width="326" height="12" align="right" bgcolor="#FFFFFF"></td>
                    <td width="329" height="85" rowspan="2" align="left" bgcolor="#FFFFFF"><a target="_blank" href="http://www.qianpin.com/goods/searchGoodsByProperty.do?abacusoutsid=edm_v2_{1}_tnl_sow_r9840" style="color:#3974f2; font-size:14px; font-weight:bold; margin-left:8px;">����������Ʒ&gt;&gt;</a></td>
                  </tr>
                  <tr>
                    <td align="right" bgcolor="#FFFFFF"><a target="_blank" href="http://www.qianpin.com/miaosha/listMiaoSha.do?status=1&abacusoutsid=edm_v2_{1}_tnl_sow_r9840"><img src="http://c2.qianpincdn.com/jsp/images_a/jrmsbtn.png" width="126" height="50" border="0" /></a></td>
                  </tr>
                  <tr>
                    <td height="20" colspan="2" bgcolor="#FFFFFF">&nbsp;</td>
                  </tr>
                </table>
            </td>
          </tr>
        </table>
    </td>
  </tr>
  <tr>
    <td height="50" colspan="2" align="center" style="font-size:12px;">������Ժ����յ������ʼ�������<a target="_blank" href="mailto:tuiding@qianpin.com?subject=�˶�&abacusoutsid=edm_v2_{1}_tnl_sow_r9840" style="color:#000;">ȡ������</a></td>
  </tr>
</table>','ǧƷ��������֤�ɹ��ʼ�');




-- ����ʯ��ׯ��Ȧ

INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600100,'������',0,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600101,'�����̳�',10600100,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600102,'��������',10600100,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600103,'�㰲���',10600100,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600104,'ʡ�����',10600100,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600105,'�����¹㳡',10600100,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600106,'�����ٻ�',10600100,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600107,'��ɽ��·',10600100,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600108,'��������������',10600100,106);


INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600200,'ԣ����',0,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600201,'���л�԰',10600200,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600202,'���͹�԰',10600200,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600203,'��ʯ��',10600200,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600204,'�����̳�',10600200,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600205,'���㳡',10600200,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600206,'��ɽ������',10600200,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600207,'���ʳ�',10600200,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600208,'��������',10600200,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600209,'ԣ������������',10600200,106);



INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600300,'�Ŷ���',0,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600301,'�ֻ��',10600300,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600302,'�˺��ſ���վ',10600300,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600303,'ƽ�������',10600300,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600304,'����������',10600300,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600305,'�Ŷ�����������',10600300,106);

INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600400,'������',0,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600401,'��վ',10600400,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600402,'�°ٹ㳡',10600400,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600403,'�������',10600400,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600404,'������',10600400,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600405,'���Ѱٻ�',10600400,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600406,'��ɽ��·',10600400,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600407,'������',10600400,106);    
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600408,'�л����',10600400,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600409,'��������������',10600400,106);

INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600500,'�»���',0,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600501,'ˮ�Ϲ�԰',10600500,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600502,'ʯ��ׯ��վ',10600500,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600503,'���깫԰',10600500,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600504,'��Ԫ�ٻ�',10600500,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600505,'ʡ��Ժ',10600500,106);
INSERT INTO beiker_region_property(id,region_name,parentid,areaid) VALUE(10600506,'�»�����������',10600500,106);


update beiker_region_property brp set brp.region_enname='changanqu' where brp.id=10600100;
update beiker_region_property brp set brp.region_enname='beiguoshangcheng' where brp.id=10600101;
update beiker_region_property brp set brp.region_enname='beiguodongshang' where brp.id=10600102;
update beiker_region_property brp set brp.region_enname='guangandajie' where brp.id=10600103;
update beiker_region_property brp set brp.region_enname='shengbowuguan' where brp.id=10600104;
update beiker_region_property brp set brp.region_enname='xiantianxiaguangchang' where brp.id=10600105;
update beiker_region_property brp set brp.region_enname='jianhuabaihuo' where brp.id=10600106;
update beiker_region_property brp set brp.region_enname='zhongshandonglu' where brp.id=10600107;
update beiker_region_property brp set brp.region_enname='10600108' where brp.id=10600108;
update beiker_region_property brp set brp.region_enname='yuhuaqu' where brp.id=10600200;
update beiker_region_property brp set brp.region_enname='kongzhonghuayuan' where brp.id=10600201;
update beiker_region_property brp set brp.region_enname='shijigongyuan' where brp.id=10600202;
update beiker_region_property brp set brp.region_enname='dashimen' where brp.id=10600203;
update beiker_region_property brp set brp.region_enname='huaiteshangcheng' where brp.id=10600204;
update beiker_region_property brp set brp.region_enname='wandaguangchang' where brp.id=10600205;
update beiker_region_property brp set brp.region_enname='tianshanhaishijie' where brp.id=10600206;
update beiker_region_property brp set brp.region_enname='guojicheng' where brp.id=10600207;
update beiker_region_property brp set brp.region_enname='dongkaifaqu' where brp.id=10600208;
update beiker_region_property brp set brp.region_enname='10600209' where brp.id=10600209;
update beiker_region_property brp set brp.region_enname='qiaodongqu' where brp.id=10600300;
update beiker_region_property brp set brp.region_enname='lehuicheng' where brp.id=10600301;
update beiker_region_property brp set brp.region_enname='yunheqiaokeyunzhan' where brp.id=10600302;
update beiker_region_property brp set brp.region_enname='pinganbeidajie' where brp.id=10600303;
update beiker_region_property brp set brp.region_enname='mianliushenghuoqu' where brp.id=10600304;
update beiker_region_property brp set brp.region_enname='10600305' where brp.id=10600305;
update beiker_region_property brp set brp.region_enname='qiaoxiqu' where brp.id=10600400;
update beiker_region_property brp set brp.region_enname='huochezhan' where brp.id=10600401;
update beiker_region_property brp set brp.region_enname='xinbaiguangchang' where brp.id=10600402;
update beiker_region_property brp set brp.region_enname='wanxiangtiancheng' where brp.id=10600403;
update beiker_region_property brp set brp.region_enname='hongqidajie' where brp.id=10600404;
update beiker_region_property brp set brp.region_enname='yiyoubaihuo' where brp.id=10600405;
update beiker_region_property brp set brp.region_enname='zhongshanxilu' where brp.id=10600406;
update beiker_region_property brp set brp.region_enname='youyidajie' where brp.id=10600407;
update beiker_region_property brp set brp.region_enname='zhonghuadajie' where brp.id=10600408;
update beiker_region_property brp set brp.region_enname='10600409' where brp.id=10600409;
update beiker_region_property brp set brp.region_enname='xinhuaqu' where brp.id=10600500;
update beiker_region_property brp set brp.region_enname='shuishanggongyuan' where brp.id=10600501;
update beiker_region_property brp set brp.region_enname='shijiazhuangbeizhan' where brp.id=10600502;
update beiker_region_property brp set brp.region_enname='youyigongyuan' where brp.id=10600503;
update beiker_region_property brp set brp.region_enname='yiyuanbaihuo' where brp.id=10600504;
update beiker_region_property brp set brp.region_enname='shengeryuan' where brp.id=10600505;
update beiker_region_property brp set brp.region_enname='10600506' where brp.id=10600506;

-- ������������
INSERT INTO beiker_tag_property(id,tag_name,parentid,tag_enname,boost) VALUES(10134,'����',10100,'dangao',66);
INSERT INTO beiker_tag_property(id,tag_name,parentid,tag_enname,boost) VALUES(10135,'ʳƷ����',10100,'shipinyinliao',65);
INSERT INTO beiker_tag_property(id,tag_name,parentid,tag_enname,boost) VALUES(10220,'�����/̨���',10200,'dianwancheng/taiqiuguan',82);
INSERT INTO beiker_tag_property(id,tag_name,parentid,tag_enname,boost) VALUES(10410,'��Ӱд��',10400,'sheyingxiezhen',10);
INSERT INTO beiker_tag_property(id,tag_name,parentid,tag_enname,boost) VALUES(10411,'����侵',10400,'yanguangpeijing',9);
INSERT INTO beiker_tag_property(id,tag_name,parentid,tag_enname,boost) VALUES(10412,'����/��������',10400,'jiazheng/qichefuwu',8);

-- ʯ��ׯһ��������
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10100 ,0,106,1,1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10200 ,0,106,1,1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10300 ,0,106,1,1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10400 ,0,106,1,1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10300,10301,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10300,10304,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10300,10302,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10300,10305,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10300,10306,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10100,10114,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10100,10108,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10100,10134,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10100,10116,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10100,10115,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10100,10110,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10100,10111,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10100,10112,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10100,10107,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10100,10127,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10100,10135,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10100,10118,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10100,10199,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10200,10206,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10200,10205,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10200,10220,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10200,10203,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10200,10214,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10200,10210,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10200,10209,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10200,10211,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10200,10201,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10200,10208,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10200,10207,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10200,10212,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10400,10407,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10400,10403,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10400,10402,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10400,10410,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10400,10411,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10400,10412,106, 1, 1,NOW());
INSERT INTO beiker_catlog_relation (catlogid, catlogextid, areaid, catlogisavailable, catlogextisavaliable, createtime) VALUES (10400,10408,106, 1, 1,NOW());


















