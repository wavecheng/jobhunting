-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-04-23 17:19:39
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jobs`
--

-- --------------------------------------------------------

--
-- 表的结构 `exam_plan`
--

CREATE TABLE IF NOT EXISTS `exam_plan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attendee_count` int(11) DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `exam_time` datetime DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `supervisor` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `worker_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2lnv8hvj2r63avkdyadcf9jye` (`worker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `job`
--

CREATE TABLE IF NOT EXISTS `job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8_bin,
  `from_date` date DEFAULT NULL,
  `hire_count` int(11) DEFAULT NULL,
  `is_campus` bit(1) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `job_type` varchar(255) COLLATE utf8_bin NOT NULL,
  `title` varchar(300) COLLATE utf8_bin NOT NULL,
  `to_date` date DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `work_location` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `worker_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6uo6443osm2hu62va5gbwca50` (`worker_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `job`
--

INSERT INTO `job` (`id`, `description`, `from_date`, `hire_count`, `is_campus`, `status`, `job_type`, `title`, `to_date`, `update_time`, `work_location`, `worker_id`) VALUES
(1, '职位描述：\r\n岗位职责:\r\n1、负责集团办公打印类设备、门店收银打印类设备的架构规划、设计与持续优化；\r\n2、负责集团办公电脑的持续优化、改进；\r\n3、负责集团虚拟桌面的设计、改进和规划；\r\n4、负责整体办公桌面的整理，规划、设计等；\r\n5、负责门店信息架构的改造。\r\n\r\n任职资格:\r\n1、精通windows桌面和windows服务器操作系统；熟悉微软的AD域相关知识，了解SQL server；熟悉微软的SCCM或类似产品；\r\n2、具备基础网络和IT基础知识；\r\n3、精通Citrix、Vmware、vworkspace或华为、中兴虚拟桌面，曾经实施过大型的虚拟桌面项目；\r\n4、熟悉主流品牌打印类设备，如施乐、立思辰、震旦、惠普、佳能等，了解大型办公打印系统的基础知识，曾参与过大型企业打印机系统架构设计的优先；\r\n5、具有良好的敬业精神和团队协作能力，做事主动、认真，负责。\r\n职能类别：系统架构设计师', '2016-04-01', 11, b'1', 'Ongoing', 'FullTime', '高级架构师(Nanjing) ', '2016-12-20', '2016-04-18 00:00:00', 'Nanjing', 1),
(2, '                  <em>Position Summary：</em>\r\n                  <p> The Software Development Engineer is an entry level engineer who develops, tests, troubleshoots and maintains software components for existing or new products. The role works within a team of software engineers on problems of limited scope and complexity which are structured to develop knowledge and experience; receives general guidance and direction on work that may span multiple disciplines of software engineering; and follows established practices and procedures to achieve overall program performance, schedule and quality standards.</p>\r\n                  \r\n                   <em>Qualifications and Requirements:</em>\r\n                   <p><strong>·</strong>&nbsp;&nbsp;Bachelor''s degree or equivalent in computer science, electrical engineering, or related field; equivalent &nbsp;&nbsp;&nbsp;&nbsp;experience may be substituted for formal education</br>\r\n<strong>·</strong>&nbsp;&nbsp;Demonstrated understanding of Computer Science fundamentals (e.g., algorithms, data structures); </br>\r\n<strong>·</strong>&nbsp;&nbsp;Proficiency in a programming language(s) (e.g., C, C++, C#, Java or Python) </br>\r\n<strong>·</strong>&nbsp;&nbsp;Good knowledge of Windows and/or Linux OS</br>\r\n<strong>·</strong>&nbsp;&nbsp;Good understanding of networking, web based software/protocols, and database concepts</br>\r\n<strong>·</strong>&nbsp;&nbsp;Demonstrated capability for solving problems across multiple sub‐disciplines of software engineering;</br>\r\n<strong>·</strong>&nbsp;&nbsp;Proven capability for finding solutions to algorithm and programming problems, developing solutions, and &nbsp;&nbsp;&nbsp;&nbsp;finding defects in software.</p>\r\n', '2016-04-01', 11, b'1', 'Ongoing', 'FullTime', 'Software Development Engineer', '2016-12-20', '2016-04-18 00:00:00', 'Nanjing', 1);

