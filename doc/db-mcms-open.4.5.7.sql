/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : db-mcms-open

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2016-04-27 15:55:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `app`
-- ----------------------------
DROP TABLE IF EXISTS `app`;
CREATE TABLE `app` (
  `APP_ID` int(22) NOT NULL AUTO_INCREMENT COMMENT '站点ID，关联基础表BasicId',
  `APP_NAME` varchar(60) NOT NULL COMMENT '站点名称',
  `APP_URL` varchar(200) NOT NULL COMMENT '站点域名',
  `APP_LOGO` varchar(120) DEFAULT NULL COMMENT '站点LOGO',
  `APP_KEYWORD` varchar(500) DEFAULT NULL COMMENT '站点关键字',
  `APP_COPYRIGHT` varchar(500) DEFAULT NULL COMMENT '站点版权信息',
  `APP_STYLE` varchar(50) DEFAULT NULL COMMENT '站点风格',
  `APP_MANAGERID` int(11) DEFAULT NULL COMMENT '站点管理员ID',
  `APP_DESCRIPTION` varchar(500) DEFAULT NULL,
  `APP_DATETIME` datetime DEFAULT NULL COMMENT '应用发布日期',
  `APP_MOBILE_STYLE` varchar(11) DEFAULT NULL COMMENT '应用移动端风格',
  `APP_PAY_DATE` datetime DEFAULT NULL COMMENT '应用续费时间',
  `APP_PAY` varchar(300) DEFAULT NULL COMMENT '费用清单',
  `APP_STATE` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '0运行中 1已停止  ',
  `APP_MOBILE_STATE` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '0启用 1停用',
  PRIMARY KEY (`APP_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1550 DEFAULT CHARSET=utf8 COMMENT='应用表';

-- ----------------------------
-- Records of app
-- ----------------------------
INSERT INTO `app` VALUES ('1', 'MCMS-OPEN', 'http://localhost:99/mcms', '', '', '', 'mooc', '50', '', null, 'm', null, '', '0', '0');

-- ----------------------------
-- Table structure for `basic`
-- ----------------------------
DROP TABLE IF EXISTS `basic`;
CREATE TABLE `basic` (
  `BASIC_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `BASIC_TITLE` varchar(300) DEFAULT NULL COMMENT '标题',
  `BASIC_DESCRIPTION` text COMMENT '描述',
  `BASIC_THUMBNAILS` varchar(1000) DEFAULT NULL COMMENT '缩略图',
  `BASIC_HIT` bigint(22) DEFAULT NULL COMMENT '点击次数',
  `BASIC_SORT` int(11) DEFAULT NULL COMMENT '排序',
  `BASIC_DATETIME` datetime DEFAULT NULL COMMENT ' 发布时间',
  `BASIC_UPDATETIME` datetime DEFAULT NULL COMMENT '更新时间',
  `BASIC_PEOPLEID` int(22) DEFAULT NULL COMMENT '用户编号',
  `BASIC_CATEGORYID` int(22) DEFAULT NULL COMMENT '所属分类编号',
  `BASIC_APPID` int(11) DEFAULT NULL COMMENT '应用编号',
  `BASIC_MODELID` int(11) DEFAULT NULL COMMENT '模块编号',
  PRIMARY KEY (`BASIC_ID`),
  UNIQUE KEY `SYS_C009068` (`BASIC_ID`),
  KEY `BASIC_TITLE` (`BASIC_TITLE`(255)),
  KEY `BASIC_APPID` (`BASIC_APPID`) USING BTREE,
  KEY `BASIC_MODELID` (`BASIC_MODELID`) USING BTREE,
  KEY `BASIC_CATEGORYID` (`BASIC_CATEGORYID`) USING BTREE,
  KEY `BASIC_DATETIME` (`BASIC_DATETIME`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='基础表';

-- ----------------------------
-- Records of basic
-- ----------------------------
INSERT INTO `basic` VALUES ('1', 'sdadsa', 'qwe', '/upload/article/1/1442553027420.jpg', '0', '11', '2015-09-18 13:10:38', '2015-09-18 13:10:38', '0', '15', '0', '8');
INSERT INTO `basic` VALUES ('2', '外国工艺美术史', '本课程为清华大学人文素质核心课程。自从地球上有了人类，工艺美术也就开始产生了。\r\n一部工艺美术史，实际上也是人类文明不断发展、演变和进步历程的形象记录。上下百万年，人们创造的分布在世界各地、难以数计的工艺美术作品，无一不是人类文明高容量的载体。\r\n外国工艺美术史研究是人文学科中的重要环节。它对培养国人的文化素质，提高我国综合素质教育质量，完善人文学科，树立学术形象，提升综合学术地位，皆有重要意义。', '/upload/article/1/1442556661232.png', '0', '0', '2015-09-18 14:11:46', '2015-09-18 17:59:57', '0', '48', '0', '8');
INSERT INTO `basic` VALUES ('3', '古文字学', '讲授甲骨、金文、战国古文等古代文字的课程。\r\n本课程主要讲授汉字的起源、发展及不同历史时期的文字面貌，涉及甲骨文、金文、小篆、战国古文、早期隶书、《说文》部首等，使学生对于中国文字的形态及文字学历史有一个概貌性的认识，并初步掌握识读古文字的方法。另外，通过讲授古文字学的基本理论（如古文字学的性质、任务，汉字起源，古文字的考释方法，古文字的演变规律等）和各种古文字原材料（如甲骨文、金文、简帛、玺印、货币文字等），开拓学生视野，熟悉古文字遗产，掌握有关古文字的基础知识，具有阅读和钻研古文字原材料的初步能力，为进一步学习和研究古代的语言文字打下基础，进而初步具备整理古籍文献及出土文献的方法及进一步从事古文字研究、比较文字学研究的能力。', '/upload/article/1/1442556728074.png', '0', '0', '2015-09-18 14:13:07', '2015-09-18 18:00:05', '0', '48', '0', '8');
INSERT INTO `basic` VALUES ('4', 'Data Analysis and Statistical Inference', '认清数据收集的重要性，认清数据收集方法的局限，认清这些因素是如何影响推断的。使用数据软件（R）来在数字上和在视觉上总结数据，并且呈现对数据的分析。\r\n对统计推断的本质有一个概念上的理解。利用评估和测试方法（置信区间和假说测试）来分析单一变量和两个变量之间的关系，以便于理解自然现象的本质以及做出基于数据的决策。利用回归框架做模型来研究两个或更多数据之间的关系。', '/upload/article/1/1442556817573.png', '0', '0', '2015-09-18 14:15:34', '2015-09-18 17:17:44', '0', '48', '0', '8');
INSERT INTO `basic` VALUES ('5', 'Understanding IELTS: Techniques for English Language Tests', '这门课程不仅适合考虑参加英语语言考试的学习者，也适合正在学习英语的学习者。本课程专注于雅思考试。雅思是全球最普及的为出国学习或者生活做准备的语言考试。全世界有9000个包括大学，公司，移民机构，职业机构等组织承认雅思考试。去年全球雅思考试数量超过了2百万。这门关于雅思的课程将引导你进入每一个雅思考试阶段：从阅读，写作，口语到听力。每阶段我们的老师和经验丰富的雅思辅导者都会提供考试指导。本课程开始时间为9月21日。\r\n', '/upload/article/1/1442557011444.png', '0', '0', '2015-09-18 14:18:24', '2015-09-18 18:00:13', '0', '48', '0', '8');
INSERT INTO `basic` VALUES ('6', '社会和经济网络：模型和分析 ', '社会网络渗透于我们社会和经济生活的每一个角落。他们在传递就业机会信息中发挥了核心作用，对很多商品和服务的贸易也至关重要。他们在决定我们购买的何种产品、我们讲述何种语言、我们如何投票、我们是否决定犯罪、我们受到多少教育、我们获得专业成功的可能性。网络结构通过无数方式影响我们的生活，因此，理解下述问题就显得至关重要：社会网络结构如何影响行为，何种网络结构更容易在社会中出现，为何我们时常组织起来。借鉴社会学家、经济学家、计算机科学家、物理学家和数学家的研究成果，本门课程提供了社会和经济网络的一个概述和综合性研究。', '/upload/article/1/1442557261924.png', '0', '0', '2015-09-18 14:22:16', '2015-09-18 18:00:21', '0', '48', '0', '8');
INSERT INTO `basic` VALUES ('7', 'Internet History, Technology, and Security', '科技和网络给我们生活、文化、社会带来的影响不断增强。最有利的证明就是你可以在世界各地上这门课，你需要的是过去的六十个年头依赖被设计、创造的科技工具，我们应理解网络科技是怎么运作的。这门课在互联网上公开，向你展示它是如何创造，谁创造的，以及它怎样运作。展示的过程中，我们将带领你采访开发互联网和网络技术的领军人物。\r\n', '/upload/article/1/1442557424762.png', '0', '0', '2015-09-18 14:24:18', '2015-09-18 17:59:40', '0', '48', '0', '8');
INSERT INTO `basic` VALUES ('8', '婴儿令人惊奇的逻辑思维', '这个课程的目标是帮助你培养一种有价值的思维能力—— 一种我们祖先在这3000年来慢慢培养出来的强大的思维方式。数学思维和做数学题不一样——至少和学校里学的数学不一样。在学校里，学数学主要是学习如何解决一些来自日常生活，科学，或者数学本身的有固定模式的题目。在学校数学中成功的关键是学会用固定的方法思考。与之相反，数学思维的关键之一是创造性思维——现代社会中一个很重要的能力。这个课程帮助学生养成这种重要的思维习惯。课程的主要对象是想以数学或者需要数学的学科为专业的大学一年级学生，和想学这些专业的高中三年级学生（对于美国来说是高中四年级）。这些人需要数学思维来成功的学好他们的专业。但是，数学思维也是一个很有价值的生活技能，任何17岁以上的人都可以从本课程中获益。', '/upload/article/1/1442557545286.png', '0', '0', '2015-09-18 14:26:56', '2015-09-18 15:17:09', '0', '49', '0', '8');
INSERT INTO `basic` VALUES ('9', '前所未见，野性自然', '这门课程不仅适合考虑参加英语语言考试的学习者，也适合正在学习英语的学习者。本课程专注于雅思考试。雅思是全球最普及的为出国学习或者生活做准备的语言考试。全世界有9000个包括大学，公司，移民机构，职业机构等组织承认雅思考试。去年全球雅思考试数量超过了2百万。这门关于雅思的课程将引导你进入每一个雅思考试阶段：从阅读，写作，口语到听力。每阶段我们的老师和经验丰富的雅思辅导者都会提供考试指导。本课程开始时间为9月21日。', '/upload/article/1/1442557671339.png', '0', '0', '2015-09-18 14:29:10', '2015-09-18 15:17:02', '0', '49', '0', '8');
INSERT INTO `basic` VALUES ('10', '宇宙的设计', '这门课程介绍了起源于硅谷并在全世界出现的高科技企业的基础知识。你将会学习高科技企业家建立公司的过程。内容包括产生创意，寻找商业机会，收集人才资金资源，研究如何推销及策划创意及控制公司快速发展。在学习过程中学生组织成小组并以小组为单位研究创业项目。\r\n这是第二次公开授课，上次有来自全世界的大约40000名学生参与了课程并进行了小组合作。表现优异的小组将会配备硅谷的导师，最好的小组的创意将会被推荐给投资者。上次课程的许多学生都建立了自己的创业公司并被定期指导。', '/upload/article/1/1442557772177.png', '0', '0', '2015-09-18 14:30:09', '2015-09-18 15:16:56', '0', '49', '0', '8');
INSERT INTO `basic` VALUES ('11', '水处理工程', '环境工程、市政工程等专业的主干专业课，主要讲述水和废水处理中主要的物化和生物处理方法的基本原理、工艺构成、运行特点、工艺计算方法以及部分工程实例。该课程是从事水处理技术研究、设计以及运行管理人员的必修课。', '/upload/article/1/1442557870059.png', '0', '0', '2015-09-18 14:31:38', '2015-09-18 15:16:45', '0', '49', '0', '8');
INSERT INTO `basic` VALUES ('12', '科研不易，研究生新生的11门必修课！ ', '要成为一名出色的科研工作者，你需要从研究生阶段开始培养自己的科研能力和交流能力——两者缺一不可。前者让你能够确定有价值的问题，制定严谨可行的实验计划；后者使你能够把研究成果有效地介绍给其他学者与大众，激发进一步的讨论。此外，高效时间管理与健康的身体也十分重要。MOOC学院与多伦多大学生理学博士@梧桐清声 选出11门课程，让你的科研之路更加顺利！', '/upload/article/1/1442557954327.png', '0', '0', '2015-09-18 14:33:13', '2015-09-18 15:16:38', '0', '37', '0', '8');
INSERT INTO `basic` VALUES ('13', '再思考：如何推理与举证', '推理是非常重要的。这门课程将教会你如何正确推理。你将会学到如何理解并评断他人的论据，以及如何基于感兴趣的话题构造自己的论据。\r\n', '/upload/article/1/1442558049812.jpg', '0', '0', '2015-09-18 14:35:41', '2015-09-18 14:35:41', '0', '37', '0', '8');
INSERT INTO `basic` VALUES ('14', '如何开始创业 How to Start a Startup', '通过本课程，免费跟随世界级专家那里学习如何开始创业。\r\nCS183B是斯坦福大学的一门课，这是专门为想创业的人设计的一门独立的商业课程，一共有20个课程视频，有的是由一个讲师讲授，有的是两个讲师，还有的是一个小组，所有课程视频总长为1000分钟。\r\n', '/upload/article/1/1442558186693.jpg', '0', '0', '2015-09-18 14:38:08', '2015-09-18 15:16:49', '0', '37', '0', '8');
INSERT INTO `basic` VALUES ('15', '数学之旅', '数学的重要特征是它的抽象性，这一特征是令人生畏的。但也正是这一特征可以使人们在繁杂的世界中逐步懂得宇宙深处伟大设计图的语言；可以用理性的思维达到超出人类感官所及的宇宙的根本。而这一切正是数学的魅力所在，也是数学在人类历史上起着其它科学不可替代作用的重要原因。但这也是很多学生畏惧数学或学习数学的困难所在。', '/upload/article/1/1442558351296.jpg', '0', '0', '2015-09-18 14:40:04', '2015-09-18 15:16:26', '0', '37', '0', '8');
INSERT INTO `basic` VALUES ('16', 'mooc幻灯一', '', '/upload/article/1/1442558436452.jpg', '0', '0', '2015-09-18 14:40:53', '2015-09-18 14:40:53', '0', '50', '0', '8');
INSERT INTO `basic` VALUES ('17', 'mooch幻灯2', '', '/upload/article/1/1442558480746.jpg', '0', '0', '2015-09-18 14:41:23', '2015-09-18 14:41:23', '0', '51', '0', '8');
INSERT INTO `basic` VALUES ('18', '首页幻灯', '', '/upload/article/1/1442558658877.jpg', '0', '0', '2015-09-18 14:43:17', '2015-09-18 14:44:20', '0', '15', '0', '8');
INSERT INTO `basic` VALUES ('19', '天体生物学和寻找外星生命', '两千年多以前，古希腊人曾探究过宇宙中是否存在其他世界。现在，人们正通过实验来验证这个问题。这门课程由英国爱丁堡大学的天体生物学中心提供，旨在介绍天体生物学，也是MOOC首次探索此类课题。这门课程将探讨地球上生物的起源和演化，以及地球以外存在生命的可能性。\r\n“天体生物学”解答了人们普遍感兴', '/upload/article/1/1442558964440.jpg', '0', '0', '2015-09-18 14:50:16', '2015-09-18 15:16:19', '0', '22', '0', '8');
INSERT INTO `basic` VALUES ('20', '文物精品与文化中国', '中国考古学是以往100年中发展最为迅速的领域之一，大批珍贵文物的出土，不断刷新人们对文化中国的认识。本课程以4-6件（组）精品文物作引子，将学术界探索中华文明的过程作为线索，介绍古代中国在造船、玉器等诸多领域的杰出成就，其中不乏学术前沿的考古发现与研究成果，内容精彩纷呈，雅俗共赏，学生可以藉此获得对文化中国全方位的、直观而深入的认识。', '/upload/article/1/1442559055570.jpg', '0', '0', '2015-09-18 14:51:29', '2015-09-18 15:16:07', '0', '22', '0', '8');
INSERT INTO `basic` VALUES ('21', '中国建筑史', '', '/upload/article/1/1442559113247.png', '0', '0', '2015-09-18 14:52:39', '2015-09-18 15:16:01', '0', '22', '0', '8');
INSERT INTO `basic` VALUES ('22', '新媒体概论', '本课程主要探讨新媒体与社会之间的互动关系，一方面关注各种社会力量对新媒体的塑造，另一方面讨论新媒体对社会各个层面的影响。课程在探讨新媒体的概念、特征、形式、内容和历史的基础上，同时关注新媒体的采纳、扩散、伦理和法制，以及新媒体在政治、经济、文化和社会结构上对社会的影响。本课程有助于学生掌握新媒体的相关概念和理论，理解新媒体在社会控制和社会变迁中的重要角色，成为新媒体时代具有批判能力和责任意识的现代公民。', '/upload/article/1/1442559199247.jpg', '0', '0', '2015-09-18 14:53:47', '2015-09-18 15:15:55', '0', '22', '0', '8');
INSERT INTO `basic` VALUES ('23', '合作代理', '​门槛最低，功能最全最灵活，利润最大，支撑最大！\r\n支撑优势\r\n甩单支撑产品培训销售培训迟训升级\r\n远程咨询地区保护落地支撑奖金激励', '', '0', '0', '2015-09-18 16:30:54', '2015-09-18 16:37:14', '0', '18', '0', '8');
INSERT INTO `basic` VALUES ('24', '关于我们', '  公司于2012年3月8日，已正式向《景德镇市工商行政管理局》领取营业   执照。\r\n  公司名称：景德镇铭飞科技有限公司\r\n  经营范围：计算机系统服务及技术开发、咨询服务', '', '0', '0', '2015-09-18 16:31:18', '2015-09-18 16:33:09', '0', '19', '0', '8');
INSERT INTO `basic` VALUES ('25', '产品服务', '  公司于2012年3月8日，已正式向《景德镇市工商行政管理局》领取营业   执照。\r\n  公司名称：景德镇铭飞科技有限公司\r\n  经营范围：计算机系统服务及技术开发、咨询服务', '', '0', '0', '2015-09-18 16:31:55', '2015-09-18 16:31:55', '0', '16', '0', '8');
INSERT INTO `basic` VALUES ('26', '产品服务', '终端统一:MCMS支持PC与MOBILE皮肤定制,同时使用MS团队移动JS插件,轻松实现手机多屏幕适配,想想看你发布的信息第一时间在pc上展示又能在手机上展示,这是件多么幸福的事情,数据统一、平台统一、终端统一是MS团队一直在努力的方向;', '', '0', '0', '2015-09-18 16:31:57', '2015-09-18 16:39:16', '0', '16', '0', '8');

-- ----------------------------
-- Table structure for `basic_attention`
-- ----------------------------
DROP TABLE IF EXISTS `basic_attention`;
CREATE TABLE `basic_attention` (
  `ba_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `ba_peopleID` int(11) DEFAULT NULL COMMENT '用户id',
  `ba_appID` int(11) DEFAULT NULL COMMENT '用户应用id',
  `ba_basicID` int(11) DEFAULT NULL COMMENT '用户收藏关联的基础id',
  `ba_type` int(11) DEFAULT NULL COMMENT '收藏类型 1： 收藏  2：顶',
  `ba_datetime` datetime DEFAULT NULL COMMENT '用户收藏文章，帖子或商品时的时间',
  `ba_url` varchar(200) DEFAULT NULL COMMENT '收藏的文章,帖子，商品的链接地址',
  PRIMARY KEY (`ba_id`),
  KEY `BA_PEOPLEID` (`ba_peopleID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户收藏表';

-- ----------------------------
-- Records of basic_attention
-- ----------------------------

-- ----------------------------
-- Table structure for `basic_category`
-- ----------------------------
DROP TABLE IF EXISTS `basic_category`;
CREATE TABLE `basic_category` (
  `bc_basic_id` int(11) NOT NULL COMMENT '文章编号',
  `bc_category_id` int(11) NOT NULL COMMENT '分类编号',
  UNIQUE KEY `bc_basic_id` (`bc_basic_id`,`bc_category_id`),
  KEY `bc_category_id` (`bc_category_id`),
  KEY `bc_category_id_2` (`bc_category_id`),
  KEY `bc_category_id_3` (`bc_category_id`),
  CONSTRAINT `basic_category_ibfk_1` FOREIGN KEY (`bc_basic_id`) REFERENCES `basic` (`BASIC_ID`) ON DELETE CASCADE,
  CONSTRAINT `basic_category_ibfk_2` FOREIGN KEY (`bc_category_id`) REFERENCES `category` (`CATEGORY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章多分类表';

-- ----------------------------
-- Records of basic_category
-- ----------------------------

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `CATEGORY_ID` int(22) NOT NULL AUTO_INCREMENT COMMENT '类别ID',
  `CATEGORY_TITLE` varchar(50) DEFAULT NULL COMMENT '类别标题',
  `CATEGORY_SORT` int(10) DEFAULT NULL COMMENT '类别排序',
  `CATEGORY_DATETIME` datetime DEFAULT NULL COMMENT '类别发布时间',
  `CATEGORY_MANAGERID` int(22) DEFAULT NULL COMMENT '发布用户ID',
  `CATEGORY_MODELID` int(11) DEFAULT NULL COMMENT '所属模块ID',
  `CATEGORY_CATEGORYID` int(22) DEFAULT NULL COMMENT '父类别编号',
  `CATEGORY_SMALLIMG` varchar(120) DEFAULT NULL COMMENT '缩略图',
  `CATEGORY_APPID` int(11) DEFAULT NULL COMMENT '应用编号',
  `CATEGORY_DESCRIPTION` varchar(45) DEFAULT NULL COMMENT '栏目描述',
  PRIMARY KEY (`CATEGORY_ID`),
  KEY `CATEGORY_APPID` (`CATEGORY_APPID`),
  KEY `CATEGORY_MANAGERID` (`CATEGORY_MANAGERID`),
  KEY `CATEGORY_MODELID` (`CATEGORY_MODELID`),
  KEY `CATEGORY_CATEGORYID` (`CATEGORY_CATEGORYID`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('15', '首页幻灯', '0', '2015-09-01 15:27:46', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('16', '产品服务', '0', '2015-09-01 15:30:24', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('17', '物联网', '0', '2015-09-01 15:30:59', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('18', '合作代理', '0', '2015-09-01 15:31:19', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('19', '关于我们', '0', '2015-09-01 15:31:30', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('20', '成功案例', '0', '2015-09-01 15:31:47', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('21', '解决方案', '0', '2015-09-01 15:32:14', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('22', '新闻动态', '0', '2015-09-01 15:32:59', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('23', '常见问题', '0', '2015-09-01 15:33:54', '50', '87', '0', null, '1', null);
INSERT INTO `category` VALUES ('24', '常见问题', '0', '2015-09-01 15:34:50', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('25', '免责声明', '0', '2015-09-01 16:48:18', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('26', '前端开发', '0', '2015-09-01 17:13:36', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('27', '网页设计', '0', '2015-09-01 17:13:49', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('28', '移动开发', '0', '2015-09-01 17:14:04', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('29', '实用工具', '0', '2015-09-01 17:14:16', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('30', '程序人生', '0', '2015-09-01 17:14:33', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('31', '素材资源', '0', '2015-09-01 17:14:52', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('32', '创意欣赏', '0', '2015-09-01 17:15:06', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('33', '投资', '0', '2015-09-02 00:32:02', '50', '87', '0', null, '1', null);
INSERT INTO `category` VALUES ('34', '商业', '0', '2015-09-02 00:32:49', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('35', '案列', '0', '2015-09-02 00:33:03', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('36', '精选', '0', '2015-09-02 00:33:16', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('37', '评测', '0', '2015-09-02 00:33:32', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('38', '业界', '0', '2015-09-02 00:33:57', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('39', '手机', '0', '2015-09-02 00:34:11', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('40', '家电', '0', '2015-09-02 00:34:20', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('41', '投资', '0', '2015-09-02 00:35:56', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('42', '智客', '0', '2015-09-02 00:36:33', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('48', '课程', '0', '2015-09-16 23:26:56', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('49', '演讲', '0', '2015-09-16 23:27:19', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('50', 'moocSlide', '0', '2015-09-17 12:14:47', '50', '7', '0', null, '1', null);
INSERT INTO `category` VALUES ('51', 'moocsoidq', '0', '2015-09-17 12:17:48', '50', '7', '0', null, '1', null);

-- ----------------------------
-- Table structure for `cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `ARTICLE_BASICID` int(20) DEFAULT NULL COMMENT '文章ID',
  `ARTICLE_AUTHOR` varchar(20) DEFAULT NULL COMMENT '文章作者',
  `ARTICLE_CONTENT` longtext COMMENT '文章内容',
  `ARTICLE_TYPE` varchar(100) DEFAULT NULL COMMENT '文章类型',
  `ARTICLE_SOURCE` varchar(300) DEFAULT NULL COMMENT '文章来源',
  `ARTICLE_URL` varchar(200) DEFAULT NULL COMMENT '文章跳转链接地址',
  `ARTICLE_KEYWORD` varchar(300) DEFAULT NULL COMMENT '文章关键字',
  `ARTICLE_FREEORDER` int(255) DEFAULT NULL COMMENT '文章自定义显示顺序',
  `ARTICLE_WEBID` int(11) DEFAULT NULL COMMENT '文章管理的应用id',
  UNIQUE KEY `ARTICLE_BASICID` (`ARTICLE_BASICID`) USING BTREE,
  KEY `ARTICLE_WEBID` (`ARTICLE_WEBID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES ('2', '铭飞科技', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">本课程为清华大学人文素质核心课程。自从地球上有了人类，工艺美术也就开始产生了。<br style=\"box-sizing: border-box;\"/>一部工艺美术史，实际上也是人类文明不断发展、演变和进步历程的形象记录。上下百万年，人们创造的分布在世界各地、难以数计的工艺美术作品，无一不是人类文明高容量的载体。<br style=\"box-sizing: border-box;\"/>外国工艺美术史研究是人文学科中的重要环节。它对培养国人的文化素质，提高我国综合素质教育质量，完善人文学科，树立学术形象，提升综合学术地位，皆有重要意义。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">课程章节</span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">第一章 古代埃及工艺美术<br style=\"box-sizing: border-box;\"/>1.1 古代埃及概述<br style=\"box-sizing: border-box;\"/>1.2 古代埃及陶工艺<br style=\"box-sizing: border-box;\"/>1.3 古代埃及石工艺<br style=\"box-sizing: border-box;\"/>1.4 古代埃及金属工艺<br style=\"box-sizing: border-box;\"/>1.5 古代埃及玻璃工艺<br style=\"box-sizing: border-box;\"/>1.6 古代埃及木工艺、小结<br style=\"box-sizing: border-box;\"/>第1周作业</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">第二章 古代两河流域工艺美术</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">第三章 古代波斯工艺美术</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">第四章 古代印度工艺美术</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">第五章 古代日本工艺美术</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">第六章 古代地中海区域工艺美术</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">第七章 古代希腊工艺美术</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">第八章 埃特鲁里亚工艺美术</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">第九章 古代罗马工艺美术</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">第十章 古代伊斯兰工艺美术</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">第十一章 欧洲中世纪工艺美术</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">第十二章 文艺复兴时期工艺美术</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">第十三章 巴洛克时期工艺美术</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">第十四章 洛可可时期工艺美术</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">第十五章 新古典主义时期工艺美术</p><p><br/></p>', '', '铭飞科技', '/48\\2.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('3', '铭飞科技', '<p>讲授甲骨、金文、战国古文等古代文字的课程。</p><p>本课程主要讲授汉字的起源、发展及不同历史时期的文字面貌，涉及甲骨文、金文、小篆、战国古文、早期隶书、《说文》部首等，使学生对于中国文字的形态及文字学历史有一个概貌性的认识，并初步掌握识读古文字的方法。另外，通过讲授古文字学的基本理论（如古文字学的性质、任务，汉字起源，古文字的考释方法，古文字的演变规律等）和各种古文字原材料（如甲骨文、金文、简帛、玺印、货币文字等），开拓学生视野，熟悉古文字遗产，掌握有关古文字的基础知识，具有阅读和钻研古文字原材料的初步能力，为进一步学习和研究古代的语言文字打下基础，进而初步具备整理古籍文献及出土文献的方法及进一步从事古文字研究、比较文字学研究的能力。</p><p>证书要求<br style=\"box-sizing: border-box;\"/>本课程非常重视平时练习，平时成绩占二分之一。考试范围原则上不超出教材及课堂所讲述的内容。成绩合格率一般在95%左右，优秀比例视平时成绩而定，总数不限。</p><p>预备知识<br style=\"box-sizing: border-box;\"/>古代汉语、训诂学、文献学</p><p><br style=\"box-sizing: border-box;\"/></p><p>授课大纲<br style=\"box-sizing: border-box;\"/>大致以五分之一的课时讲授基本理论，以五分之四的课时讲授甲骨文、金文、战国文字等各类古文字原材料。课程内容与每周内容分配：<br style=\"box-sizing: border-box;\"/>隶变与古文字源起，占1周；<br style=\"box-sizing: border-box;\"/>甲骨文，2周；<br style=\"box-sizing: border-box;\"/>金文，2周；<br style=\"box-sizing: border-box;\"/>战国古文，3周；<br style=\"box-sizing: border-box;\"/>秦及汉初文字，1周；<br style=\"box-sizing: border-box;\"/>古文字文化解读与解秘，3周。</p><p><br style=\"box-sizing: border-box;\"/>参考资料<br style=\"box-sizing: border-box;\"/>陈炜湛、唐钰明《古文字学纲要》，中山大学出版社1988年初版，2009年12月第二版。陈世辉、汤余惠《古文字学概要》，福建人民出版社2011年4月。<br style=\"box-sizing: border-box;\"/>裘锡圭《文字学概要》，商务印书馆1988年版。<br style=\"box-sizing: border-box;\"/>张桂光《汉字学简论》广东高等教育出版社2004年版。<br style=\"box-sizing: border-box;\"/>唐兰《中国文字学》，商务印书馆1930年代排印本，1986年上海古籍出版社据开明书店1949年3月版重印本。<br style=\"box-sizing: border-box;\"/>高明《古文字类编》增订本，上海古籍出版社2011年版。</p><p><br/></p>', '', '铭飞科技', '/48\\3.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('23', '铭飞科技', '<p>门槛最低，功能最全最灵活，利润最大，支撑最大！</p><p>支撑优势</p><p>甩单支撑产品培训销售培训迟训升级</p><p>远程咨询地区保护落地支撑奖金激励</p><p><br/></p><p>最大利润空间</p><p>超低折扣报价有效营销指导灵活报价策略免费现场支撑</p><p><br/></p><p>功能优势</p><p>海量，可快速定制化的、灵活化功能模块供客户选择：</p><p>在线支付在线预约购物车消息推送</p><p>灵活桌面LBS地图导航分享问卷调查</p><p>3d全景一键拨号后台分级更多功能</p><p><br/></p><p>行业覆盖</p><p><br/></p><p>\r\n			<!-- about_rproject_desc --></p>', '', '铭飞科技', '/18\\index.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('24', '铭飞科技', '<p>&nbsp; 公司于2012年3月8日，已正式向《景德镇市工商行政管理局》领取营业 &nbsp; 执照。</p><p>&nbsp; 公司名称：景德镇铭飞科技有限公司</p><p>&nbsp; 经营范围：计算机系统服务及技术开发、咨询服务</p><p><br/></p>', '', '铭飞科技', '/19\\index.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('25', '铭飞科技', '<p>&nbsp; 公司于2012年3月8日，已正式向《景德镇市工商行政管理局》领取营业 &nbsp; 执照。</p><p>&nbsp; 公司名称：景德镇铭飞科技有限公司</p><p>&nbsp; 经营范围：计算机系统服务及技术开发、咨询服务</p><p><br/></p>', '', '铭飞科技', '/16\\index.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('26', '铭飞科技', '<p>1.特点</p><p>免费开源:纯Java开发，MS开发团队承诺将MCMS内容系统永久完整开源;</p><p>终端统一:MCMS支持PC与MOBILE皮肤定制,同时使用MS团队移动JS插件,轻松实现手机多屏幕适配,想想看你发布的信息第一时间在pc上展示又能在手机上展示,这是件多么幸福的事情,数据统一、平台统一、终端统一是MS团队一直在努力的方向;</p><p>扩展性:以MCMS为核心,MS官网提供第三方插件安装,最新的插件用户可以通过更新功能获得,同时MS也鼓励并支持第三方开发人员发布优质的插件;</p><p>更新升级:MCMS提供了行业内最完美的升级方案,从此升级无需手动下载/复制/粘贴,一切完全由MS升级插件无缝完成;</p><p>文档手册:提供MCMS的数据字典、二次开发手册、标签使用手册,帮助第三方开发人员能的快速进行第二次开发;</p><p>站群：MCMS支持站群，只需在服务器上架设一套MCMS就可以创建多个个网站，并且网站之间的数据是独立存在，很大程度降低了维护成本，与服务器资源的开销；</p><p>其他：html静态生成、标签式建站</p><p>技术支持:提永久升级服务技术交流群,不定期会升级系统，开发可以关注后台的更新板块；</p><p><br/></p><p>2.面向对象</p><p>MCMS是企业在创立初期很好的技术基础框架，加快公司项目开发进度，当然也可以对现有的系统进行升级；</p><p>个人开发者也可以使用MCMS承接外包项目；</p><p>初学JAVA的同学可以下载源代码来进行学习交流；</p><p><br/></p><p>3.简介</p><p>&nbsp;MCMS(铭飞内容管理系统)是一款支持不同平台、不同终端并且支持多站点的内容管理系统，</p><p>· SpringMVC4+Spring4+MyBatis3+Freemarker技术架构</p><p>· 基于java技术开发，继承其强大、稳定、安全、高效、跨平台等多方面的优点；</p><p><br/></p><p>· 标签化建站，只要你懂html就能建站；</p><p><br/></p><p>· 完全生成全站静态页面；</p><p>· 可自定义路径结构，全面提高页面访问速度；</p><p><br/></p><p>有人说MCMS是全国唯一完整开源的J2EE版本系统！我们一直会努力下去！</p><p><br/></p><p>4.运行环境</p><p><br/></p><p>原则上支持全系列JAVA运行环境；</p><p>WEB服务器：Weblogic、Tomcat、WebSphere、JBoss 等</p><p>数据库服务器：Mysql等</p><p>操作系统：Windows、Linux、Unix 等</p><p><br/></p>', '', '铭飞科技', '/16\\index.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('4', '铭飞科技', '<p>这门课程的教学目标如下：<br style=\"box-sizing: border-box;\"/></p><ul style=\"box-sizing: border-box; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\" class=\" list-paddingleft-2\"><li><p>认清数据收集的重要性，认清数据收集方法的局限，认清这些因素是如何影响推断的。使用数据软件（R）来在数字上和在视觉上总结数据，并且呈现对数据的分析。</p></li><li><p>对统计推断的本质有一个概念上的理解。利用评估和测试方法（置信区间和假说测试）来分析单一变量和两个变量之间的关系，以便于理解自然现象的本质以及做出基于数据的决策。利用回归框架做模型来研究两个或更多数据之间的关系。</p></li><li><p>用通俗易懂的语言在具体环境中正确、高效地讲解结果。</p></li><li><p>评价基于数据做出的声明和决策。</p></li><li><p>用简单的数据推断和模型方法完成一个调查项目。</p></li></ul><p><br style=\"box-sizing: border-box;\"/></p><p>课程大纲<br style=\"box-sizing: border-box;\"/>第1周：第一单元 - 介绍数据<br style=\"box-sizing: border-box;\"/>第一部分 - 设计研究<br style=\"box-sizing: border-box;\"/>第二部分 - 探索数据分析<br style=\"box-sizing: border-box;\"/>第三部分 - 介绍通过仿真推断</p><p>第2周：第二单元 - 概率和分布<br style=\"box-sizing: border-box;\"/>第一部分 - 定义概率<br style=\"box-sizing: border-box;\"/>第二部分 - 条件概率<br style=\"box-sizing: border-box;\"/>第三部分 - 正态分布<br style=\"box-sizing: border-box;\"/>第四部分 - 二项分布</p><p>第3周：第三单元 - 推断基础<br style=\"box-sizing: border-box;\"/>第一部分 - 估值可变性和中心极限理论<br style=\"box-sizing: border-box;\"/>第二部分 - 置信区间<br style=\"box-sizing: border-box;\"/>第三部分 - 假设测试</p><p>第4周：完成第三单元 + 期中<br style=\"box-sizing: border-box;\"/>第四部分 - 其他估计量的推断<br style=\"box-sizing: border-box;\"/>第五部分 - 判断的错误、重要性和可信度</p><p>第5周：第四单元 - 数字变量的推断<br style=\"box-sizing: border-box;\"/>第一部分 - 比较两种方法<br style=\"box-sizing: border-box;\"/>第二部分 - 另解<br style=\"box-sizing: border-box;\"/>第三部分 - t分布推断<br style=\"box-sizing: border-box;\"/>第四部分 - 比较三种或更多方法（ANOVA）</p><p>第6周：第五单元 - 明确变量推断<br style=\"box-sizing: border-box;\"/>第一部分 - 单比例<br style=\"box-sizing: border-box;\"/>第二部分 - 两比例对比<br style=\"box-sizing: border-box;\"/>第三部分 - 通过仿真比例推断<br style=\"box-sizing: border-box;\"/>第四部分 - 比较三种或更多比例（Chi-square）</p><p>第7周：第六单元 - 介绍线性回归<br style=\"box-sizing: border-box;\"/>第一部分 - 两个数字变量之间的关系<br style=\"box-sizing: border-box;\"/>第二部分 - 单一预测的线性回归<br style=\"box-sizing: border-box;\"/>第三部分 - 线性回归中的异常值<br style=\"box-sizing: border-box;\"/>第四部分 - 线性回归中的推断</p><p>第8周：第七单元 - 多重线性回归<br style=\"box-sizing: border-box;\"/>第一部分 - 多预测的线性回归<br style=\"box-sizing: border-box;\"/>第二部分 - 多重线性回归推断<br style=\"box-sizing: border-box;\"/>第三部分 - 模型选择<br style=\"box-sizing: border-box;\"/>第四部分 - 模型诊断</p><p>第9周：复习/答疑周<br style=\"box-sizing: border-box;\"/>贝叶斯推论 vs. 概率推论</p><p>第10周：期末考试</p><p><br style=\"box-sizing: border-box;\"/>先修知识<br style=\"box-sizing: border-box;\"/>基础数学，不需要编程经验。对数据分析的真心热爱是附加条件！</p><p><br style=\"box-sizing: border-box;\"/>参考资料<br style=\"box-sizing: border-box;\"/>这门课设计成自我包含所有内容的形式。但是我们建议学生参考《OpenIntro Statistics》（第七版）。这门课紧跟这本书，所以书中内容可以作为视频材料的补充。除此之外，练习题会从这本书中出。本书是公开资源，可以在网站openintro.org上免费在线阅读。</p><p><br style=\"box-sizing: border-box;\"/>授课形式<br style=\"box-sizing: border-box;\"/>这门课会包括视频课程，5到10分钟的长度，每个视频会有几个视频内测试。家庭作业包括评分的选择题测试、不计分的书中问题、数据计算分析作业、一个数据分析项目、期中和期末考试。</p><p><br style=\"box-sizing: border-box;\"/>常见问题解答<br style=\"box-sizing: border-box;\"/>完成这门课程后能获得证书吗？<br style=\"box-sizing: border-box;\"/>能。只要你依据评分规则成功完成了这门课，就能得到证书。</p><p>这门课是免费的吗？<br style=\"box-sizing: border-box;\"/>是的！你免费上这门课，并且获得免费的证书。<br style=\"box-sizing: border-box;\"/>不过，如果你想要认证证书，你需要支付费用。你可以在这里阅读更多的认证证书信息，来看看有没有你感兴趣的地方。除此之外，如果你想要获得推理论证、数据分析和写作的系列课程认证，你就需要认证证书。你可以点击这里了解更多关于系列课程的信息。</p><p>上这门课需要之前学习编程知识吗？<br style=\"box-sizing: border-box;\"/>这门课不需要编程背景。所有你需要学习的这门课都已经包括了。</p><p>这门课需要什么资源？<br style=\"box-sizing: border-box;\"/>你需要稳定的网络连接以便观看视频，得到推荐的阅读材料，完成测试和考试。为了完成实验和大作业，你需要能够运行R（一个免费的数据计算和图形化软件）和RStudio（一个以R作为用户接口的集成开发环境）。<br style=\"box-sizing: border-box;\"/>或者，你可以选择在DataCamp.com搭建实验环境（不是项目），这是一个在线的交互学习平台。这个平台提供这门课所用到的交互版的R实验环境，它提供提示和安装反馈，可以促进学习过程。这些提示就像是对你的一个引导，及时反馈帮助你避免很多因为学习新的编程语言猜测隐晦的报错信息带来的沮丧。</p><p>R/RStudio可以在任何系统上运行吗？<br style=\"box-sizing: border-box;\"/>R可以在Windows、Mac Os和Ubuntu上运行。你可以在http://www.r-project.org下载R，在http://www.rstudio.com/上下载RStudio。一旦这门课开始，我们会提供怎么安装启动R和RStudio的视频。</p><p>完成这门课我需要学习R吗？<br style=\"box-sizing: border-box;\"/>你可以顺利通过某些课程内容而不需要使用R，但是你需要用R来做实验和大作业来争取获得优秀证书。</p><p>R可以在智能手机或者平板上运行吗？<br style=\"box-sizing: border-box;\"/>R可以在智能手机和平板上运行（看这里），但是这需要权限接触RStudio服务器，本门课不提供这些。RStudio服务器安装教程在RStudio的网站上提供，点击这里。</p><p><br/></p>', '', '铭飞科技', '/48\\4.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('5', '铭飞科技', '<p>课程介绍<br style=\"box-sizing: border-box;\"/>这门课程不仅适合考虑参加英语语言考试的学习者，也适合正在学习英语的学习者。本课程专注于雅思考试。雅思是全球最普及的为出国学习或者生活做准备的语言考试。全世界有9000个包括大学，公司，移民机构，职业机构等组织承认雅思考试。去年全球雅思考试数量超过了2百万。这门关于雅思的课程将引导你进入每一个雅思考试阶段：从阅读，写作，口语到听力。每阶段我们的老师和经验丰富的雅思辅导者都会提供考试指导。本课程开始时间为9月21日。</p><p><br style=\"box-sizing: border-box;\"/>课程目标<br style=\"box-sizing: border-box;\"/>课程结束后，你将<br style=\"box-sizing: border-box;\"/>(1) 熟悉所有的雅思考试部分<br style=\"box-sizing: border-box;\"/>(2) 获得一些有用的贴士，帮助你实现理想的<br style=\"box-sizing: border-box;\"/>雅思考试目标<br style=\"box-sizing: border-box;\"/>(3) 理解雅思考试的评估标准</p><p><br style=\"box-sizing: border-box;\"/>课程特色<br style=\"box-sizing: border-box;\"/>本课程由雅思考试机构－ 英国文化协会教授。英国文化协会在英语语言教学和评估方面有超过80年的历史。</p><p><br style=\"box-sizing: border-box;\"/>课程目标学习者<br style=\"box-sizing: border-box;\"/>本课程针对母语为非英语的学习者，难度在中级左右。</p><p><br style=\"box-sizing: border-box;\"/>关于课程更多信息<br style=\"box-sizing: border-box;\"/>我们的免费课程 &#39;了解雅思&#39; 目标在于给你更多的自信。通过了解雅思考试需要的核心语言技能，学习者能够清晰的了解雅思考试，同时在学习的过程中提高英语水平。我们希望这个六周的课程能够帮助你们建立对于雅思考试的信心。课程结束后，你们能在考试中发挥最好的水平。我们的视频课程介绍了雅思考试，提供准备考试的资料。这门课程对任何想学习英语，在国外工作或学习，准备英语语言考试的学习者都有帮助，特别是如果你想参加雅思考试的话。这门课程集中在考试的每一个部分（听力，阅读，口语和书写），以给你提供最好的机会获得最理想的雅思成绩。</p><p><br/></p>', '', '铭飞科技', '/48\\5.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('6', '铭飞科技', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">社会网络渗透于我们社会和经济生活的每一个角落。他们在传递就业机会信息中发挥了核心作用，对很多商品和服务的贸易也至关重要。他们在决定我们购买的何种产品、我们讲述何种语言、我们如何投票、我们是否决定犯罪、我们受到多少教育、我们获得专业成功的可能性。网络结构通过无数方式影响我们的生活，因此，理解下述问题就显得至关重要：社会网络结构如何影响行为，何种网络结构更容易在社会中出现，为何我们时常组织起来。借鉴社会学家、经济学家、计算机科学家、物理学家和数学家的研究成果，本门课程提供了社会和经济网络的一个概述和综合性研究。<br style=\"box-sizing: border-box;\"/>课程刚开始时，将是一些社会网络分析的经验背景、以及一些用于描述和度量网络概念的概述。接下来，课程将介绍一些网络如何形成的模型，包括随机网络模型（random network models）、战略形成模型（strategic formation models）和混合模型。然后我们讨论一些列网络如何影响行为的模型，包括传染（contagion）、扩散（diffusion）、学习（learning）、同行影响（peer influences）。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">课程大纲</span><br style=\"box-sizing: border-box;\"/><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">第一周：介绍、经验背景和定义</span><br style=\"box-sizing: border-box;\"/>社会网络的例子，以及他们的影响、定义、度量和属性——包括点度（Degrees）、半径（Diameters）、小世界（Small Worlds），弱联系和强联系（Weak and Strong Ties），点度分布（Degree Distributions）。【注1】<br style=\"box-sizing: border-box;\"/><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">第二周：背景、定义、度量（续）</span><br style=\"box-sizing: border-box;\"/>同质性（Homophily），动态（Dynamics），中心性度量：点度（Degree），中介中心性（Betweenness），接近中心性（Closeness），特征中心性（Eigenvector），Bonacich中心性（Katz-Bonacich的理论），E-R随机网络（Erdos and Renyi Random Networks）——阈值和相变。【注2】<br style=\"box-sizing: border-box;\"/><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">第三周：随机网络</span><br style=\"box-sizing: border-box;\"/>泊松随机网络（Poisson Random Networks），指数随机图模型（Exponential Random Graph Models），成长性随机网络（Growing Random Networks），优先连接（Preferential Attachment）和幂律（Power Laws），网络形成的混合模型。【注3】<br style=\"box-sizing: border-box;\"/><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">第四周：战略网络形成</span><br style=\"box-sizing: border-box;\"/>网络形成的博弈模型，连接模型（The Connections Model），激励与效率之间的冲突，动态分析，有向网络（Directed Networks），选择与机会的混合模型。【注4】<br style=\"box-sizing: border-box;\"/><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">第五周：网络的扩散</span><br style=\"box-sizing: border-box;\"/>经验背景，Bass模型，随机网络的传染，SIS模型，模拟网络拟合实际数据。<br style=\"box-sizing: border-box;\"/><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">第六周：网络的学习</span><br style=\"box-sizing: border-box;\"/>贝叶斯学习网络（Bayesian Learning on Networks），DeGroot学习模型，意见的趋同（Convergence of Beliefs），群体的智慧，网络位置的影响。【注5】<br style=\"box-sizing: border-box;\"/><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">第七周：网络的博弈</span><br style=\"box-sizing: border-box;\"/>网络博弈，同行影响：战略性补充与替代，网络结构与行为的关系，线性二次博弈，重复相互作用与网络结构。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">推荐背景</span><br style=\"box-sizing: border-box;\"/>本课程需要以下前置技能（^_^）:数学Lv1和统计学Lv1。我们假定参加的学生都已经非常熟悉相关的一些基本概念，包括线性代数，概率论（概率分布、期望、贝叶斯法则），统计学（假设检验），和一些简单计算（偏微分和积分）。除此以外，课程内都已包含。<br style=\"box-sizing: border-box;\"/>【注6】</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">推荐阅读</span><br style=\"box-sizing: border-box;\"/>所有解答测验和考试所需的定义概念都在视频课程中包含了。大部分课堂材料都包含在授课教授的书中（Jackson M O. Social and economic networks[M]. Princeton University Press, 2010. ），但这本书不是课堂必读读物。进一步的背景阅读，包括研究论文和课程中几个主题的综述，都在授课人的主页上（打开即可看见那张大脸：）。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">课程形式</span><br style=\"box-sizing: border-box;\"/>课程持续8周，每周会有视频提供，以及独立的问题集和数据练习。课程结束时，参加期末考试才可以拿到课程认证。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">问答：</span><br style=\"box-sizing: border-box;\"/>Q：完成课程后，能获得结课证书吗？<br style=\"box-sizing: border-box;\"/>A：能，成功完成课程的学习者将获得有教师签名的结课证明。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">============<br style=\"box-sizing: border-box;\"/>译注1：专有名词在国内有多种翻译，此处使用中文文献中使用最广的译法。参考：[英]约翰•斯科特,刘军译.社会网络分析法[M].重庆:重庆大学出版社,2007<br style=\"box-sizing: border-box;\"/>译注2：关于复杂网络的发展，1960提出随机网络模型（ER网络），1998年提出小世界模型，1999年提出无标度网络（Scale-free）模型（BA模型）。复杂网络分为随机网络、小世界网络和自相似网络。<br style=\"box-sizing: border-box;\"/>译注3：随机网络模型这章解决的是计算机模拟的网络与现实世界网络的不一致。通过不断改进模型来贴近现实。<br style=\"box-sizing: border-box;\"/>译注4：本章的内容是个体的收益成本随着网络连接的不同而不同。如Connection Model是一种成本与直接联系有关而网络间接收益依照连接距离增加而递减的算法。<br style=\"box-sizing: border-box;\"/>译注5：学习模型，即通过观察周围人是怎么做的，来调整自己的行为。<br style=\"box-sizing: border-box;\"/>译注6：本课程以社会网络建模为主要内容，即第二部分网络形式和第三部分网络与行为。在第一部分仅仅是简要介绍了后续建模所必须的简单概念，而缺乏对社会网络特征分析的介绍。推荐在社会网络有一定基础的社会学科高年级学生进行深入研究模型、或对数学模型熟悉的同学了解实际应用。本课程的简介（需翻墙）有说明，课程教授的是网络分析研究的方法，针对群体是硕士到博士，但是对感兴趣的同学入门也不难。</p><p><br/></p>', '', '铭飞科技', '/48\\6.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('7', '铭飞科技', '<p>科技和网络给我们生活、文化、社会带来的影响不断增强。最有利的证明就是你可以在世界各地上这门课，你需要的是过去的六十个年头依赖被设计、创造的科技工具，我们应理解网络科技是怎么运作的。这门课在互联网上公开，向你展示它是如何创造，谁创造的，以及它怎样运作。展示的过程中，我们将带领你采访开发互联网和网络技术的领军人物。</p><p><br style=\"box-sizing: border-box;\"/>你将学到什么？<br style=\"box-sizing: border-box;\"/>这门课程之后你会意识到Internet 和Web的出现并不是理所应当的。你会更好地了解现代社会面对的技术问题。还可以了解到Internet 和Web是个创新空间，在这里如何创新。如果你对课程材料很感兴趣，那么这对Web设计，Web开发、编程，甚至是网络管理是个不错的引入。至少，你会成为一个更聪明的网民。</p><p><br style=\"box-sizing: border-box;\"/>课程大纲<br style=\"box-sizing: border-box;\"/>Week 1:课程导论和电子计算的黎明（1940-1960）<br style=\"box-sizing: border-box;\"/>Week 2: 第一个因特网<br style=\"box-sizing: border-box;\"/>Week 3: 万维网<br style=\"box-sizing: border-box;\"/>Week 4:社会化和经济增长（1995-2000）<br style=\"box-sizing: border-box;\"/>Week 5: 因特网和数据包<br style=\"box-sizing: border-box;\"/>Week 6: 传输和安全<br style=\"box-sizing: border-box;\"/>Week 7: 网络应用<br style=\"box-sizing: border-box;\"/>Week 8: 信息保护<br style=\"box-sizing: border-box;\"/>Week 9: 同一认定<br style=\"box-sizing: border-box;\"/>期末考试</p><p><br style=\"box-sizing: border-box;\"/>背景知识<br style=\"box-sizing: border-box;\"/>这门课不需要什么提前准预备知识，也不要求变成。所以任何人都能来学，大家都应该学这门课。</p><p><br style=\"box-sizing: border-box;\"/>推荐阅读<br style=\"box-sizing: border-box;\"/>这门课提供所有需要的材料。<br style=\"box-sizing: border-box;\"/>Katie Hafner写的Where Wizards Stay Up Late: The Origins Of The Internet&nbsp;<br style=\"box-sizing: border-box;\"/>Tim Berners-Lee和Tim Berners-Lee写的Weaving the Web: The Original Design and Ultimate Destiny of the World Wide Web<br style=\"box-sizing: border-box;\"/>Robert Cailliau写的How the Web was Born: The Story of the World Wide Web&nbsp;<br style=\"box-sizing: border-box;\"/>这些有趣的补充材料从不同角度看发展历史。在课程中我们也会不断扩充阅读材料。</p><p><br style=\"box-sizing: border-box;\"/>课程形式<br style=\"box-sizing: border-box;\"/>这门课由5-20分钟的课程视频组成，其中包含互联网先驱的采访。课程视频将嵌入测试，这样可以帮助学生检测自己的学习。每周有家庭作业式的测验，同样帮助学生检测所学，深入探索。历史部分结束后有一个期中考试，课程最后有一个期末考试。</p><p>问答<br style=\"box-sizing: border-box;\"/>为什么要介绍历史？<br style=\"box-sizing: border-box;\"/>历史不只记录时间、地点、人名，那些考试中的答案。互联网和万维网的历史远不这么肤浅。这段历史中有英雄，也有恶棍。有亟待解决的工程难题。从创建者那里直接聆听这段历史中发生了什么，我们也将了解到人类怎样一起解决复杂、未知的难题。<br style=\"box-sizing: border-box;\"/>课程形式是什么样的？<br style=\"box-sizing: border-box;\"/>这门课由60%的课程和40%的网络领军人物的视频采访组成。视频在10-30分钟左右，在最后还提供评估材料。每周需要2-5个小时看这些材料，做补充阅读，和其他同学一起讨论，做作业。<br style=\"box-sizing: border-box;\"/>我需要课本吗？<br style=\"box-sizing: border-box;\"/>不需要。我们在网上提供所有需要的材料。<br style=\"box-sizing: border-box;\"/>我需要编程吗？<br style=\"box-sizing: border-box;\"/>不需要。<br style=\"box-sizing: border-box;\"/>有关时间，我可以自己分配吗？<br style=\"box-sizing: border-box;\"/>在一定程度上可以。在任何一周的课程里，你都可以看所有材料和评估，不管你在哪个时区。但是你需要和这门课同步，并在截止时间钱提交作业。所以你不能再最后一周补上所有的东西。我们希望你每周都能抽出时间学习这门课。<br style=\"box-sizing: border-box;\"/>在Twitter上这门课的标签是什么？<br style=\"box-sizing: border-box;\"/>#IHTS，搜索它，你可以看到大家对于这门课的讨论。<br style=\"box-sizing: border-box;\"/>我们可以联系到教授吗？<br style=\"box-sizing: border-box;\"/>教授一直在关注这门课。如果出现问题，在线办公时间或者及时解决大多数同学都遇到的问题。讨论区也是课程的重要部分，那里的学生可以解答大部分问题。课程指导也将在讨论区和大家交流。你可以在Twitter上关注指导老师@ drchuck 。<br style=\"box-sizing: border-box;\"/>我需要了解HTML吗？<br style=\"box-sizing: border-box;\"/>不需要。不过上过这门课后，希望你有学习HTML的打算。<br style=\"box-sizing: border-box;\"/>完成这门课后我可以获得证书吗？<br style=\"box-sizing: border-box;\"/>可以。凡是顺利完成这门课的学生都可以获得证书。</p><p><br/></p>', '', '铭飞科技', '/48\\7.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('8', '铭飞科技', '<p>学会如何像数学家那样思考——一种在几千年来慢慢形成的强大的认知方式。</p><p>这个课程的目标是帮助你培养一种有价值的思维能力—— 一种我们祖先在这3000年来慢慢培养出来的强大的思维方式。数学思维和做数学题不一样——至少和学校里学的数学不一样。在学校里，学数学主要是学习如何解决一些来自日常生活，科学，或者数学本身的有固定模式的题目。在学校数学中成功的关键是学会用固定的方法思考。与之相反，数学思维的关键之一是创造性思维——现代社会中一个很重要的能力。这个课程帮助学生养成这种重要的思维习惯。课程的主要对象是想以数学或者需要数学的学科为专业的大学一年级学生，和想学这些专业的高中三年级学生（对于美国来说是高中四年级）。这些人需要数学思维来成功的学好他们的专业。但是，数学思维也是一个很有价值的生活技能，任何17岁以上的人都可以从本课程中获益。</p><p><br style=\"box-sizing: border-box;\"/>课程大纲<br style=\"box-sizing: border-box;\"/>教师的欢迎和简介<br style=\"box-sizing: border-box;\"/></p><ol style=\"box-sizing: border-box; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\" class=\" list-paddingleft-2\"><li><p>入门材料</p></li><li><p>语言分析——逻辑连词</p></li><li><p>语言分析——暗示</p></li><li><p>语言分析——等价</p></li><li><p>语言分析——量词</p></li><li><p>处理量词</p></li><li><p>证明</p></li><li><p>有量词的证明</p></li><li><p>数论的基本原则</p></li><li><p>开始真正的分析</p></li></ol><p><br style=\"box-sizing: border-box;\"/></p><p>知识背景<br style=\"box-sizing: border-box;\"/>高中数学就够了。</p><p><br style=\"box-sizing: border-box;\"/>推荐阅读<br style=\"box-sizing: border-box;\"/>课程开始时会有一个阅读任务，提供一些背景知识。<br style=\"box-sizing: border-box;\"/>会有一个额外的阅读单元介绍基础的集合论，以方便那些不了解的学生。<br style=\"box-sizing: border-box;\"/>课程推荐一本教科书，Keith Devlin写的数学思维导论（《Introduction to Mathematical Thinking》），你可以在Amazon上以10美元（约61-62人民币）以下的低价买到实体书或者Kindle版本，但是这不是必需的。如果你想要了解大概的数学背景和数学在现代世界中所扮演的角色，可以看一看2012斯坦福秋季学期Devlin老师的数学概要课程（“Mathematics: Making the Invisible Visible&quot;)。你可以从iTunes University(Stanford)免费下载，也可以在YouTube上看（共五集），尤其可以关注讲座1和讲座4的前半部分。</p><p><br style=\"box-sizing: border-box;\"/>课程形式<br style=\"box-sizing: border-box;\"/>这个课持续十周，包括八周的讲座和两周的讨论与小组合作和一个需要在倒数第二周完成，在最后一周通过同学互评来打分的开卷的期末考试。教师会在指导视频中讲解上一周的作业。</p><p><br style=\"box-sizing: border-box;\"/>常见问题解答<br style=\"box-sizing: border-box;\"/>完成这个课程我能拿到证书吗？<br style=\"box-sizing: border-box;\"/>如果你完成了这个课程，你能拿到证书。那些在课程和期末考试中表现出色的学生能拿到表现出色证书。但是你无法通过这个课程获得斯坦福的学分。</p><p>课程的作业是什么呢？<br style=\"box-sizing: border-box;\"/>每个讲座之后，都会有一个作业（可下载的PDF格式，和讲座一同放出）。作业的目的是引导你理解你学的东西。作业的解答会在下一周指导视频中由教师给出。你可以在解答的指导下，综合其他学生的信息，为自己作业的打分。这些作业的目的是让你更好的理解和发展，而不是获得分数。我们强烈建议你和其他同学一起在任何时候讨论你的作业。这些作业（和自评分数）是本课程的核心。学习如何以数学的思维思考问题的唯一方法是不停试着这么做，把你的结果和专家的结果相比较并且和同学们一起讨论。</p><p>这个课程会有期末考试吗？<br style=\"box-sizing: border-box;\"/>在倒数第二周的开始，会有一个那一周要完成的开卷期末考试。完成的考试作业要用图片（或者扫描的PDF）上传。如果你足够熟悉Tex，你可以在网站上直接用键盘输入。最后一周会通过同学互评的方式评分。</p><p>这个课程有哪些等级？<br style=\"box-sizing: border-box;\"/>有两个：“完成”和“优异地完成”。你需要看所有的讲座并且完成所有的测试（包括讲座内嵌入的测试和每周测试）来获取“完成”的等级。能否获取”优异的完成：取决于你在每周测试中所拿到的分数和期末考试的结果。</p><p><br/></p>', '', '铭飞科技', '/49\\8.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('9', '铭飞科技', '<p>课程介绍<br style=\"box-sizing: border-box;\"/>这门课程不仅适合考虑参加英语语言考试的学习者，也适合正在学习英语的学习者。本课程专注于雅思考试。雅思是全球最普及的为出国学习或者生活做准备的语言考试。全世界有9000个包括大学，公司，移民机构，职业机构等组织承认雅思考试。去年全球雅思考试数量超过了2百万。这门关于雅思的课程将引导你进入每一个雅思考试阶段：从阅读，写作，口语到听力。每阶段我们的老师和经验丰富的雅思辅导者都会提供考试指导。本课程开始时间为9月21日。</p><p><br style=\"box-sizing: border-box;\"/>课程目标<br style=\"box-sizing: border-box;\"/>课程结束后，你将<br style=\"box-sizing: border-box;\"/>(1) 熟悉所有的雅思考试部分<br style=\"box-sizing: border-box;\"/>(2) 获得一些有用的贴士，帮助你实现理想的<br style=\"box-sizing: border-box;\"/>雅思考试目标<br style=\"box-sizing: border-box;\"/>(3) 理解雅思考试的评估标准</p><p><br style=\"box-sizing: border-box;\"/>课程特色<br style=\"box-sizing: border-box;\"/>本课程由雅思考试机构－ 英国文化协会教授。英国文化协会在英语语言教学和评估方面有超过80年的历史。</p><p><br style=\"box-sizing: border-box;\"/>课程目标学习者<br style=\"box-sizing: border-box;\"/>本课程针对母语为非英语的学习者，难度在中级左右。</p><p><br style=\"box-sizing: border-box;\"/>关于课程更多信息<br style=\"box-sizing: border-box;\"/>我们的免费课程 &#39;了解雅思&#39; 目标在于给你更多的自信。通过了解雅思考试需要的核心语言技能，学习者能够清晰的了解雅思考试，同时在学习的过程中提高英语水平。我们希望这个六周的课程能够帮助你们建立对于雅思考试的信心。课程结束后，你们能在考试中发挥最好的水平。我们的视频课程介绍了雅思考试，提供准备考试的资料。这门课程对任何想学习英语，在国外工作或学习，准备英语语言考试的学习者都有帮助，特别是如果你想参加雅思考试的话。这门课程集中在考试的每一个部分（听力，阅读，口语和书写），以给你提供最好的机会获得最理想的雅思成绩。</p><p><br/></p>', '', '铭飞科技', '/49\\9.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('10', '铭飞科技', '<p>这门课程介绍了起源于硅谷并在全世界出现的高科技企业的基础知识。你将会学习高科技企业家建立公司的过程。内容包括产生创意，寻找商业机会，收集人才资金资源，研究如何推销及策划创意及控制公司快速发展。在学习过程中学生组织成小组并以小组为单位研究创业项目。<br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-size: 14px; line-height: 22.000020980835px; white-space: normal; background-color: rgb(255, 255, 255);\"/>这是第二次公开授课，上次有来自全世界的大约40000名学生参与了课程并进行了小组合作。表现优异的小组将会配备硅谷的导师，最好的小组的创意将会被推荐给投资者。上次课程的许多学生都建立了自己的创业公司并被定期指导。<br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-size: 14px; line-height: 22.000020980835px; white-space: normal; background-color: rgb(255, 255, 255);\"/>根据课程内容，我们希望你学会如何<br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-size: 14px; line-height: 22.000020980835px; white-space: normal; background-color: rgb(255, 255, 255);\"/>1。对如何从产生创意到寻找商业机会（高水平(high performing)学生将能够讨论替代方案模型的优缺点)<br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-size: 14px; line-height: 22.000020980835px; white-space: normal; background-color: rgb(255, 255, 255);\"/>2。建立并验证一个寻找人才和资本的方案。<br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-size: 14px; line-height: 22.000020980835px; white-space: normal; background-color: rgb(255, 255, 255);\"/>3。建立并验证一个如何推销及策划创业创意的商业模型。<br style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-size: 14px; line-height: 22.000020980835px; white-space: normal; background-color: rgb(255, 255, 255);\"/>4。建立一个在创业过程中如何将问题转化成机会的思维过程，这种思维模式也适用于大型公司及其他环境。</p>', '', '铭飞科技', '/49\\10.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('11', '铭飞科技', '<p>环境工程、市政工程等专业的主干专业课，主要讲述水和废水处理中主要的物化和生物处理方法的基本原理、工艺构成、运行特点、工艺计算方法以及部分工程实例。该课程是从事水处理技术研究、设计以及运行管理人员的必修课。</p><p>课程简介<br style=\"box-sizing: border-box;\"/>《水处理工程》是环境工程、环境科学、市政工程等相关专业的主干专业课。本课程旨在向学生全面讲授水和废水处理中主要的物化和生物处理技术单元的基本原理和特点、工艺的基本计算方法和应用范围、主要构筑物的构成和运行特点、典型的水与废水处理工艺以及相关技术的国内外最新研究进展。整个课程分为两篇：第一篇—水与废水物化处理的原理与工艺，主要介绍各种物化处理单元，包括：混凝、沉淀与澄清、气浮、过滤、消毒、氧化还原、膜分离和离子交换；第二篇为废水生物处理的原理与工艺，主要讲述废水的好氧和厌氧生物处理工艺、生物脱氮除磷工艺、废水的天然处理工艺以及污泥的处理与处置。</p><p><br style=\"box-sizing: border-box;\"/>【FAQ】<br style=\"box-sizing: border-box;\"/>请问教材和参考书是什么？<br style=\"box-sizing: border-box;\"/>教材：1. 张晓健、黄霞：水与废水物化处理的原理与工艺，清华大学出版社, 2011；2. 张自杰：排水工程（下册）（第四版），中国建筑工业出版社，2000；参考书：1. 严煦世、范瑾初：给水工程（第四版），中国建筑工业出版社，1999；2. Wastewater Engineering: Treatment and Reuse. Fourth Edition. Metcalf &amp; Eddy, Inc., 2003(清华大学出版社影印版)。</p><p><br/></p>', '', '铭飞科技', '/49\\11.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('12', '铭飞科技', '<p>好奇心是人类最重要的特征之一。它使我们能够把未知变成已知，打破壁垒，启发和阐明生活的各个方面，包括日常爱好，也包括对天空中的星星的解释。我们获得的许多值得骄傲的成就，都归因于我们与生俱来的探索欲望。本课程将帮助你培养自己的好奇心，并利用它来以学术的方式开始自己的研究项目。</p><p><br style=\"box-sizing: border-box;\"/>本课程是面向正在进行或计划进行某项学术研究的任何人员，你的研究内容可以是专题项目资格，国际文凭专题论文，课件，或者某项独立奖学金。<br style=\"box-sizing: border-box;\"/>本课程由热衷研究的学者开发、讲授，将支持你研究过程的每一步，从提出假设、寻找资源，到撰写论文、发表自己的研究成果。<br style=\"box-sizing: border-box;\"/>课程注重实际动手能力，你将有机会与来自世界各地的其他研究人员分享你的想法，收到学习同伴关于你的研究议案的反馈，审查和评论其他研究人员的工作，从而建立一个支持志同道合的充满好奇的学习者的社区。<br style=\"box-sizing: border-box;\"/>如果你想加入参与课程，并通过社交网络加入关于本课程的讨论</p><p><br style=\"box-sizing: border-box;\"/>先修要求<br style=\"box-sizing: border-box;\"/>没有特别的课程要求，只需要好奇心，以及展开一些学术研究的热情。<br style=\"box-sizing: border-box;\"/>值得注意的是，参加本次课程，你将有机会让其他学习者评审你的工作内容，同样的，你也将评审他人的作业。虽然不强制要求参与这类活动，积极参与无疑将增强你的体验。</p><p><br/></p>', '', '铭飞科技', '/37\\12.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('13', '铭飞科技', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">推理是非常重要的。这门课程将教会你如何正确推理。你将会学到如何理解并评断他人的论据，以及如何基于感兴趣的话题构造自己的论据。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"box-sizing: border-box;\"/><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">课程大纲</span><br style=\"box-sizing: border-box;\"/>第一部分：如何分析论据（即确定论据，并将其简化、归纳以便突出联系彼此的结构）<br style=\"box-sizing: border-box;\"/>第一周：如何确认一条论据<br style=\"box-sizing: border-box;\"/>第二周：如何分解一条论据<br style=\"box-sizing: border-box;\"/>第三周：如何重塑一条论据</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">第二部分：演绎论证的评断（即其前提与结论之间是否存在有效关联）<br style=\"box-sizing: border-box;\"/>第四周：命题逻辑及真值表<br style=\"box-sizing: border-box;\"/>第五周：分类逻辑及三段论</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">第三部分：归纳论证的评断（即其前提是否提供了结论所需要的足够证据）<br style=\"box-sizing: border-box;\"/>第六周：归纳论证论据的定义<br style=\"box-sizing: border-box;\"/>第七周：因果论证<br style=\"box-sizing: border-box;\"/>第八周：归纳概率与决断</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">第四部分：一团糟的论据（即常见的容易犯的错误）<br style=\"box-sizing: border-box;\"/>第九周：谬误之模糊与歧义<br style=\"box-sizing: border-box;\"/>第十周：谬误之相关性谬论及空白性谬论<br style=\"box-sizing: border-box;\"/>第十一周：如何反驳一条论据<br style=\"box-sizing: border-box;\"/>第十二周：联系日常的学以致用</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"box-sizing: border-box;\"/><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">先修知识</span><br style=\"box-sizing: border-box;\"/>这门课非常适合大学新生或者高年级中学生，或者（事实上是）任何对此感兴趣的人。因而我们除了要求学生具备相关的英语知识，再无其他。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"box-sizing: border-box;\"/><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">课程相关教材</span><br style=\"box-sizing: border-box;\"/>注册该课程的学生将能在课程期间免费阅读相关章节，这些都是由授课教师为课程精心选择的。你可以通过Chegg网站上的电子阅读器来阅读教材的Coursera精简电子版。如果你选择了“购买此书”，你可以买到这本教材的完整版，而不限于本课程中涉及的章节。这是由Coursera与出版商及Chegg联合发起的。<br style=\"box-sizing: border-box;\"/>圣智优选：掌握论据<br style=\"box-sizing: border-box;\"/>作者：Sinnott-Armstrong, Walter, Sinnott-Armstrong, Walter (WalterSinnott-Armstrong), Fogelin, Robert J.<br style=\"box-sizing: border-box;\"/>出版商：圣智学习出版集团</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"box-sizing: border-box;\"/><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">推荐阅读</span><br style=\"box-sizing: border-box;\"/>期望学习更多详细例子和附加练习，或是进一步深入了解这些话题的学生可以参看《掌握论据：非正式逻辑导论》<br style=\"box-sizing: border-box;\"/>你可以在这里找到电子版。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"box-sizing: border-box;\"/><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">授课形式</span><br style=\"box-sizing: border-box;\"/>每一周的课程将会提供一些教学视频，这些视频可以独立观看亦可以当作三个关联讲座。每段视频后会要求学生完成小测验（确保你理解了课程内容），另外还有长些中期测验。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"box-sizing: border-box;\"/><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">常见问</span><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">题解答</span><br style=\"box-sizing: border-box;\"/>1. 完成这门课后能获得证书吗？<br style=\"box-sizing: border-box;\"/>是的。成功完成这门课的学生将会收到授课教师署名的认证证书。<br style=\"box-sizing: border-box;\"/>2. 这门课需要我做什么准备？<br style=\"box-sizing: border-box;\"/>一台能上网的电脑。<br style=\"box-sizing: border-box;\"/>3. 这门课将带给我最酷的事？<br style=\"box-sizing: border-box;\"/>用“说话模棱两可的人”这样的添堵称呼来代表那些企图用糟糕的论据来愚弄你的人。<br style=\"box-sizing: border-box;\"/>4. 别人怎么评价这门课？<br style=\"box-sizing: border-box;\"/>这里有一些来自于已经学过这门课的学生的评语：<br style=\"box-sizing: border-box;\"/>“我很感谢这门课的两位老师。这课相当有趣，具有启发性，并且我非常喜欢世界各地不同观点、不同背景人们的加入。”<br style=\"box-sizing: border-box;\"/>“课程刚开始的一两周内，我一度沉浸在不知是对某些概念还是对某次家庭作业的思考中；然后我突然意识到：‘也许这才是真正的思考？’。事实上，我来自一个思考氛围浓厚的家庭；我自己也一直在思考关于人生和职业的事…但是不知为何我意识到，尽管我过去一直在思考，但类似这类的思考还真是不怎么多见…所以，非常感谢！”<br style=\"box-sizing: border-box;\"/>“Dr. Sinott-Armstrong和Dr. Neta之间的融洽关系以及他们的幽默感使得这门课引人入胜，趣味横生。他们毫不吝啬地展现了对这个话题的激情，并且在解释时充满耐心。”</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"box-sizing: border-box;\"/>另外还有一些近期的文章和新闻提到了这门课，请戳链接：<br style=\"box-sizing: border-box;\"/>1.Raleigh News and Observer Article - January 20, 2013<br style=\"box-sizing: border-box;\"/>（）<br style=\"box-sizing: border-box;\"/>2.&quot;How Free Online Courses are Changing the Traditional Liberal Arts Education&quot; PBS Newshour - January 8, 2013（）</p><p><br/></p>', '', '铭飞科技', '/37\\13.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('14', '铭飞科技', '<p>* 本课程全部视频可直接在站内播放，感谢@YC创业课中文社区&nbsp;提供资源，及课程视频中文翻译工作</p><p><br style=\"box-sizing: border-box;\"/>通过本课程，免费跟随世界级专家那里学习如何开始创业。<br style=\"box-sizing: border-box;\"/>CS183B是斯坦福大学的一门课，这是专门为想创业的人设计的一门独立的商业课程，一共有20个课程视频，有的是由一个讲师讲授，有的是两个讲师，还有的是一个小组，所有课程视频总长为1000分钟。</p><p><br style=\"box-sizing: border-box;\"/>课程内容包括：如何提出想法并对其进行评价，如何得到用户并扩大用户人数，如何做销售和市场营销，如何聘请人才，如何筹集资金，以及公司的文化、运作与管理，企业策略等等。</p><p><br style=\"box-sizing: border-box;\"/>我们不能教给创业者使其成功创业的所有知识，但我认为我们可以教给其很大一部分知识帮助其成功创业。经过一番努力，我们请来了过去9年中在Y Combinator晚宴上最好的演说家，并以最有可能产生效果的方式对其进行安排。</p><p><br style=\"box-sizing: border-box;\"/>我们这样做是因为我们相信帮助更多人更好地创业对每个人都有利。这即使是对那些不想创业的人来说也是非常有价值的。</p><p><br style=\"box-sizing: border-box;\"/>这样的谈话确实帮助了YCombinator的建立者创建了他们的公司，希望你也能在此获得有价值的东西！</p><p><br style=\"box-sizing: border-box;\"/></p><p>课程安排<br style=\"box-sizing: border-box;\"/>作业在该网站上提交。<br style=\"box-sizing: border-box;\"/>你可以在Q&amp;A板块向特邀嘉宾提问问题。<br style=\"box-sizing: border-box;\"/>从iTunes U上下载该课程视频将要延迟2至3天。<br style=\"box-sizing: border-box;\"/></p><table><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\" class=\"firstRow\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">演讲者<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">主题<br style=\"box-sizing: border-box;\"/></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">Sam Altman,&nbsp;President, Y Combinator<br style=\"box-sizing: border-box;\"/>Dustin Moskovitz,&nbsp;Cofounder, Facebook, Cofounder, Asana, Cofounder, Good Ventures<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle; word-break: break-all;\">欢迎词<br style=\"box-sizing: border-box;\"/>理念，产品，团队和管理（一）<br style=\"box-sizing: border-box;\"/>为什么要创业？<br style=\"box-sizing: border-box;\"/></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">Sam Altman,&nbsp;President, Y Combinator<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">理念，产品，团队和管理（二）<br style=\"box-sizing: border-box;\"/></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">Paul Graham,&nbsp;Founder, Y Combinator<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">创业中的反直觉，以及<br style=\"box-sizing: border-box;\"/>如何获得想法<br style=\"box-sizing: border-box;\"/></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">Adora Cheung,&nbsp;Founder, Homejoy<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">产品构建，与用户交谈，并获得越来越多的用户<br style=\"box-sizing: border-box;\"/></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">Peter Thiel,&nbsp;Founder, Paypal, Founder, Palantir, and Founder, Founders Fund<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">企业战略与垄断理论<br style=\"box-sizing: border-box;\"/></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">Alex Schultz,&nbsp;VP Growth, Facebook<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">实现增长<br style=\"box-sizing: border-box;\"/></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">Kevin Hale,&nbsp;Founder, Wufoo and Partner, Y Combinator<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">如何构建用户喜爱的产品（一）<br style=\"box-sizing: border-box;\"/></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">TBA<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">Marc Andreessen,&nbsp;Founder, Andreessen Horowitz and Founder, Netscape<br style=\"box-sizing: border-box;\"/>Ron Conway,&nbsp;Founder, SV Angel<br style=\"box-sizing: border-box;\"/>Parker Conrad,&nbsp;Founder, Zenefits<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">如何筹集资金<br style=\"box-sizing: border-box;\"/></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">Alfred Lin,&nbsp;Former COO, Zappos and Partner, Sequoia Capital<br style=\"box-sizing: border-box;\"/>Brian Chesky,&nbsp;Founder, Airbnb<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">企业文化与建立团队（一）<br style=\"box-sizing: border-box;\"/></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">Patrick and John Collison,&nbsp;Founders, Stripe<br style=\"box-sizing: border-box;\"/>Ben Silbermann,&nbsp;Founder &amp; CEO, Pinterest<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">企业文化与建立团队（二）<br style=\"box-sizing: border-box;\"/></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">Aaron Levie,&nbsp;Founder, Box<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">销售与市场营销<br style=\"box-sizing: border-box;\"/></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">Reid Hoffman,&nbsp;Partner, Greylock Ventures and Founder, LinkedIn<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">待定<br style=\"box-sizing: border-box;\"/></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">Keith Rabois,&nbsp;Partner, Khosla Ventures<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">如何运行公司<br style=\"box-sizing: border-box;\"/></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">Ben Horowitz,&nbsp;Founder, Andreessen Horowitz, and Founder, and Opsware<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">如何管理公司<br style=\"box-sizing: border-box;\"/></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">Marissa Mayer,&nbsp;CEO, Yahoo<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">待定<br style=\"box-sizing: border-box;\"/></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">Hosain Rahman,&nbsp;Founder, Jawbone<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">如何构建用户喜爱的产品（二）<br style=\"box-sizing: border-box;\"/></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">Kirsty Nathoo and Carolynn Levy,&nbsp;Partners, Y Combinator<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">运行机制—法律，财务，人力资源等<br style=\"box-sizing: border-box;\"/></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">TBA<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\"><br/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">Sam Altman,&nbsp;President, Y Combinator<br style=\"box-sizing: border-box;\"/></td><td style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: middle;\">最终思考及后期咨询<br/><br style=\"box-sizing: border-box;\"/></td></tr></tbody></table><p><br/></p>', '', '铭飞科技', '/37\\14.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('15', '铭飞科技', '<p>数学的重要特征是它的抽象性，这一特征是令人生畏的。但也正是这一特征可以使人们在繁杂的世界中逐步懂得宇宙深处伟大设计图的语言；可以用理性的思维达到超出人类感官所及的宇宙的根本。而这一切正是数学的魅力所在，也是数学在人类历史上起着其它科学不可替代作用的重要原因。但这也是很多学生畏惧数学或学习数学的困难所在。</p><p>本课程针对这一情况，试图和学生一起从思想上重走一遍前辈们走过的路，作一次轻松的数学之旅。在这一旅途中我们不断揭示一些概念和数学思想形成的过程和历史，理解数学抽象的必要性和魅力，真实体会数学抽象所表现出的人类心智的荣耀，潜移默化地从中培养数学抽象的能力。并试图就一些简单的数学例子介绍数学抽象的一些特点，并试图就学习数学时，如何克服抽象带来的困难谈一些看法。主讲人有信心使这门课程成为一次轻松的“抽象”旅游。并希望对学生的数学课程的学习和数学思维的形成，在心理和心智上都有所帮助。<br style=\"box-sizing: border-box;\"/>好的旅游不是旅游点的累积，而是心与自然、心与心的交流。我们的“数学之旅”不期待你知道了多少数学概念，而期待你开始对数学的抽象有了体会，意识到数学的抽象其实不“抽象”，感受到数学思维所表现出的人类心智的荣耀。</p><p><br style=\"box-sizing: border-box;\"/>授课大纲<br style=\"box-sizing: border-box;\"/>第1周<br style=\"box-sizing: border-box;\"/>第一章数学是什么<br style=\"box-sizing: border-box;\"/>第一章数学思维<br style=\"box-sizing: border-box;\"/>第一章 数学学习<br style=\"box-sizing: border-box;\"/>第一章知识点复习、作业、习题等</p><p>第2周<br style=\"box-sizing: border-box;\"/>第二章从圆的面积谈起<br style=\"box-sizing: border-box;\"/>第二章牛顿和莱布尼兹的微积分<br style=\"box-sizing: border-box;\"/>第二章分析的严格化<br style=\"box-sizing: border-box;\"/>第二章知识点复习、作业、习题等</p><p>第3周<br style=\"box-sizing: border-box;\"/>第三章距离与范数<br style=\"box-sizing: border-box;\"/>第三章线性结构<br style=\"box-sizing: border-box;\"/>第三章空间种种<br style=\"box-sizing: border-box;\"/>第三章知识点复习、作业、习题等</p><p>第4周<br style=\"box-sizing: border-box;\"/>第四章布劳威尔不动点原理<br style=\"box-sizing: border-box;\"/>第四章无穷维的不动点原理<br style=\"box-sizing: border-box;\"/>第四章经济学的应用<br style=\"box-sizing: border-box;\"/>第四章知识点复习、作业、习题等</p><p>第5周<br style=\"box-sizing: border-box;\"/>第五章 Fourier定理<br style=\"box-sizing: border-box;\"/>第五章 Fourier分析的应用<br style=\"box-sizing: border-box;\"/>第五章 Fourier分析的发展<br style=\"box-sizing: border-box;\"/>第五章知识点复习、作业、习题等</p><p>第6周<br style=\"box-sizing: border-box;\"/>第六章混沌<br style=\"box-sizing: border-box;\"/>第六章分形<br style=\"box-sizing: border-box;\"/>第六章“混沌的游戏”<br style=\"box-sizing: border-box;\"/>第六章 知识点复习、作业、习题等</p><p><br style=\"box-sizing: border-box;\"/>先修知识<br style=\"box-sizing: border-box;\"/>有一定的微积分和线性代数基础的大学生。</p><p><br style=\"box-sizing: border-box;\"/>参考资料<br style=\"box-sizing: border-box;\"/>1. 数学及其历史，John Stillwell（袁向东，冯绪宁译），高等教育出版社，ISBN：<br style=\"box-sizing: border-box;\"/>2. 现代世界中的数学，Morris Kline（齐民友译）上海教育出版社, ISBN：<br style=\"box-sizing: border-box;\"/>3. 数学与文化，齐民友, 湖南教育出版社, ISBN：<br style=\"box-sizing: border-box;\"/>4. 混沌，开创新科学，詹姆斯 格莱克，（张淑誉译），上海译文出版社<br style=\"box-sizing: border-box;\"/>5. 诺贝尔经济学奖与数学，史树中，清华大学出版社, ISBN：</p><p><br style=\"box-sizing: border-box;\"/>授课形式<br style=\"box-sizing: border-box;\"/>学生通过观看教学视频、学习教材课件（PPT），结合完成作业练习以及测试的形式进行自学。<br style=\"box-sizing: border-box;\"/>鼓励学生通过论坛与同学和老师积极交流学习经验和体会，帮助其掌握和巩固所学知识。</p><p><br style=\"box-sizing: border-box;\"/>【FAQ】<br style=\"box-sizing: border-box;\"/>Q:课程评分标准是什么？<br style=\"box-sizing: border-box;\"/>A：期末考试成绩占总成绩的70%；作业及测验占总成绩的30%。<br style=\"box-sizing: border-box;\"/>Q:课程通过标准是什么？<br style=\"box-sizing: border-box;\"/>A:总成绩 60 分以上者，满分为100分</p><p>这门课曾于2013年12月在Coursera开课，课程链接：https://www.coursera.org/course/sjtuma153</p><p><br/></p>', '', '铭飞科技', '/37\\15.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('16', '', null, 'f,', '', '/50\\index.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('17', '', null, 'f,', '', '/51\\index.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('18', '', null, 'f,', '', '/15\\18.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('19', '铭飞科技', '<p>了解生命的起源和演化，寻找地球以外的生物。</p><p><br style=\"box-sizing: border-box;\"/>课程概述<br style=\"box-sizing: border-box;\"/>两千年多以前，古希腊人曾探究过宇宙中是否存在其他世界。现在，人们正通过实验来验证这个问题。这门课程由英国爱丁堡大学的天体生物学中心提供，旨在介绍天体生物学，也是MOOC首次探索此类课题。这门课程将探讨地球上生物的起源和演化，以及地球以外存在生命的可能性。</p><p>“天体生物学”解答了人们普遍感兴趣和十分关注的问题，如：地球上的生命从何而来？生命的出现是一个必然过程吗，宇宙中到处存在生命吗？天体生物学是一门跨学科的科学，涉及到如天体物理学、生物学、地学和化学等不同领域。</p><p>这门课程中，我们将探讨我们所了解的有关生命在地球极端环境中的存活能力。我们将着眼于生命起源的不同假设，以及一些探寻我们所在的太阳系中和环绕遥远恒星旋转的行星上生命的使命。我们将讨论地球上的一些极端环境，这有助于我们理解生命的极限以及生命如何适应这些极端条件。我们将探索外星智能生物存在的可能性以及相关探测的影响。这门课程将为天体生物学提供学习基础，并向学生介绍不同科学领域的相关概念。</p><p><br style=\"box-sizing: border-box;\"/>课程大纲<br style=\"box-sizing: border-box;\"/>第一周：生命是什么，以及生命该如何定义？我们对生命的起源了解哪些内容，以及对于地球上生命的起源，当下存在哪些假设？<br style=\"box-sizing: border-box;\"/>第二周：在生命诞生时，早期地球的环境是怎样的，以及我们对于地球形成初期的生命了解哪些内容？生命是如何演化以适应极端环境存活的？地球上生命的主要演化转变时期是什么？<br style=\"box-sizing: border-box;\"/>第三周：对于我们太阳系中的其他行星上的生命有哪些展望，以及我们如何去寻找？一颗行星宜居的必要条件有哪些？<br style=\"box-sizing: border-box;\"/>第四周：我们如何寻找环绕遥远恒星旋转的类地行星，以及我们如何探测其上的生命？<br style=\"box-sizing: border-box;\"/>第五周：地球以外存在智能生物的可能性有多大？我们如何与地外文明接触，以及这将对社会造成什么影响？谁将代表地球？</p><p><br style=\"box-sizing: border-box;\"/>先修知识<br style=\"box-sizing: border-box;\"/>无任何专业背景要求。</p><p><br style=\"box-sizing: border-box;\"/>参考资料<br style=\"box-sizing: border-box;\"/>关于天体生物学的书籍种类繁多。这些书籍不是课程的必读书目，而且并非课程专用。这仅是我们建议阅读的有用书籍中的一部分。<br style=\"box-sizing: border-box;\"/></p><ul style=\"box-sizing: border-box; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\" class=\" list-paddingleft-2\"><li><p>《<a href=\"http://chggtrx.com/click.track?CID=267582&AFID=301076&ADID=1088031&SID=astrobio&isbn_ean=9781421400969\">天体生物学：简介</a>》（<a href=\"http://chggtrx.com/click.track?CID=267582&AFID=301076&ADID=1088031&SID=astrobio&isbn_ean=9781421400969\">Astrobiology: A Brief Introduction</a>），作者为Kevin W. Plaxco和Michael Gross。很好地介绍了天体生物学的基本内容。</p></li><li><p>《天体生物学的简短介绍》（A Short Introduction to Astrobiology），作者为David Catling；</p></li><li><p>《宇宙中的生命：基础教程》（Life in the Universe: A Beginners Guide），作者为Lewis Dartnell，这两本书籍也是很好的阅读选择。</p></li><li><p>《<a href=\"http://chggtrx.com/click.track?CID=267582&AFID=301076&ADID=1088031&SID=astrobio&isbn_ean=9780521531023\">行星和生命：新兴的天体生物学</a>》（<a href=\"http://chggtrx.com/click.track?CID=267582&AFID=301076&ADID=1088031&SID=astrobio&isbn_ean=9780521531023\">Planets and Life: The Emerging Science of Astrobiology</a>），作者为W. Sullivan和J. Baross，剑桥大学出版社。价格稍贵，但对天体生物学内容覆盖相当全面</p></li><li><p>《<a href=\"http://chggtrx.com/click.track?CID=267582&AFID=301076&ADID=1088031&SID=astrobio&isbn_ean=9781107600935\">天体生物学入门</a>》（<a href=\"http://chggtrx.com/click.track?CID=267582&AFID=301076&ADID=1088031&SID=astrobio&isbn_ean=9781107600935\">An Introduction to Astrobiology</a>），作者为D. A. Rothery、I. Gilmour和M.A. Sephton，Open University。很好的总结了天体生物学中的很多课题。</p></li></ul><p>这门课程的授课教师也创作了若干与天体生物学相关的书籍，你可以选择性阅读，不做硬性要求。<br style=\"box-sizing: border-box;\"/></p><ul style=\"box-sizing: border-box; padding: 0px; border: 0px; font-family: &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, SimHei, tahoma, sans-serif; font-stretch: inherit; line-height: 22.000020980835px; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\" class=\" list-paddingleft-2\"><li><p>《<a href=\"http://www.amazon.com/Impossible-Extinction-Catastrophes-Supremacy-Microbial/dp/0521817366/ref=sr_1_1?ie=UTF8&qid=1357244398&sr=8-1&keywords=impossible%2Bextinction&tag=coursera-course98-20\">不可能的灭绝：自然灾难和微生物世界的统治地位</a>》（<a href=\"http://www.amazon.com/Impossible-Extinction-Catastrophes-Supremacy-Microbial/dp/0521817366/ref=sr_1_1?ie=UTF8&qid=1357244398&sr=8-1&keywords=impossible%2Bextinction&tag=coursera-course98-20\">Impossible Extinction: Natural Catastrophes and the Supremacy of the Microbial World</a>），作者为C S Cockell。一本介绍地球上微生物的顽强生命力的书籍。</p></li><li><p>《<a href=\"http://chggtrx.com/click.track?CID=267582&AFID=301076&ADID=1088031&SID=astrobio&isbn_ean=9780521729536\">地球生命系统导论</a>》（<a href=\"http://chggtrx.com/click.track?CID=267582&AFID=301076&ADID=1088031&SID=astrobio&isbn_ean=9780521729536\">An Introduction to the Earth-Life System</a>），作者为CS Cockell、R Corfield、N. Edwards和N. Harris。一本讲述生命和行星地球的共同演化过程的教科书。</p></li><li><p>《<a href=\"http://chggtrx.com/click.track?CID=267582&AFID=301076&ADID=1088031&SID=astrobio&isbn_ean=9780230007529\">地球上的太空：寻找外星生物，拯救我们的世界</a>》（<a href=\"http://chggtrx.com/click.track?CID=267582&AFID=301076&ADID=1088031&SID=astrobio&isbn_ean=9780230007529\">Space on Earth: Saving Our World by Seeking Others</a>），作者为C S Cockell。一本介绍地球环境和太空探索之间联系的书籍。</p></li></ul><p><br style=\"box-sizing: border-box;\"/></p><p>授课形式<br style=\"box-sizing: border-box;\"/>这门课程包含一系列教学视频，时长为10至15分钟，每周共计1至1.5小时。</p><p><br style=\"box-sizing: border-box;\"/>常见问题解答<br style=\"box-sizing: border-box;\"/>-&nbsp;完成这门课程后，我会获得证书吗？<br style=\"box-sizing: border-box;\"/>是的。凡是顺利修完这门课程的学生将获得授课教师签署的完成声明。</p><p>-&nbsp;完成这门课程，我会获得爱丁堡大学的学分吗？<br style=\"box-sizing: border-box;\"/>不会。完成声明不包含在大学的正式认证中。但是，这门课程有助于你向高等教育机构或潜在雇主展示你在所学专业中的先前学习成果和兴趣所在。</p><p>-&nbsp;我需要为这门课程准备什么？<br style=\"box-sizing: border-box;\"/>无需做准备。</p><p>-&nbsp;这门课程的学习收获是什么，我为什么要修读？<br style=\"box-sizing: border-box;\"/>你将了解对地球以外生命的探寻过程。</p><p><br/></p>', '', '铭飞科技', '/22\\19.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('20', '铭飞科技', '<p>中国考古学是以往100年中发展最为迅速的领域之一，大批珍贵文物的出土，不断刷新人们对文化中国的认识。本课程以4-6件（组）精品文物作引子，将学术界探索中华文明的过程作为线索，介绍古代中国在造船、玉器等诸多领域的杰出成就，其中不乏学术前沿的考古发现与研究成果，内容精彩纷呈，雅俗共赏，学生可以藉此获得对文化中国全方位的、直观而深入的认识。</p><p>课程章节<br style=\"box-sizing: border-box;\"/>泉州宋船与中国古代造船技术<br style=\"box-sizing: border-box;\"/>文献所见原始渡河工具<br style=\"box-sizing: border-box;\"/>绰墩山出土的渡河浮木<br style=\"box-sizing: border-box;\"/>我国古代舟船的遗迹<br style=\"box-sizing: border-box;\"/>中国古船制造的原创性技术<br style=\"box-sizing: border-box;\"/>泉州宋船的基本情况<br style=\"box-sizing: border-box;\"/>宋船上的遗物<br style=\"box-sizing: border-box;\"/>船的主体结构<br style=\"box-sizing: border-box;\"/>多层船板叠合工艺<br style=\"box-sizing: border-box;\"/>宋船上的水密隔舱<br style=\"box-sizing: border-box;\"/>宋船的建造<br style=\"box-sizing: border-box;\"/>宋明航海史小结<br style=\"box-sizing: border-box;\"/>作业</p><p>良渚“琮王”与中国史前时代的玉文化<br style=\"box-sizing: border-box;\"/>玉的定义<br style=\"box-sizing: border-box;\"/>新石器时代的中国古玉<br style=\"box-sizing: border-box;\"/>古玉王国良渚<br style=\"box-sizing: border-box;\"/>鬼斧神工的良渚玉器<br style=\"box-sizing: border-box;\"/>良渚“神徽”解读<br style=\"box-sizing: border-box;\"/>良渚典型器介绍<br style=\"box-sizing: border-box;\"/>含山玉器：史前制玉的又一奇迹<br style=\"box-sizing: border-box;\"/>中国古代的玉文化<br style=\"box-sizing: border-box;\"/>作业</p><p>贾湖骨笛与中国古代七声音阶的起源<br style=\"box-sizing: border-box;\"/>先秦文献所见七声音阶<br style=\"box-sizing: border-box;\"/>史前陶埙的音阶序列<br style=\"box-sizing: border-box;\"/>周代有七声音阶：曾侯乙编钟作证<br style=\"box-sizing: border-box;\"/>河南舞阳贾湖遗址概况<br style=\"box-sizing: border-box;\"/>贾湖骨笛的鉴定<br style=\"box-sizing: border-box;\"/>贾湖骨笛的年代与分期<br style=\"box-sizing: border-box;\"/>贾湖骨笛的制作技巧<br style=\"box-sizing: border-box;\"/>贾湖骨笛的未解之谜<br style=\"box-sizing: border-box;\"/>上古时代为何偏爱五声音阶<br style=\"box-sizing: border-box;\"/>作业</p><p>正统针灸铜人与中国古代的经络学说<br style=\"box-sizing: border-box;\"/>针、灸、经络溯源<br style=\"box-sizing: border-box;\"/>扁鹊与仓公的针灸医术<br style=\"box-sizing: border-box;\"/>《内经》与针灸<br style=\"box-sizing: border-box;\"/>马王堆帛书、张家山汉简中的经络文献<br style=\"box-sizing: border-box;\"/>明代正统针灸铜人<br style=\"box-sizing: border-box;\"/>针灸对当今世界的影响<br style=\"box-sizing: border-box;\"/>作业</p><p>殷墟甲骨与中国早期的文字<br style=\"box-sizing: border-box;\"/>甲骨的发现<br style=\"box-sizing: border-box;\"/>殷墟甲骨的发掘与研究<br style=\"box-sizing: border-box;\"/>甲骨占卜与刻辞<br style=\"box-sizing: border-box;\"/>甲骨文中的六书<br style=\"box-sizing: border-box;\"/>作业</p><p><br style=\"box-sizing: border-box;\"/>磁山石磨盘与中国古代农业文明<br style=\"box-sizing: border-box;\"/>农业文明起源诸学说<br style=\"box-sizing: border-box;\"/>磁山遗址所见粟遗存<br style=\"box-sizing: border-box;\"/>磁山遗址中的石磨盘与石磨棒<br style=\"box-sizing: border-box;\"/>磁山遗址中的陶器<br style=\"box-sizing: border-box;\"/>亚洲稻系起源诸说<br style=\"box-sizing: border-box;\"/>河姆渡遗址的发现<br style=\"box-sizing: border-box;\"/>河姆渡遗址中的稻谷遗存<br style=\"box-sizing: border-box;\"/>河姆渡遗址所出土的农具<br style=\"box-sizing: border-box;\"/>太湖流域稻作农业<br style=\"box-sizing: border-box;\"/>中国是否有作为栽培稻基础的野生稻<br style=\"box-sizing: border-box;\"/>作业<br style=\"box-sizing: border-box;\"/>作业</p><p>妇好偶方彝与中国古代礼乐文化<br style=\"box-sizing: border-box;\"/>青铜器的定义<br style=\"box-sizing: border-box;\"/>青铜器的滥觞期与鼎盛期<br style=\"box-sizing: border-box;\"/>妇好偶方彝<br style=\"box-sizing: border-box;\"/>青铜器的颓败期、中兴期与衰落期<br style=\"box-sizing: border-box;\"/>何谓礼文化<br style=\"box-sizing: border-box;\"/>何谓乐文化<br style=\"box-sizing: border-box;\"/>中国古代的青铜礼器<br style=\"box-sizing: border-box;\"/>青铜食器<br style=\"box-sizing: border-box;\"/>青铜酒器<br style=\"box-sizing: border-box;\"/>青铜盥洗器<br style=\"box-sizing: border-box;\"/>青铜礼器的组合<br style=\"box-sizing: border-box;\"/>青铜乐器（上）<br style=\"box-sizing: border-box;\"/>青铜乐器（中）<br style=\"box-sizing: border-box;\"/>青铜乐器（下）<br style=\"box-sizing: border-box;\"/>作业<br style=\"box-sizing: border-box;\"/>作业</p><p>《周易》《周礼》与故宫北京城<br style=\"box-sizing: border-box;\"/>《周易》其书<br style=\"box-sizing: border-box;\"/>《周礼》其书<br style=\"box-sizing: border-box;\"/>《周礼》建国之制的实行<br style=\"box-sizing: border-box;\"/>北京城的中轴线<br style=\"box-sizing: border-box;\"/>故宫、北京城的阴阳思想<br style=\"box-sizing: border-box;\"/>故宫、北京城的五行思想<br style=\"box-sizing: border-box;\"/>重檐庑殿<br style=\"box-sizing: border-box;\"/>九种屋顶<br style=\"box-sizing: border-box;\"/>屋顶装饰<br style=\"box-sizing: border-box;\"/>故宫的空间处理<br style=\"box-sizing: border-box;\"/>太和殿及其周围<br style=\"box-sizing: border-box;\"/>作业</p><p>曾侯乙墓漆箱星宿图与二十八宿<br style=\"box-sizing: border-box;\"/>羲和四子敬受民时<br style=\"box-sizing: border-box;\"/>上古天文观测仪器<br style=\"box-sizing: border-box;\"/>中国上古的四分历<br style=\"box-sizing: border-box;\"/>北极、北斗和二十八宿<br style=\"box-sizing: border-box;\"/>恒星体系为何取“二十八”之数<br style=\"box-sizing: border-box;\"/>二十八宿体系起源于巴比伦？<br style=\"box-sizing: border-box;\"/>二十八宿体系起源于中国<br style=\"box-sizing: border-box;\"/>关于中国二十八宿形成时间的考证<br style=\"box-sizing: border-box;\"/>曾侯乙墓漆箱盖主星图解读<br style=\"box-sizing: border-box;\"/>曾侯乙墓漆箱侧立面星图解读<br style=\"box-sizing: border-box;\"/>濮阳西水坡45号墓：远古时代的北斗二宫图<br style=\"box-sizing: border-box;\"/>西水坡45号墓墓主身份之谜<br style=\"box-sizing: border-box;\"/>作业</p><p>曾侯乙墓均钟与中国古代的律吕<br style=\"box-sizing: border-box;\"/>三分损益法与隔八相生法<br style=\"box-sizing: border-box;\"/>中国古代的十二不平均律<br style=\"box-sizing: border-box;\"/>曾侯乙编钟的乐律体系<br style=\"box-sizing: border-box;\"/>钟的调音问题<br style=\"box-sizing: border-box;\"/>五弦琴乎？筑乎?<br style=\"box-sizing: border-box;\"/>均钟！湮没千年的均钟！<br style=\"box-sizing: border-box;\"/>雨台山律管：又一种战国调音器<br style=\"box-sizing: border-box;\"/>作业</p><p>越王勾践剑与吴越地区的冶铸技术<br style=\"box-sizing: border-box;\"/>中国古剑的几大谱系<br style=\"box-sizing: border-box;\"/>文献中的吴越之剑<br style=\"box-sizing: border-box;\"/>剑与先秦社会<br style=\"box-sizing: border-box;\"/>吴王夫差剑，出土知多少？<br style=\"box-sizing: border-box;\"/>楚地所出越王剑<br style=\"box-sizing: border-box;\"/>浙江省博物馆购藏越王剑<br style=\"box-sizing: border-box;\"/>吴越之剑的菱形暗格纹技术<br style=\"box-sizing: border-box;\"/>吴越之剑的薄壁同心圆剑首技术<br style=\"box-sizing: border-box;\"/>吴越之剑的双色剑制作技术<br style=\"box-sizing: border-box;\"/>青铜剑的发展与衰落<br style=\"box-sizing: border-box;\"/>作业</p><p>河姆渡蚕纹杖饰与先秦服饰文化<br style=\"box-sizing: border-box;\"/>中国蚕桑起源的传说与考古发现<br style=\"box-sizing: border-box;\"/>蚕桑起源的地域分布<br style=\"box-sizing: border-box;\"/>中国纺织业起源的考古发现<br style=\"box-sizing: border-box;\"/>粘附在铜锈上的商代丝织品<br style=\"box-sizing: border-box;\"/>成为国家行为的周代蚕桑业<br style=\"box-sizing: border-box;\"/>东周时代丝织品概观<br style=\"box-sizing: border-box;\"/>马山一号墓的丝织品<br style=\"box-sizing: border-box;\"/>先秦时代的服饰文化<br style=\"box-sizing: border-box;\"/>作业</p><p>秦陵铜车马与先秦时代造车技术<br style=\"box-sizing: border-box;\"/>先秦文献所见交通用车<br style=\"box-sizing: border-box;\"/>先秦文献所见战车<br style=\"box-sizing: border-box;\"/>田野考古所见的商周车辆<br style=\"box-sizing: border-box;\"/>《考工记》记载的造车工艺<br style=\"box-sizing: border-box;\"/>秦陵铜车马概说<br style=\"box-sizing: border-box;\"/>秦陵铜车马的学术价值<br style=\"box-sizing: border-box;\"/>秦陵铜车马的精湛工艺<br style=\"box-sizing: border-box;\"/>期中考试<br style=\"box-sizing: border-box;\"/>考试公告<br style=\"box-sizing: border-box;\"/>期中考试<br style=\"box-sizing: border-box;\"/>期中考试成绩查询</p><p>上家村寨舞蹈纹盆与甘青地区的彩陶文化<br style=\"box-sizing: border-box;\"/>妇好墓象牙杯与先秦时期的生态环境<br style=\"box-sizing: border-box;\"/>殷墟妇好墓概述<br style=\"box-sizing: border-box;\"/>妇好墓象牙杯诸细节<br style=\"box-sizing: border-box;\"/>殷墟中与象相关的文物<br style=\"box-sizing: border-box;\"/>“殷人服象”的文字与文献根据<br style=\"box-sizing: border-box;\"/>史前时代华北地区的生态环境<br style=\"box-sizing: border-box;\"/>先秦社会生活中的象牙<br style=\"box-sizing: border-box;\"/>青铜器中象的造型<br style=\"box-sizing: border-box;\"/>解读吉美象尊<br style=\"box-sizing: border-box;\"/>象逐步南移与消失的原因之一<br style=\"box-sizing: border-box;\"/>象逐步南移与消失的原因之二<br style=\"box-sizing: border-box;\"/>象逐步南移与消失的原因之三<br style=\"box-sizing: border-box;\"/>象逐步南移与消失的原因之四</p><p>四羊方尊与长江流域的商代文明<br style=\"box-sizing: border-box;\"/>注：本课程原来分为文物精品与文化中国（上）与（下）两门，现在已合并成一门课。</p><p><br/></p>', '', '铭飞科技', '/22\\20.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('21', '铭飞科技', '<p>数千年的中国历史上，曾出现了很多伟大的城市，汉长安、北魏洛阳、隋唐长安和洛阳、北宋开封、元大都，都是当时世界上最繁华的大都市。这些城市虽已星光黯淡，却留下了一座座优美壮丽的建筑杰作，令人叹为观止。中国的宫殿、宗教建筑、佛塔、陵寝和园林等建筑类型，无论建造技术还是美学追求，都达到了很高的水平。中国古代的建筑有着自成体系的一套营造方法，以木结构为主，也有不少砖石结构的佛塔和陵寝。历史上建造了大量宫殿建筑，北京故宫是现存世界上最大宫殿建筑群。自南北朝至唐，出现了大批佛教寺院与石窟寺。南北朝以来各地建造的砖石塔，也使中国砖石建筑达到很高水平。唐、辽、宋、金时期留下了一大批宗教建筑遗存，包括大型殿堂，多层楼阁，与高度达67米的高层木塔。明清时期坛壝、祠庙、陵墓与民居，有了高度发展，北京天坛，曲阜孔庙、明十三陵，北京四合院等，是这一时期重要建筑实例。北京颐和园、承德避暑山庄是古代皇家园林代表，明清私家园林则是数千年中国园林艺术的结晶。宋《营造法式》和清《工部工程做法则例》是中国官式建筑两部重要文本，对于理解中国建筑有着重要的意义。课程资料中也将包括这两部著作的电子版。</p><p>课程章节<br style=\"box-sizing: border-box;\"/>1 中国建筑概说<br style=\"box-sizing: border-box;\"/>中国建筑特征<br style=\"box-sizing: border-box;\"/>中国建筑历史分期<br style=\"box-sizing: border-box;\"/>中国建筑类型学讨论<br style=\"box-sizing: border-box;\"/>古代城市的规划思想与两种规划理念<br style=\"box-sizing: border-box;\"/>古代建筑原则<br style=\"box-sizing: border-box;\"/>古代建筑思想</p><p>2 史前至秦汉时期的中国建筑<br style=\"box-sizing: border-box;\"/>早期文明和建筑形态<br style=\"box-sizing: border-box;\"/>夏商时期建筑<br style=\"box-sizing: border-box;\"/>周代的建筑<br style=\"box-sizing: border-box;\"/>秦汉时期的中国文明与城市<br style=\"box-sizing: border-box;\"/>秦汉时期的宫室<br style=\"box-sizing: border-box;\"/>秦汉时期的住宅、墓葬和其它建筑类型</p><p>3 三国、两晋、南北朝时期的中国建筑<br style=\"box-sizing: border-box;\"/>三国、两晋、南北朝时期的城市和宫殿<br style=\"box-sizing: border-box;\"/>佛教的发展及佛教建筑的繁荣<br style=\"box-sizing: border-box;\"/>南北朝时期的佛教建筑遗迹<br style=\"box-sizing: border-box;\"/>南北朝时期的佛教石窟寺<br style=\"box-sizing: border-box;\"/>石窟寺建筑形象反映的木结构建筑发展过程<br style=\"box-sizing: border-box;\"/>秦汉至南北朝时期的园林</p><p>4 隋唐时期的城市、住宅、宫殿与园林<br style=\"box-sizing: border-box;\"/>隋唐时期的中国文明<br style=\"box-sizing: border-box;\"/>隋唐两京城<br style=\"box-sizing: border-box;\"/>隋唐两京里坊与住宅<br style=\"box-sizing: border-box;\"/>隋唐宫殿中的重要建筑<br style=\"box-sizing: border-box;\"/>隋唐园林</p><p>5 隋唐时期的宗教建筑与主要遗存，建筑技术与艺术<br style=\"box-sizing: border-box;\"/>隋唐时期的宗教建筑<br style=\"box-sizing: border-box;\"/>隋唐时期的木结构佛教殿堂建筑遗存<br style=\"box-sizing: border-box;\"/>隋唐时期的砖石塔幢遗存<br style=\"box-sizing: border-box;\"/>隋唐时期的建筑风格与设计方法<br style=\"box-sizing: border-box;\"/>隋唐时期的木结构建筑技术<br style=\"box-sizing: border-box;\"/>隋唐时期的砖石结构建筑技术<br style=\"box-sizing: border-box;\"/>建筑技术的进步和艺术的发展</p><p>6 五代、两宋、辽、金时期的城市，宫殿与苑囿<br style=\"box-sizing: border-box;\"/>五代、两宋、辽、金、西夏历史<br style=\"box-sizing: border-box;\"/>北宋汴梁城<br style=\"box-sizing: border-box;\"/>南宋临安府、南宋平江府、辽南京与金中都<br style=\"box-sizing: border-box;\"/>北宋汴梁与南宋临安宫殿<br style=\"box-sizing: border-box;\"/>金中都宫殿<br style=\"box-sizing: border-box;\"/>两宋辽金时的园林</p><p>7 五代、两宋、辽、金建筑遗存<br style=\"box-sizing: border-box;\"/>九开间大型木构殿堂遗存<br style=\"box-sizing: border-box;\"/>七开间木构殿堂遗存<br style=\"box-sizing: border-box;\"/>五开间木构殿堂遗存<br style=\"box-sizing: border-box;\"/>三开间木构殿堂遗存<br style=\"box-sizing: border-box;\"/>单层重檐殿堂遗存<br style=\"box-sizing: border-box;\"/>两宋、辽、金木构楼阁<br style=\"box-sizing: border-box;\"/>两宋、辽、金时期的佛塔建筑</p><p>8《营造法式》与小结<br style=\"box-sizing: border-box;\"/>宋《营造法式》介绍<br style=\"box-sizing: border-box;\"/>两宋、辽、金建筑总结<br style=\"box-sizing: border-box;\"/>两宋、辽、金建筑讨论</p><p>期中考试</p><p>9 元代的城市与建筑<br style=\"box-sizing: border-box;\"/>元代的城市与建筑综述<br style=\"box-sizing: border-box;\"/>元上都与元大都<br style=\"box-sizing: border-box;\"/>元大都宫殿<br style=\"box-sizing: border-box;\"/>元代宗教建筑<br style=\"box-sizing: border-box;\"/>元代科技建筑</p><p>10 明代的城市与建筑<br style=\"box-sizing: border-box;\"/>明代制度重建及其城市与建筑综述<br style=\"box-sizing: border-box;\"/>明代北京城<br style=\"box-sizing: border-box;\"/>明代地方城市<br style=\"box-sizing: border-box;\"/>明代北京紫禁城<br style=\"box-sizing: border-box;\"/>明代北京皇家坛庙<br style=\"box-sizing: border-box;\"/>明代曲阜孔庙<br style=\"box-sizing: border-box;\"/>明代南京孝陵与昌平十三陵<br style=\"box-sizing: border-box;\"/>明代佛教建筑<br style=\"box-sizing: border-box;\"/>明代道教建筑<br style=\"box-sizing: border-box;\"/>明代教育建筑</p><p>11 清代建筑概述与紫禁城<br style=\"box-sizing: border-box;\"/>清代建筑概述<br style=\"box-sizing: border-box;\"/>紫禁城<br style=\"box-sizing: border-box;\"/>陵寝建筑</p><p>12 城乡生活与建筑类型<br style=\"box-sizing: border-box;\"/>清代城市<br style=\"box-sizing: border-box;\"/>律制生活与衙署类建筑<br style=\"box-sizing: border-box;\"/>信仰生活与礼制宗教建筑等<br style=\"box-sizing: border-box;\"/>工商行业与与商业、会馆建筑<br style=\"box-sizing: border-box;\"/>娱乐生活与演出建筑</p><p>13 清代建筑技术与艺术<br style=\"box-sizing: border-box;\"/>中国与世界：艺术和科学&amp;工程做法<br style=\"box-sizing: border-box;\"/>“准”建筑师<br style=\"box-sizing: border-box;\"/>建筑匠<br style=\"box-sizing: border-box;\"/>案例赏析<br style=\"box-sizing: border-box;\"/>期中测试：动手画图</p><p>14 明清时期古典园林<br style=\"box-sizing: border-box;\"/>中国古典园林概述<br style=\"box-sizing: border-box;\"/>明清时期皇家园林<br style=\"box-sizing: border-box;\"/>江南私家园林<br style=\"box-sizing: border-box;\"/>岭南私家园林<br style=\"box-sizing: border-box;\"/>北方私家园林</p><p>15 中国传统民居建筑<br style=\"box-sizing: border-box;\"/>中国民居建筑发展简史<br style=\"box-sizing: border-box;\"/>北方合院式民居<br style=\"box-sizing: border-box;\"/>江南厅井式民居<br style=\"box-sizing: border-box;\"/>南方厅井式民居<br style=\"box-sizing: border-box;\"/>东南客家土楼<br style=\"box-sizing: border-box;\"/>黄土高原窑洞民居<br style=\"box-sizing: border-box;\"/>中国传统民居建筑设计成就</p><p>16 中国多民族的建筑<br style=\"box-sizing: border-box;\"/>回族建筑<br style=\"box-sizing: border-box;\"/>满族、朝鲜族民居建筑<br style=\"box-sizing: border-box;\"/>蒙古族建筑<br style=\"box-sizing: border-box;\"/>新疆维吾尔族建筑<br style=\"box-sizing: border-box;\"/>西藏地区的藏族建筑<br style=\"box-sizing: border-box;\"/>西南地区多民族建筑艺术<br style=\"box-sizing: border-box;\"/>民族建筑小结</p><p><br style=\"box-sizing: border-box;\"/>期末考试<br style=\"box-sizing: border-box;\"/>考试说明与题目</p><p>【FAQ】</p><p>这门课需要教科书吗？<br style=\"box-sizing: border-box;\"/>这门课没有指定的教科书，但为了更好的学习效果，建议参考刘敦桢著，中国建筑工业出版社出版的《中国古代建筑史》。另外，每节课的内容中也会包含老师指定的参考书目，上课前会上传到课程文件当中，同学们可以自行下载。</p><p>这门课曾经被分成了中国建筑史（1）和中国建筑史（2）两门，现在合并成了一门课~之前课程的传送门：中国建筑史</p><p><br/></p>', '', '铭飞科技', '/22\\21.html', '', '0', '1');
INSERT INTO `cms_article` VALUES ('22', '铭飞科技', '<p>本课程主要探讨新媒体与社会之间的互动关系，一方面关注各种社会力量对新媒体的塑造，另一方面讨论新媒体对社会各个层面的影响。课程在探讨新媒体的概念、特征、形式、内容和历史的基础上，同时关注新媒体的采纳、扩散、伦理和法制，以及新媒体在政治、经济、文化和社会结构上对社会的影响。本课程有助于学生掌握新媒体的相关概念和理论，理解新媒体在社会控制和社会变迁中的重要角色，成为新媒体时代具有批判能力和责任意识的现代公民。</p><p><br style=\"box-sizing: border-box;\"/>证书要求<br style=\"box-sizing: border-box;\"/>本课程的评价分为以下四个部分：<br style=\"box-sizing: border-box;\"/>1、课程讨论（10％）：获取满分学生需要在指定的“课堂讨论”中发帖和回帖的数量总共达50条及以上。需要参加在课件中作为教学内容的讨论，才能计算成绩。本课程每一小节都会指定讨论题目，学生可根据兴趣选择参与。<br style=\"box-sizing: border-box;\"/>2、章节测验（30％）：每次测验包括5个单选题和5个判断题，每题1分，共10分。每次测验需要在60分钟内完成，允许尝试2次，有效得分为平均分值。本课程一共有8次章节测验。<br style=\"box-sizing: border-box;\"/>3、家庭作业（30％）：要求学生在观看教学视频和阅读延伸文献的基础上，经过调研和分析，撰写书面作业。具体要求参见每次作业说明。家庭作业采取学生互评的方式评分，作业互评最少个数为6个。互评完成度的奖惩计分规则为，未参与互评的学生将获0分，未完成互评的学生将给与所得分数的50%，全部完成互评的学生将给与所得分数的100%。系统默认互评下的学生作业成绩，每个得分项去掉最低最高分取平均分，然后相加。本课程一共有3次家庭作业。<br style=\"box-sizing: border-box;\"/>4、期末考试（30％）：包括15个单选题和15个判断题，每题1分，共30分。需要在60分钟内完成，只允许尝试1次。<br style=\"box-sizing: border-box;\"/>总成绩60分及以上合格，90分及以上优秀，并可申请相应证书。</p><p>预备知识<br style=\"box-sizing: border-box;\"/>作为一门概论课程，本课程无特殊要求的先修课程。欢迎所有对新媒体感兴趣的同学选修。</p><p><br style=\"box-sizing: border-box;\"/>授课大纲<br style=\"box-sizing: border-box;\"/>第1周：新媒体导论<br style=\"box-sizing: border-box;\"/>1.1 什么是新媒体<br style=\"box-sizing: border-box;\"/>1.2 新媒体的历史<br style=\"box-sizing: border-box;\"/>第2周：新媒体与社会的关系<br style=\"box-sizing: border-box;\"/>2.1 技术决定论<br style=\"box-sizing: border-box;\"/>2.2 社会决定论<br style=\"box-sizing: border-box;\"/>2.3 技术社会互动论<br style=\"box-sizing: border-box;\"/>第3周：新媒体的采纳与扩散<br style=\"box-sizing: border-box;\"/>3.1 社会学习论<br style=\"box-sizing: border-box;\"/>3.1 创新扩散论<br style=\"box-sizing: border-box;\"/>3.1 技术接受论<br style=\"box-sizing: border-box;\"/>第4周：新媒体的伦理与法制<br style=\"box-sizing: border-box;\"/>4.1 新媒体伦理<br style=\"box-sizing: border-box;\"/>4.2 新媒体法制<br style=\"box-sizing: border-box;\"/>4.2 其他控制手段<br style=\"box-sizing: border-box;\"/>第5周：新媒体的社会结构影响<br style=\"box-sizing: border-box;\"/>5.1 网络社会<br style=\"box-sizing: border-box;\"/>5.2 阶层结构<br style=\"box-sizing: border-box;\"/>5.3 数字鸿沟<br style=\"box-sizing: border-box;\"/>第6周：新媒体的政治影响<br style=\"box-sizing: border-box;\"/>6.1 电子政务<br style=\"box-sizing: border-box;\"/>6.2 网络参与<br style=\"box-sizing: border-box;\"/>6.3 网络治理<br style=\"box-sizing: border-box;\"/>第7周：新媒体的经济影响<br style=\"box-sizing: border-box;\"/>7.1 电子商务<br style=\"box-sizing: border-box;\"/>7.2 创意产业<br style=\"box-sizing: border-box;\"/>7.3 信息经济<br style=\"box-sizing: border-box;\"/>第8周：新媒体的文化影响<br style=\"box-sizing: border-box;\"/>8.1 网络身份<br style=\"box-sizing: border-box;\"/>8.2 网络社区<br style=\"box-sizing: border-box;\"/>8.3 网络文化</p><p><br style=\"box-sizing: border-box;\"/>【FAQ】</p><p>1、本课程所有视频一般都有标清、高清、超清三种格式，大家可以根据自己的网速进行选择。<br style=\"box-sizing: border-box;\"/>2、建议大家根据教师设置的课件内容顺序进行学习，以达到最佳学习效果。<br style=\"box-sizing: border-box;\"/>3、请大家在进行测验和作业之前，务必仔细阅读评分标准，以避免不必要的失分。<br style=\"box-sizing: border-box;\"/>4、我的博士生谢点同学将担任本课程助教，为大家提供各种必要的协助。<br style=\"box-sizing: border-box;\"/>5、由于选课人数众多，对于大家的疑问，我们会通过公告的形式统一回复，请大家注意公告内容更新。</p><p><br/></p>', '', '铭飞科技', '/22\\22.html', '', '0', '1');

-- ----------------------------
-- Table structure for `cms_class_50`
-- ----------------------------
DROP TABLE IF EXISTS `cms_class_50`;
CREATE TABLE `cms_class_50` (
  `basicId` int(11) NOT NULL,
  `school` varchar(220) DEFAULT NULL,
  `platform` varchar(220) DEFAULT NULL,
  PRIMARY KEY (`basicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_class_50
-- ----------------------------
INSERT INTO `cms_class_50` VALUES ('2', '1', '2');
INSERT INTO `cms_class_50` VALUES ('3', '3', '2');
INSERT INTO `cms_class_50` VALUES ('4', '1', '4');
INSERT INTO `cms_class_50` VALUES ('5', '2', '1');
INSERT INTO `cms_class_50` VALUES ('6', '2', '1');
INSERT INTO `cms_class_50` VALUES ('7', '1', '1');

-- ----------------------------
-- Table structure for `cms_column`
-- ----------------------------
DROP TABLE IF EXISTS `cms_column`;
CREATE TABLE `cms_column` (
  `COLUMN_CATEGORYID` int(22) NOT NULL DEFAULT '0' COMMENT '关联category表（类别表ID）',
  `COLUMN_KEYWORD` varchar(300) DEFAULT NULL COMMENT '栏目简介',
  `COLUMN_DESCRIP` varchar(500) DEFAULT NULL COMMENT '栏目关键字描述',
  `COLUMN_TYPE` int(2) DEFAULT NULL COMMENT '1,代表列表栏目。2，代表缩单篇。',
  `COLUMN_URL` varchar(50) DEFAULT NULL COMMENT '如果是外部链接，则保持外部链接地址。如果为最终列表栏目，就保存文章显示列表',
  `COLUMN_LISTURL` varchar(50) DEFAULT NULL COMMENT '最终列表栏目的列表模板地址',
  `COLUMN_TENTMODELID` int(22) DEFAULT NULL COMMENT '栏目类型,直接影响栏目发布的表单样式',
  `COLUMN_WEBSITEID` int(22) DEFAULT NULL COMMENT '栏目所属站点ID',
  `COLUMN_PATH` varchar(150) DEFAULT NULL COMMENT '栏目路径',
  `COLUMN_CONTENTMODELID` int(11) DEFAULT '0' COMMENT '栏目管理的内容模型id',
  PRIMARY KEY (`COLUMN_CATEGORYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of cms_column
-- ----------------------------
INSERT INTO `cms_column` VALUES ('15', '', '', '1', 'about.htm', 'about.htm', null, '1', '/15', '0');
INSERT INTO `cms_column` VALUES ('16', '', '', '2', 'about.htm', 'about.htm', null, '1', '/16', '0');
INSERT INTO `cms_column` VALUES ('17', '', '', '2', 'about.htm', 'about.htm', null, '1', '/17', '0');
INSERT INTO `cms_column` VALUES ('18', '', '', '2', 'about.htm', 'about.htm', null, '1', '/18', '0');
INSERT INTO `cms_column` VALUES ('19', '', '', '2', 'about.htm', 'about.htm', null, '1', '/19', '0');
INSERT INTO `cms_column` VALUES ('20', '', '', '2', 'about.htm', 'about.htm', null, '1', '/20', '0');
INSERT INTO `cms_column` VALUES ('21', '', '', '2', 'about.htm', 'about.htm', null, '1', '/21', '0');
INSERT INTO `cms_column` VALUES ('22', '', '', '1', 'detail.htm', 'list.htm', null, '1', '/22', '0');
INSERT INTO `cms_column` VALUES ('23', '', '', '1', 'about.htm', 'liebiao.htm', null, '1', '/23', '0');
INSERT INTO `cms_column` VALUES ('24', '', '', '1', 'detail.htm', 'list.htm', null, '1', '/24', '0');
INSERT INTO `cms_column` VALUES ('25', '', '', '2', 'about.htm', 'about.htm', null, '1', '/25', '0');
INSERT INTO `cms_column` VALUES ('26', '', '', '1', 'detail.htm', 'list.htm', null, '1', '/26', '0');
INSERT INTO `cms_column` VALUES ('27', '', '', '1', 'detail.htm', 'list.htm', null, '1', '/27', '0');
INSERT INTO `cms_column` VALUES ('28', '', '', '1', 'detail.htm', 'list.htm', null, '1', '/28', '0');
INSERT INTO `cms_column` VALUES ('29', '', '', '1', 'detail.htm', 'list.htm', null, '1', '/29', '0');
INSERT INTO `cms_column` VALUES ('30', '', '', '1', 'detail.htm', 'list.htm', null, '1', '/30', '0');
INSERT INTO `cms_column` VALUES ('31', '', '', '1', 'detail.htm', 'list.htm', null, '1', '/31', '0');
INSERT INTO `cms_column` VALUES ('32', '', '', '1', 'detail.htm', 'list.htm', null, '1', '/32', '0');
INSERT INTO `cms_column` VALUES ('33', '', '', '1', 'detail.htm', 'list.htm', null, '1', '/33', '0');
INSERT INTO `cms_column` VALUES ('34', '', '', '1', 'detail.htm', 'list.htm', null, '1', '/34', '0');
INSERT INTO `cms_column` VALUES ('35', '', '', '1', 'detail.htm', 'list.htm', null, '1', '/35', '0');
INSERT INTO `cms_column` VALUES ('36', '', '', '1', 'detail.htm', 'list.htm', null, '1', '/36', '0');
INSERT INTO `cms_column` VALUES ('37', '', '', '1', 'detail.htm', 'list.htm', null, '1', '/37', '0');
INSERT INTO `cms_column` VALUES ('38', '', '', '1', 'detail.htm', 'list.htm', null, '1', '/38', '0');
INSERT INTO `cms_column` VALUES ('39', '', '', '1', 'detail.htm', 'list.htm', null, '1', '/39', '0');
INSERT INTO `cms_column` VALUES ('40', '', '', '1', 'detail.htm', 'list.htm', null, '1', '/40', '0');
INSERT INTO `cms_column` VALUES ('41', '', '', '1', 'detail.htm', 'list.htm', null, '1', '/41', '0');
INSERT INTO `cms_column` VALUES ('42', '', '', '1', 'detail.htm', 'list.htm', null, '1', '/42', '0');
INSERT INTO `cms_column` VALUES ('48', '', '', '1', 'detail.htm', 'lists.html', null, '1', '/48', '1');
INSERT INTO `cms_column` VALUES ('49', '', '', '1', 'detail.htm', 'speech.htm', null, '1', '/49', '0');
INSERT INTO `cms_column` VALUES ('50', '', '', '2', 'detail.htm', null, null, '1', '/50', '0');
INSERT INTO `cms_column` VALUES ('51', '', '', '2', 'detail.htm', null, null, '1', '/51', '0');

-- ----------------------------
-- Table structure for `cms_content_model`
-- ----------------------------
DROP TABLE IF EXISTS `cms_content_model`;
CREATE TABLE `cms_content_model` (
  `CM_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `CM_TIPSNAME` varchar(30) NOT NULL COMMENT '表单提示文字',
  `CM_TABLENAME` varchar(20) NOT NULL COMMENT '表单名称',
  `CM_MANAGERID` int(11) NOT NULL COMMENT '表单管理员ID',
  PRIMARY KEY (`CM_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自定义模型表';

-- ----------------------------
-- Records of cms_content_model
-- ----------------------------
INSERT INTO `cms_content_model` VALUES ('1', '课程', 'cms_class_50', '50');

-- ----------------------------
-- Table structure for `cms_content_mode_field`
-- ----------------------------
DROP TABLE IF EXISTS `cms_content_mode_field`;
CREATE TABLE `cms_content_mode_field` (
  `FIELD_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '字段自增长id',
  `FIELD_TIPSNAME` varchar(30) DEFAULT NULL COMMENT '字段提示文字',
  `FIELD_FIELDNAME` varchar(20) DEFAULT NULL COMMENT '字段名称',
  `FIELD_TYPE` int(11) DEFAULT NULL COMMENT '字段类型（如1.单行，2.多行，3.图片，等）',
  `FIELD_DEFAULT` varchar(250) DEFAULT NULL COMMENT '字段默认值',
  `FIELD_ISNULL` int(11) DEFAULT NULL COMMENT '字段是否为空 0:必填 1:可选',
  `FIELD_CMID` int(11) DEFAULT NULL COMMENT '关联内容模型表id',
  `FIELD_SORT` int(11) DEFAULT NULL COMMENT '字段排序',
  `FIELD_ISSEARCH` int(255) DEFAULT NULL COMMENT '字段是否支持后台搜索0：不支持，1：支持',
  `FIELD_LENGTH` int(11) DEFAULT '1' COMMENT '字段长度',
  PRIMARY KEY (`FIELD_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自定义内容模型关联字段表';

-- ----------------------------
-- Records of cms_content_mode_field
-- ----------------------------
INSERT INTO `cms_content_mode_field` VALUES ('1', '学校', 'school', '9', '筛选演示一,筛选演示二,筛选演示三', '1', '1', null, '1', '1');
INSERT INTO `cms_content_mode_field` VALUES ('2', '机构', 'platform', '9', '筛选演示一,筛选演示二,筛选演示三', '1', '1', null, '1', '1');

-- ----------------------------
-- Table structure for `cms_search`
-- ----------------------------
DROP TABLE IF EXISTS `cms_search`;
CREATE TABLE `cms_search` (
  `SEARCH_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `SEARCH_NAME` varchar(20) NOT NULL COMMENT '搜索名称',
  `SEARCH_TEMPLETS` varchar(50) NOT NULL COMMENT '搜索结果模版',
  `SEARCH_WEBSITEID` int(11) NOT NULL COMMENT '搜索管理的应用id',
  PRIMARY KEY (`SEARCH_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='自定义搜索表';

-- ----------------------------
-- Records of cms_search
-- ----------------------------
INSERT INTO `cms_search` VALUES ('1', '头部', 'search.htm', '1');
INSERT INTO `cms_search` VALUES ('9', '列表页面搜索', 'search-list.htm', '1');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `COMMENT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID（主键）',
  `COMMENT_COMMENTID` int(11) NOT NULL COMMENT '父评论ID',
  `COMMENT_CONTENT` text NOT NULL COMMENT '评论的内容',
  `COMMENT_PICTURE` varchar(300) DEFAULT NULL COMMENT '评论时发布的图片，可上传多张图片',
  `COMMENT_TIME` datetime NOT NULL COMMENT '评论时间',
  `COMMENT_TYPE` int(11) NOT NULL DEFAULT '2' COMMENT '评论的类型：1 匿名，2 公开，默认为公开',
  `COMMENT_PEOPLEID` int(11) DEFAULT '0' COMMENT '评论者ID，默认为非会员用户（即游客）',
  `COMMENT_POINTS` int(11) DEFAULT '0' COMMENT '评价打分（-1至5分）',
  `COMMENT_BASICID` int(11) NOT NULL COMMENT '（文章、商品...）绑定basicId（外键）',
  `COMMENT_APPID` int(11) DEFAULT NULL COMMENT '(文章、商品）绑定的应用编号',
  PRIMARY KEY (`COMMENT_ID`),
  KEY `index2` (`COMMENT_BASICID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `diy_form`
-- ----------------------------
DROP TABLE IF EXISTS `diy_form`;
CREATE TABLE `diy_form` (
  `DF_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `DF_TIPSNAME` varchar(30) NOT NULL COMMENT '自定义表单提示文字',
  `DF_TABLENAME` varchar(20) NOT NULL COMMENT '自定义表单表名',
  `DF_MANAGERID` int(11) NOT NULL COMMENT '自定义表单关联的关联员id',
  `DF_APPID` int(11) DEFAULT NULL COMMENT '自定义表单关联的应用编号',
  PRIMARY KEY (`DF_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自定义表单表';

-- ----------------------------
-- Records of diy_form
-- ----------------------------

-- ----------------------------
-- Table structure for `diy_form_field`
-- ----------------------------
DROP TABLE IF EXISTS `diy_form_field`;
CREATE TABLE `diy_form_field` (
  `DFF_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '字段自增长id',
  `DFF_TIPSNAME` varchar(30) DEFAULT NULL COMMENT '字段提示文字',
  `DFF_FIELDNAME` varchar(20) DEFAULT NULL COMMENT '字段名称',
  `DFF_TYPE` int(11) DEFAULT NULL COMMENT '字段类型（如1.单行，2.多行，3.图片，等）',
  `DFF_DEFAULT` varchar(250) DEFAULT NULL COMMENT '字段的默认值',
  `DFF_ISNULL` int(11) DEFAULT NULL COMMENT '字段是否为空',
  `DFF_SORT` int(11) DEFAULT NULL COMMENT '自定义表单的排序',
  `DFF_FORMID` int(11) DEFAULT NULL COMMENT '字段管理的表单id',
  PRIMARY KEY (`DFF_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自定义表单字段表';

-- ----------------------------
-- Records of diy_form_field
-- ----------------------------

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `MANAGER_ID` bigint(22) NOT NULL AUTO_INCREMENT COMMENT '管理员ID(主键)',
  `MANAGER_NAME` varchar(15) DEFAULT NULL COMMENT '管理员用户名',
  `MANAGER_NICKNAME` varchar(15) DEFAULT NULL COMMENT '管理员昵称',
  `MANAGER_PASSWORD` varchar(45) DEFAULT NULL COMMENT '管理员密码',
  `MANAGER_ROLEID` bigint(22) DEFAULT NULL COMMENT '角色编号',
  `MANAGER_PEOPLEID` bigint(22) DEFAULT '0' COMMENT '用户编号即商家编号',
  `MANAGER_TIME` datetime DEFAULT NULL COMMENT '管理员创建时间',
  PRIMARY KEY (`MANAGER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('50', 'msopen', 'msopen', '9d8622060de5f24937b60585c3f4d66b', '48', '0', '2015-09-18 11:54:36');

-- ----------------------------
-- Table structure for `manager_model_page`
-- ----------------------------
DROP TABLE IF EXISTS `manager_model_page`;
CREATE TABLE `manager_model_page` (
  `mmp_managerID` int(11) DEFAULT NULL COMMENT '自增长id',
  `mmp_modelID` int(11) DEFAULT NULL COMMENT '模块编号',
  `mmp_url` varchar(255) DEFAULT NULL COMMENT '默认后台显示的主界面'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台主界面管理表';

-- ----------------------------
-- Records of manager_model_page
-- ----------------------------

-- ----------------------------
-- Table structure for `model`
-- ----------------------------
DROP TABLE IF EXISTS `model`;
CREATE TABLE `model` (
  `MODEL_ID` int(22) NOT NULL AUTO_INCREMENT COMMENT '模块自增长id',
  `MODEL_TITLE` varchar(150) DEFAULT NULL COMMENT '模块标题',
  `MODEL_CODE` varchar(255) DEFAULT NULL COMMENT '模块编码',
  `MODEL_MODELID` int(22) DEFAULT NULL COMMENT '模块的父模块id',
  `MODEL_URL` varchar(255) DEFAULT NULL COMMENT '模块连接地址',
  `MODEL_DATETIME` datetime DEFAULT NULL,
  `MODEL_ICON` varchar(120) DEFAULT NULL COMMENT '模块图标',
  `MODEL_MODELMANAGERID` int(11) DEFAULT NULL COMMENT '模块关联的关联员id',
  `MODEL_SORT` int(11) DEFAULT NULL COMMENT '模块的排序',
  `MODEL_ISMENU` int(1) DEFAULT NULL COMMENT '模块是否是菜单',
  PRIMARY KEY (`MODEL_ID`),
  UNIQUE KEY `SYS_C009201` (`MODEL_ID`),
  KEY `MODEL_MODELID` (`MODEL_MODELID`),
  KEY `model_code` (`MODEL_CODE`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='模块表';

-- ----------------------------
-- Records of model
-- ----------------------------
INSERT INTO `model` VALUES ('1', '内容管理', '02000000', '0', '', '2014-08-01 16:19:50', '&#xe77a;', '0', null, null);
INSERT INTO `model` VALUES ('4', '管理员管理', '01020000', '23', '/manager/manager/queryList.do', '2014-08-03 09:15:02', '', '0', null, null);
INSERT INTO `model` VALUES ('5', '角色管理', '01010000', '23', '/manager/role/queryList.do', '2014-08-03 09:15:14', '', '0', null, null);
INSERT INTO `model` VALUES ('7', '栏目管理', '02990000', '1', '/manager/cms/column/list.do', '2014-08-03 09:16:29', '', '0', null, null);
INSERT INTO `model` VALUES ('8', '文章管理', '02980000', '1', '/manager/cms/article/index.do', '2014-08-03 09:17:10', '', '0', null, null);
INSERT INTO `model` VALUES ('22', '会员中心', '07000000', '0', '', '2014-09-08 08:11:28', '&#xe6b6;', '0', null, '1');
INSERT INTO `model` VALUES ('23', '权限管理', '01000000', '0', '', '2014-09-08 08:12:22', '&#xe950;', '0', null, null);
INSERT INTO `model` VALUES ('35', '自定义模型', '02060000', '84', '/manager/mdiy/contentModel/list.do', '2014-10-13 18:27:23', '', '0', null, null);
INSERT INTO `model` VALUES ('36', '自定义搜索', '02050000', '84', '/manager/mdiy/search/list.do', '2014-10-13 18:28:34', '', '0', null, null);
INSERT INTO `model` VALUES ('79', '生成器', '11000000', '0', '', '2014-12-18 11:36:16', '&#xe6cc;', '0', null, null);
INSERT INTO `model` VALUES ('80', '生成主页', '11010000', '79', '/manager/cms/generate/index.do', '2014-12-18 11:37:15', '', '0', null, null);
INSERT INTO `model` VALUES ('81', '生成栏目', '11020000', '79', '/manager/cms/generate/column.do', '2014-12-18 11:37:53', '', '0', null, null);
INSERT INTO `model` VALUES ('82', '生成文章', '11030000', '79', '/manager/cms/generate/article.do', '2014-12-18 11:38:38', '', '0', null, null);
INSERT INTO `model` VALUES ('84', '系统管理', '12000000', '0', '', '2014-12-18 18:30:24', '&#xe71f;', '0', null, null);
INSERT INTO `model` VALUES ('86', '应用设置', '12010000', '84', '/manager/app/-1/edit.do', '2014-12-18 18:31:59', '', '0', null, null);
INSERT INTO `model` VALUES ('88', '用户管理', '07020100', '22', '/manager/people/user/list.do', '2015-09-18 11:44:54', '', '0', null, '1');
INSERT INTO `model` VALUES ('89', '自定义页面', '12030100', '84', '/manager/mdiy/modeltemplate/list.do', '2015-09-18 17:32:04', null, '0', null, null);
INSERT INTO `model` VALUES ('90', '自定义表单', '12050000', '84', '/manager/mdiy/diyForm/form/list.do', '2015-09-18 22:06:02', null, null, null, null);
INSERT INTO `model` VALUES ('91', '模板管理', '12020000', '84', '/manager/template/queryTemplateSkin.do', null, null, null, null, null);

-- ----------------------------
-- Table structure for `model_template`
-- ----------------------------
DROP TABLE IF EXISTS `model_template`;
CREATE TABLE `model_template` (
  `mt_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `mt_modelID` int(11) DEFAULT NULL COMMENT '模块id',
  `mt_appID` int(11) DEFAULT NULL COMMENT '应用id',
  `mt_path` varchar(255) DEFAULT NULL COMMENT '自定义页面绑定模板的路径',
  `mt_title` varchar(255) DEFAULT NULL COMMENT '自定义页面标题',
  `mt_key` varchar(255) DEFAULT NULL COMMENT '自定义页面访问路径',
  PRIMARY KEY (`mt_id`),
  KEY `mt_key` (`mt_key`) USING BTREE,
  KEY `mt_appID` (`mt_appID`),
  KEY `mt_modelID` (`mt_modelID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='自定义页面表';

-- ----------------------------
-- Records of model_template
-- ----------------------------
INSERT INTO `model_template` VALUES ('1', '0', '1', 'register.htm', '注册', 'register');
INSERT INTO `model_template` VALUES ('2', '0', '1', 'login.htm', '登录', 'login');
INSERT INTO `model_template` VALUES ('3', '0', '1', 'userCenter.htm', '个人中心', 'people/userCenter');
INSERT INTO `model_template` VALUES ('4', '0', '1', 'changePassWord.htm', '修改密码', 'changePassWord');

-- ----------------------------
-- Table structure for `people`
-- ----------------------------
DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `PEOPLE_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '增长自ID',
  `PEOPLE_PHONE` varchar(30) DEFAULT NULL COMMENT '手机号码',
  `PEOPLE_NAME` varchar(30) DEFAULT NULL COMMENT '陆登账号',
  `PEOPLE_PASSWORD` varchar(50) DEFAULT NULL COMMENT '陆登密码',
  `PEOPLE_DATETIME` datetime NOT NULL COMMENT '注册时间',
  `PEOPLE_APP_ID` int(11) NOT NULL COMMENT '用户所属用户ID',
  `PEOPLE_MAIL` varchar(120) DEFAULT NULL COMMENT '用户邮箱',
  `PEOPLE_STATE` int(2) DEFAULT '0' COMMENT '用户状态',
  `PEOPLE_CODE` varchar(15) DEFAULT NULL COMMENT '随机验证码',
  `PEOPLE_CODESENDDATE` datetime DEFAULT NULL,
  `PEOPLE_PHONECHECK` int(1) DEFAULT NULL,
  `PEOPLE_MAILLCHECK` int(1) DEFAULT NULL,
  PRIMARY KEY (`PEOPLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='户用基础表';

-- ----------------------------
-- Records of people
-- ----------------------------

-- ----------------------------
-- Table structure for `people_user`
-- ----------------------------
DROP TABLE IF EXISTS `people_user`;
CREATE TABLE `people_user` (
  `PU_PEOPLE_ID` int(11) NOT NULL COMMENT '用户ID关联people表的（people_id）',
  `PU_REAL_NAME` varchar(50) DEFAULT NULL COMMENT '用户真实名称',
  `PU_ADDRESS` varchar(200) DEFAULT NULL COMMENT '用户地址',
  `PU_ICON` varchar(120) DEFAULT NULL COMMENT '用户头像图标地址',
  `PU_NICKNAME` varchar(50) DEFAULT NULL COMMENT '用户昵称',
  `PU_SEX` int(2) DEFAULT NULL COMMENT '用户性别(0.未知、1.男、2.女)',
  `PU_BIRTHDAY` date DEFAULT NULL COMMENT '用户出生年月日',
  `PU_CARD` varchar(255) DEFAULT NULL COMMENT '身份证',
  `PU_APP_ID` int(11) NOT NULL COMMENT '用户所属应用ID',
  PRIMARY KEY (`PU_PEOPLE_ID`),
  KEY `PU_PEOPLE_ID` (`PU_PEOPLE_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基础信息表';

-- ----------------------------
-- Records of people_user
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `ROLE_ID` bigint(22) NOT NULL AUTO_INCREMENT COMMENT '角色ID，自增长',
  `ROLE_NAME` varchar(30) DEFAULT NULL COMMENT '角色名',
  `ROLE_MANAGERID` bigint(22) DEFAULT '0' COMMENT '角色管理员编号',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('48', 'msopen', '50');

-- ----------------------------
-- Table structure for `role_model`
-- ----------------------------
DROP TABLE IF EXISTS `role_model`;
CREATE TABLE `role_model` (
  `RM_MODELID` int(22) DEFAULT NULL COMMENT '模块编号',
  `RM_ROLEID` int(22) DEFAULT NULL COMMENT '角色编号',
  UNIQUE KEY `index` (`RM_MODELID`,`RM_ROLEID`) USING BTREE,
  KEY `RM_MODELID` (`RM_MODELID`) USING BTREE,
  CONSTRAINT `role_model_ibfk_1` FOREIGN KEY (`RM_MODELID`) REFERENCES `model` (`MODEL_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色模块关联表';

-- ----------------------------
-- Records of role_model
-- ----------------------------
INSERT INTO `role_model` VALUES ('1', '48');
INSERT INTO `role_model` VALUES ('4', '48');
INSERT INTO `role_model` VALUES ('5', '48');
INSERT INTO `role_model` VALUES ('7', '48');
INSERT INTO `role_model` VALUES ('8', '48');
INSERT INTO `role_model` VALUES ('22', '48');
INSERT INTO `role_model` VALUES ('23', '48');
INSERT INTO `role_model` VALUES ('35', '48');
INSERT INTO `role_model` VALUES ('36', '48');
INSERT INTO `role_model` VALUES ('79', '48');
INSERT INTO `role_model` VALUES ('80', '48');
INSERT INTO `role_model` VALUES ('81', '48');
INSERT INTO `role_model` VALUES ('82', '48');
INSERT INTO `role_model` VALUES ('84', '48');
INSERT INTO `role_model` VALUES ('86', '48');
INSERT INTO `role_model` VALUES ('88', '48');
INSERT INTO `role_model` VALUES ('89', '48');
INSERT INTO `role_model` VALUES ('90', '48');
INSERT INTO `role_model` VALUES ('91', '48');

-- ----------------------------
-- Table structure for `system_main_page`
-- ----------------------------
DROP TABLE IF EXISTS `system_main_page`;
CREATE TABLE `system_main_page` (
  `smp_appID` int(11) DEFAULT NULL COMMENT '自增长ID',
  `smp_url` varchar(255) DEFAULT NULL COMMENT '默认后台显示的主界面',
  `smp_modelID` int(11) DEFAULT NULL COMMENT '模块编号',
  `smp_managerID` int(11) DEFAULT NULL COMMENT '管理员编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台主界面管理界面';

-- ----------------------------
-- Records of system_main_page
-- ----------------------------

-- ----------------------------
-- Table structure for `system_skin`
-- ----------------------------
DROP TABLE IF EXISTS `system_skin`;
CREATE TABLE `system_skin` (
  `ss_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `ss_loginpage` varchar(255) DEFAULT NULL COMMENT '登陆页面',
  `ss_backgroundimg` varchar(255) DEFAULT NULL COMMENT '背景图片',
  `ss_color` varchar(255) DEFAULT NULL COMMENT '字体颜色',
  `ss_css` varchar(255) DEFAULT NULL COMMENT '样式',
  `ss_datetime` datetime DEFAULT NULL COMMENT '生成时间',
  `ss_appID` int(11) DEFAULT NULL COMMENT '0后台发布大于０表示是应用自定义',
  `ss_categoryID` int(11) DEFAULT NULL COMMENT '主题分类',
  PRIMARY KEY (`ss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台皮肤管理表';

-- ----------------------------
-- Records of system_skin
-- ----------------------------

-- ----------------------------
-- Table structure for `system_skin_manager`
-- ----------------------------
DROP TABLE IF EXISTS `system_skin_manager`;
CREATE TABLE `system_skin_manager` (
  `ssm_managerID` int(11) NOT NULL DEFAULT '0' COMMENT '系统管理员编号',
  `ssm_system_skin_ID` int(11) DEFAULT NULL COMMENT '系统皮肤管理员编号',
  PRIMARY KEY (`ssm_managerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统皮肤与管理员关联表';

-- ----------------------------
-- Records of system_skin_manager
-- ----------------------------

-- ----------------------------
-- View structure for `v_article`
-- ----------------------------
DROP VIEW IF EXISTS `v_article`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_article` AS select `cms_article`.`ARTICLE_BASICID` AS `ARTICLE_BASICID`,`basic`.`BASIC_ID` AS `BASIC_ID`,`basic`.`BASIC_CATEGORYID` AS `BASIC_CATEGORYID`,`basic`.`BASIC_TITLE` AS `BASIC_TITLE`,`basic`.`BASIC_DESCRIPTION` AS `BASIC_DESCRIPTION`,`basic`.`BASIC_THUMBNAILS` AS `BASIC_THUMBNAILS`,`basic`.`BASIC_HIT` AS `BASIC_HIT`,`basic`.`BASIC_DATETIME` AS `BASIC_DATETIME`,`basic`.`BASIC_UPDATETIME` AS `BASIC_UPDATETIME`,`basic`.`BASIC_PEOPLEID` AS `BASIC_PEOPLEID`,`cms_article`.`ARTICLE_AUTHOR` AS `ARTICLE_AUTHOR`,`cms_article`.`ARTICLE_CONTENT` AS `ARTICLE_CONTENT`,`cms_article`.`ARTICLE_TYPE` AS `ARTICLE_TYPE`,`cms_article`.`ARTICLE_SOURCE` AS `ARTICLE_SOURCE`,`cms_article`.`ARTICLE_URL` AS `ARTICLE_URL`,`cms_article`.`ARTICLE_KEYWORD` AS `ARTICLE_KEYWORD`,`cms_article`.`ARTICLE_FREEORDER` AS `ARTICLE_FREEORDER`,`cms_article`.`ARTICLE_WEBID` AS `ARTICLE_WEBID`,`cms_column`.`COLUMN_KEYWORD` AS `COLUMN_KEYWORD`,`cms_column`.`COLUMN_DESCRIP` AS `COLUMN_DESCRIP`,`cms_column`.`COLUMN_TYPE` AS `COLUMN_TYPE`,`cms_column`.`COLUMN_URL` AS `COLUMN_URL`,`cms_column`.`COLUMN_LISTURL` AS `COLUMN_LISTURL`,`cms_column`.`COLUMN_TENTMODELID` AS `COLUMN_TENTMODELID`,`cms_column`.`COLUMN_WEBSITEID` AS `COLUMN_WEBSITEID`,`cms_column`.`COLUMN_PATH` AS `column_path`,`cms_column`.`COLUMN_CONTENTMODELID` AS `COLUMN_CONTENTMODELID`,`category`.`CATEGORY_TITLE` AS `CATEGORY_TITLE`,`category`.`CATEGORY_APPID` AS `CATEGORY_APPID`,`cms_column`.`COLUMN_CATEGORYID` AS `COLUMN_CATEGORYID`,`category`.`CATEGORY_ID` AS `CATEGORY_ID`,`basic`.`BASIC_SORT` AS `BASIC_SORT` from (((`basic` join `cms_article` on((`basic`.`BASIC_ID` = `cms_article`.`ARTICLE_BASICID`))) join `cms_column` on((`basic`.`BASIC_CATEGORYID` = `cms_column`.`COLUMN_CATEGORYID`))) join `category` on((`cms_column`.`COLUMN_CATEGORYID` = `category`.`CATEGORY_ID`))) ;

-- ----------------------------
-- View structure for `v_people_user`
-- ----------------------------
DROP VIEW IF EXISTS `v_people_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_people_user` AS select `people`.`PEOPLE_ID` AS `PEOPLE_ID`,`people`.`PEOPLE_PHONE` AS `PEOPLE_PHONE`,`people`.`PEOPLE_NAME` AS `PEOPLE_NAME`,`people`.`PEOPLE_PASSWORD` AS `PEOPLE_PASSWORD`,`people`.`PEOPLE_DATETIME` AS `PEOPLE_DATETIME`,`people`.`PEOPLE_APP_ID` AS `PEOPLE_APP_ID`,`people`.`PEOPLE_MAIL` AS `PEOPLE_MAIL`,`people`.`PEOPLE_STATE` AS `PEOPLE_STATE`,`people`.`PEOPLE_CODE` AS `PEOPLE_CODE`,`people`.`PEOPLE_CODESENDDATE` AS `PEOPLE_CODESENDDATE`,`people`.`PEOPLE_PHONECHECK` AS `PEOPLE_PHONECHECK`,`people`.`PEOPLE_MAILLCHECK` AS `PEOPLE_MAILLCHECK`,`people_user`.`PU_PEOPLE_ID` AS `PU_PEOPLE_ID`,`people_user`.`PU_REAL_NAME` AS `PU_REAL_NAME`,`people_user`.`PU_ADDRESS` AS `PU_ADDRESS`,`people_user`.`PU_ICON` AS `PU_ICON`,`people_user`.`PU_NICKNAME` AS `PU_NICKNAME`,`people_user`.`PU_SEX` AS `PU_SEX`,`people_user`.`PU_BIRTHDAY` AS `PU_BIRTHDAY`,`people_user`.`PU_CARD` AS `PU_CARD`,`people_user`.`PU_APP_ID` AS `PU_APP_ID` from (`people` left join `people_user` on((`people`.`PEOPLE_ID` = `people_user`.`PU_PEOPLE_ID`))) ;

-- ----------------------------
-- Procedure structure for `p_getAllChildren`
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_getAllChildren`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_getAllChildren`(`pId` int,`appId`int,`modelId` int)
BEGIN
	
   declare lev int;
   set lev=1;
   drop TEMPORARY table if exists tmp_category;    
   drop TEMPORARY table if exists tmp_category_child;    
   CREATE  TEMPORARY TABLE  tmp_category(category_id int(40),category_title varchar(50),category_categoryid varchar(40) ,lev INT) engine=memory;    
   CREATE  TEMPORARY TABLE  tmp_category_child(category_id int(40),category_title varchar(50),category_categoryid varchar(40) ,lev INT) engine=memory;    
   INSERT tmp_category SELECT category_id,category_title,category_categoryid,1 FROM `category` WHERE category_categoryid=pid and category_appid=appId and category_modelId=modelId;    
   INSERT tmp_category_child SELECT category_id,category_title,category_categoryid,1 FROM `category` WHERE category_categoryid=pid and category_appid=appId and category_modelId=modelId;   
  while ROW_COUNT()>0 
    do     set lev=lev+1; 
     INSERT tmp_category SELECT c.category_id,c.category_title,c.category_categoryid,lev  from category c  join tmp_category_child a on c.category_categoryid = a.category_id AND a.lev=lev-1 and c.category_appid=appId and c.category_modelId=modelId;
     INSERT tmp_category_child SELECT c.category_id,c.category_title,c.category_categoryid,lev  from category c  join tmp_category a on c.category_categoryid = a.category_id AND a.lev=lev-1 and c.category_appid=appId and c.category_modelId=modelId;
  end while ;    
  INSERT tmp_category SELECT c.category_id,c.category_title,c.category_categoryid,0 FROM category  c WHERE c.category_id=pid and c.category_appid=appId and c.category_modelId=modelId;   
  SELECT * FROM tmp_category;
END
;;
DELIMITER ;
