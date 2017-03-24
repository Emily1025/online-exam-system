/*
SQLyog Enterprise v4.06 RC1
Host - 5.0.27-community-nt : Database - db_examsystem
*********************************************************************
Server version : 5.0.27-community-nt
*/


create database if not exists `db_examsystem`;

USE `db_examsystem`;

/*Table structure for table `tb_student` */

drop table if exists `tb_student`;

CREATE TABLE `tb_student` (
  `studentID` varchar(20) NOT NULL default '',
  `password` varchar(20) default NULL,
  `studentName` varchar(20) default NULL,
  `result` int(11) default NULL,
  `sclass` varchar(20) default NULL,
  PRIMARY KEY  (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 COMMENT='—ß…˙–≈œ¢±Ì';

/*Data for the table `tb_student` */

insert into `tb_student` values ('1','3','1',15,'2'),('20110702052','1','1',1,'1');

/*Table structure for table `tb_subject` */

drop table if exists `tb_subject`;

CREATE TABLE `tb_subject` (
  `subjectID` int(2) NOT NULL auto_increment,
  `subjectTitle` char(100) default NULL,
  `subjectOptionA` char(100) default NULL,
  `subjectOptionB` char(100) default NULL,
  `subjectOptionC` char(100) default NULL,
  `subjectOptionD` char(100) default NULL,
  `subjectAnswer` char(100) default NULL,
  `subjectParse` char(200) default NULL,
  PRIMARY KEY  (`subjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tb_subject` */

insert into `tb_subject` values (1,'Fiber-optic cables can carry hundreds of telephone conversations _____','simultaneously','spontaneously','homogeneously','contemporarily','A','A) simultaneously ???'),(2,'In the past ten years skyscrapers have developed _____ in Chicago and New York City','homogenously','simultaneously','spontaneously','harmoniously','B','B)simultaneously ????A) homogeneously ??????????C)spontaneously ?????????D) harmoniously ???????'),(3,'There is much I enjoy about the coming seasons, but my favorite time is the _____ from fall to winte','transmission','transformation','transition','transfer','C','C) transition ????????????'),(4,'No one can function properly if they are _____ of adequate sleep','deprived','ripped','stripped','contrived','A','A)deprive ??????????'),(5,'The prisoner was _____ of his civil liberty for three years','discharged','derived','deprived','dispatched','C','C)deprived??????,deprive of??????;'),(6,'.The accident _____ him of his sight and the use of his legs','excluded','disabled','deprived','gripped','C','C) [??] ????????????????ì?Ö??î?????????????deprive sb. of sth. ??????????????'),(7,'How much of your countryís electrical supply is _____ from water power','deduced','detached','derived','declined','C','C) derived??, ??, ??, ??'),(8,'Failure in a required subject may result in the _____ of a diploma','refusal','betrayal','denial','burial','C','C) denial ??????????'),(9,'Professor Hawking is _____ as one of the worldí greatest living physicists','dignified','clarified','acknowledged','illustrated','C','C) clarified??, ??; clarify one\'s position???????'),(10,'The _____ on this apartment expires in a yearís time','treaty','lease','engagement','subsidy','B','B) lease??????long-term lease????;'),(11,'The original elections were declared _____ by the former military ruler','void','vulgar','surplus','extravagant','C','C) surplus???????????'),(16,'2','22','222','22222','222','A','');

/*Table structure for table `tb_user` */

drop table if exists `tb_user`;

CREATE TABLE `tb_user` (
  `userID` char(10) NOT NULL,
  `password` char(10) default NULL,
  PRIMARY KEY  (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `tb_user` */

insert into `tb_user` values ('t','1');