-- --------------------------------------------------------

--
-- 表的结构 `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  `job_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `log_type` varchar(255) COLLATE utf8_bin NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `worker_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `worker_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `university`
--

CREATE TABLE IF NOT EXISTS `university` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `popular` int(11) DEFAULT NULL,
  `province` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ru212k5vib3yvu360fuy3h1g5` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `university`
--

INSERT INTO `university` (`id`, `name`, `popular`, `province`) VALUES
(1, 'Others', 1, 'Other'),
(2, '南京大学', 1, '江苏');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `awards` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `birth_city` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `birth_province` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `city_to_exam` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `current_city` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `current_province` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `degree` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `depart` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `eng_highest_score` int(11) DEFAULT NULL,
  `eng_highest_level` int(11) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `gmat` int(11) DEFAULT NULL,
  `graduate_date` date DEFAULT NULL,
  `gre` int(11) DEFAULT NULL,
  `id_no` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `id_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `major` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `married` bit(1) NOT NULL,
  `mobile` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name_eng` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `oral` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `register_time` datetime DEFAULT NULL,
  `salary_expect` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `second_lang` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `second_lang_level` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `toefl` int(11) DEFAULT NULL,
  `toeic` int(11) DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `university_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `university_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`),
  KEY `FK_rebo2xbcgxy60wi2e79gd4o86` (`university_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `awards`, `birth_city`, `birth_province`, `city_to_exam`, `current_city`, `current_province`, `degree`, `depart`, `email`, `enabled`, `eng_highest_score`, `eng_highest_level`, `gender`, `gmat`, `graduate_date`, `gre`, `id_no`, `id_type`, `major`, `married`, `mobile`, `name`, `name_eng`, `oral`, `password`, `register_time`, `salary_expect`, `second_lang`, `second_lang_level`, `toefl`, `toeic`, `user_type`, `university_name`, `university_id`) VALUES
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a@b.com', b'1', 0, 0, 0, 0, NULL, 0, NULL, NULL, NULL, b'0', NULL, '测试', 'test', NULL, '123456', '2016-04-21 00:00:00', NULL, NULL, NULL, 0, 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- 表的结构 `user_apply`
--

CREATE TABLE IF NOT EXISTS `user_apply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `apply_time` datetime DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `apply_status` varchar(255) COLLATE utf8_bin NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `worker_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_pa4o15ntcwg8ix9ono9dcp72q` (`apply_status`),
  KEY `FK_49edapt37r2y66l3gt2r357sw` (`job_id`),
  KEY `FK_p4vt0wji51s6fx73ywhycm5cl` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_edu`
--

CREATE TABLE IF NOT EXISTS `user_edu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `courses` longtext COLLATE utf8_bin,
  `degree` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `depart` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `graduate_date` date DEFAULT NULL,
  `major` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `remark` longtext COLLATE utf8_bin,
  `to_date` date DEFAULT NULL,
  `total_rank` int(11) DEFAULT NULL,
  `university` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5kr6a8l3jqajkiv7d8y12eap0` (`degree`),
  KEY `FK_7u0y8ekl4amspusps5r2uixxy` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_exam`
--

CREATE TABLE IF NOT EXISTS `user_exam` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `result` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `seat_no` int(11) DEFAULT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_dxltl53ajg60d4crhp0ivoy6w` (`job_id`),
  KEY `FK_2q8bnveguryai6dkpq9vaqk89` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_interview`
--

CREATE TABLE IF NOT EXISTS `user_interview` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `interview_time` datetime DEFAULT NULL,
  `interviewers` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `schedule_time` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin NOT NULL,
  `vote_down` int(11) DEFAULT NULL,
  `vote_up` int(11) DEFAULT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `worker_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_nreppkxtparf88m43to3c9h9v` (`job_id`),
  KEY `FK_4h4atfnxxcql9eer3y1y6iwbe` (`user_id`),
  KEY `FK_ode5nppkggglavccb0l6y6r6q` (`worker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_project`
--

CREATE TABLE IF NOT EXISTS `user_project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `duty` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_alj835ria5tqth22nq08iv97a` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_skill`
--

CREATE TABLE IF NOT EXISTS `user_skill` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `major` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `months` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_itqeattqedqw2ghe6qveg0057` (`name`),
  KEY `FK_jp5cmpavwc696pfedvrb6cvl5` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_work`
--

CREATE TABLE IF NOT EXISTS `user_work` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `company_size` int(11) DEFAULT NULL,
  `company_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` longtext COLLATE utf8_bin,
  `from_date` date DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `time_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_dplxgg83xkg0frt37hp93av1t` (`company`),
  KEY `FK_5g7aoj82lcg16fa2jbggdrtmi` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `workers`
--

CREATE TABLE IF NOT EXISTS `workers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `register_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_c1jotu7v5buv6dh7m1vm146mh` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `workers`
--

INSERT INTO `workers` (`id`, `email`, `enabled`, `name`, `password`, `register_time`) VALUES
(1, 'bo.chen@citrix.com', b'1', 'Bo Chen', '123456', '2016-04-18 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `worker_role`
--

CREATE TABLE IF NOT EXISTS `worker_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `worker_role`
--

INSERT INTO `worker_role` (`id`, `name`) VALUES
(1, 'ADMIN'),
(2, 'WORKER'),
(3, 'MANAGER');

-- --------------------------------------------------------

--
-- 表的结构 `worker_x_role`
--

CREATE TABLE IF NOT EXISTS `worker_x_role` (
  `workers_id` bigint(20) NOT NULL,
  `roles_id` bigint(20) NOT NULL,
  KEY `FK_cgqhdkktf08bv01wqd54nd6v1` (`roles_id`),
  KEY `FK_ckdo9ii3vlxk47uy8mdc8cqsy` (`workers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `worker_x_role`
--

INSERT INTO `worker_x_role` (`workers_id`, `roles_id`) VALUES
(1, 1),
(1, 2);

--
-- 限制导出的表
--

--
-- 限制表 `exam_plan`
--
ALTER TABLE `exam_plan`
  ADD CONSTRAINT `FK_2lnv8hvj2r63avkdyadcf9jye` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`);

--
-- 限制表 `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FK_6uo6443osm2hu62va5gbwca50` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`);

--
-- 限制表 `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_rebo2xbcgxy60wi2e79gd4o86` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`);

--
-- 限制表 `user_apply`
--
ALTER TABLE `user_apply`
  ADD CONSTRAINT `FK_p4vt0wji51s6fx73ywhycm5cl` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_49edapt37r2y66l3gt2r357sw` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`);

--
-- 限制表 `user_edu`
--
ALTER TABLE `user_edu`
  ADD CONSTRAINT `FK_7u0y8ekl4amspusps5r2uixxy` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- 限制表 `user_exam`
--
ALTER TABLE `user_exam`
  ADD CONSTRAINT `FK_2q8bnveguryai6dkpq9vaqk89` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_dxltl53ajg60d4crhp0ivoy6w` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`);

--
-- 限制表 `user_interview`
--
ALTER TABLE `user_interview`
  ADD CONSTRAINT `FK_ode5nppkggglavccb0l6y6r6q` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`),
  ADD CONSTRAINT `FK_4h4atfnxxcql9eer3y1y6iwbe` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_nreppkxtparf88m43to3c9h9v` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`);

--
-- 限制表 `user_project`
--
ALTER TABLE `user_project`
  ADD CONSTRAINT `FK_alj835ria5tqth22nq08iv97a` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- 限制表 `user_skill`
--
ALTER TABLE `user_skill`
  ADD CONSTRAINT `FK_jp5cmpavwc696pfedvrb6cvl5` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- 限制表 `user_work`
--
ALTER TABLE `user_work`
  ADD CONSTRAINT `FK_5g7aoj82lcg16fa2jbggdrtmi` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- 限制表 `worker_x_role`
--
ALTER TABLE `worker_x_role`
  ADD CONSTRAINT `FK_ckdo9ii3vlxk47uy8mdc8cqsy` FOREIGN KEY (`workers_id`) REFERENCES `workers` (`id`),
  ADD CONSTRAINT `FK_cgqhdkktf08bv01wqd54nd6v1` FOREIGN KEY (`roles_id`) REFERENCES `worker_role` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
