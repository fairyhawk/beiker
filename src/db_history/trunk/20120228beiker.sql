﻿ALTER TABLE `beiker_area`  ADD COLUMN `area_is_online` ENUM('0','1') NOT NULL DEFAULT '0' COMMENT '是否上线：0未上线 1上线';
update beiker_area set area_is_online='1' where area_id in (101,102,103,104,286,237,272,336,254,200,189,140,105,337,176);