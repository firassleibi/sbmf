-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2017 at 01:01 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sbmf`
--

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `id` int(11) NOT NULL,
  `projectName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `programName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scopeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `projectPercent` decimal(10,0) NOT NULL,
  `programPercent` decimal(10,0) NOT NULL,
  `scopePercent` decimal(10,0) NOT NULL,
  `projectBudget` decimal(10,0) NOT NULL,
  `programBudget` decimal(10,0) NOT NULL,
  `scopeBudget` decimal(11,0) NOT NULL,
  `total` decimal(11,0) NOT NULL,
  `m1` decimal(10,0) NOT NULL,
  `m2` decimal(10,0) NOT NULL,
  `m3` decimal(10,0) NOT NULL,
  `m4` decimal(10,0) NOT NULL,
  `m5` decimal(10,0) NOT NULL,
  `m6` decimal(10,0) NOT NULL,
  `m7` decimal(10,0) NOT NULL,
  `m8` decimal(10,0) NOT NULL,
  `m9` decimal(10,0) NOT NULL,
  `m10` decimal(10,0) NOT NULL,
  `m11` decimal(10,0) NOT NULL,
  `m12` decimal(10,0) NOT NULL,
  `Q1` decimal(10,0) NOT NULL,
  `Q2` decimal(10,0) NOT NULL,
  `Q3` decimal(10,0) NOT NULL,
  `Q4` decimal(10,0) NOT NULL,
  `projectSpend` decimal(10,0) NOT NULL,
  `projectRemain` decimal(10,0) NOT NULL,
  `scopeSpend` decimal(10,0) NOT NULL,
  `programSpend` decimal(10,0) NOT NULL,
  `Sch_M1` decimal(10,0) NOT NULL,
  `Sch_M2` decimal(10,0) NOT NULL,
  `Sch_M3` decimal(10,0) NOT NULL,
  `Sch_M4` decimal(10,0) NOT NULL,
  `Sch_M5` decimal(10,0) NOT NULL,
  `Sch_M6` decimal(10,0) NOT NULL,
  `Sch_M7` decimal(10,0) NOT NULL,
  `Sch_M8` decimal(10,0) NOT NULL,
  `Sch_M9` decimal(10,0) NOT NULL,
  `Sch_M10` decimal(10,0) NOT NULL,
  `Sch_M11` decimal(10,0) NOT NULL,
  `Sch_M12` decimal(10,0) NOT NULL,
  `Sch_Q1` decimal(10,0) NOT NULL,
  `Sch_Q2` decimal(10,0) NOT NULL,
  `Sch_Q3` decimal(10,0) NOT NULL,
  `Sch_Q4` decimal(10,0) NOT NULL,
  `Sch_Total` decimal(10,0) NOT NULL,
  `specialist` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`id`, `projectName`, `programName`, `scopeName`, `projectPercent`, `programPercent`, `scopePercent`, `projectBudget`, `programBudget`, `scopeBudget`, `total`, `m1`, `m2`, `m3`, `m4`, `m5`, `m6`, `m7`, `m8`, `m9`, `m10`, `m11`, `m12`, `Q1`, `Q2`, `Q3`, `Q4`, `projectSpend`, `projectRemain`, `scopeSpend`, `programSpend`, `Sch_M1`, `Sch_M2`, `Sch_M3`, `Sch_M4`, `Sch_M5`, `Sch_M6`, `Sch_M7`, `Sch_M8`, `Sch_M9`, `Sch_M10`, `Sch_M11`, `Sch_M12`, `Sch_Q1`, `Sch_Q2`, `Sch_Q3`, `Sch_Q4`, `Sch_Total`, `specialist`) VALUES
(1, 'مشروع1', 'برنامح1', 'مجال1', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', 'اخصائي1'),
(2, 'مشروع2', 'برنامج2', 'مجال2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'اخصائي2'),
(3, 'مشروع3', 'برنامج3', 'مجال3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'اخصائي3'),
(4, 'مشروع4', 'برنامج4', 'مجال6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'اخصائي4'),
(5, 'مشروع5', 'برنامج5', 'مجال4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'اخصائي1'),
(6, '6مشروع', 'برنامج6', 'مجال5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'اخصائي2'),
(7, 'مشرو7', 'برنامج7', 'مجال7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'اخصائي3'),
(8, 'مشروع8', 'برنامج8', 'مجال8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'تخصائي4'),
(9, 'مشروع9', 'برنامج9', 'مجال9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'اخصائي5'),
(10, 'مشروع10', 'برنامج10', 'مجال1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'اخصائي6'),
(11, 'مشروع11', 'برنامج11', 'مجال10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'اخصائي7'),
(12, 'مشروع1', 'برنامج11', 'مجال2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'اخصائي1'),
(13, 'مشروع1', 'برنامج2', 'مجال5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'اخصائي2'),
(14, 'مشروع2', 'برامج1', 'مجال2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'اخصائي3'),
(15, 'مشروع5', 'برنامج5', 'مجال9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'اخصائي4'),
(16, 'مشروع8', 'برنامج3', 'مجال7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'اخصائي8'),
(17, 'مشروع9', 'برنامج9', 'مجال6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'اخصائي2'),
(18, 'مشروع10.', 'برنامج8', 'مجال11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'اخصائي3'),
(19, 'مشرو12', 'برنامج8', 'مجال6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'اخصائي4');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `Code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PaymentNo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PayeeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ProjectName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ProgramName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ScopeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Area` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `City` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Amount` decimal(10,0) NOT NULL,
  `Currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ToOrder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PayTo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PaymentMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Date` datetime NOT NULL,
  `Approver1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Approver2` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Approver3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Approver4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Approver5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ApprovementNote1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ApprovementNote2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ApprovementNote3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ApprovementNote4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Aim` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `AmountText` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BankDetails` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IsNotifySendToPayee` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `AmountDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paymentOrder` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `Code`, `PaymentNo`, `PayeeName`, `ProjectName`, `ProgramName`, `ScopeName`, `Area`, `City`, `Amount`, `Currency`, `ToOrder`, `PayTo`, `PaymentMethod`, `Date`, `Approver1`, `Approver2`, `Approver3`, `Approver4`, `Approver5`, `ApprovementNote1`, `ApprovementNote2`, `ApprovementNote3`, `ApprovementNote4`, `Aim`, `AmountText`, `BankDetails`, `IsNotifySendToPayee`, `AmountDescription`, `paymentOrder`) VALUES
(2, '025678', '638', 'a المستفيد', 'x المشروع', 'wt البرنامج', 'syuf النطاق', 'm المنطقة', 'ybes المدينة', '47403', '$', 'wg لامر', 'yzl لصالح', 'po طريقة', '2017-01-07 00:00:00', 'zne الموافق', 'fd الموافق', 'ifm الموافق', 'dh الموافق', 'qdi الموافق', 'ic مذكرة الموافقة', 'sn مذكرة الموافقة', 'z مذكرة الموافقة', 'vb مذكرة الموافقة', 'gibzapwuht', 'cykfالكمية', 'opتفاصيل', 'azzwارسال الى', 'upynxتفاصيل ', b'0'),
(3, '4172083', '8140', 'dciz المستفيد', 'mta المشروع', 'lf البرنامج', 'zkf النطاق', 'y المنطقة', 's المدينة', '263266', '$', 'fb لامر', 'q لصالح', 'yop طريقة', '2017-04-01 00:00:00', 'ejr الموافق', 'oo الموافق', 'cm الموافق', 'vc الموافق', 'kqg الموافق', 'mxs مذكرة الموافقة', 'w مذكرة الموافقة', 'f مذكرة الموافقة', 'xqy مذكرة الموافقة', 'ruseptqkqd', 'wganالكمية', 'lajتفاصيل', 'reiارسال الى', 'wdbuoتفاصيل ', b'0'),
(4, '755286', '574373', 'svv المستفيد', 'umu المشروع', 'b البرنامج', 'nan النطاق', 's المنطقة', 'rb المدينة', '281', '$', 'ek لامر', 'ztg لصالح', 'yx طريقة', '2017-01-19 00:00:00', 'v الموافق', 'b الموافق', 'we الموافق', 'oek الموافق', 'l الموافق', 'cdh مذكرة الموافقة', 'bo مذكرة الموافقة', 'gl مذكرة الموافقة', 'd مذكرة الموافقة', 'agpvzswi', 'xkالكمية', 'lqeتفاصيل', 'wgارسال الى', 'jpqxتفاصيل ', b'0'),
(5, '7991748', '416100', 'qss المستفيد', 'v المشروع', 'fxm البرنامج', 'gi النطاق', 'vvse المنطقة', 'o المدينة', '678639', '$', 'jwo لامر', 'lvk لصالح', 's طريقة', '2017-03-29 00:00:00', 'eo الموافق', 'c الموافق', 'mt الموافق', 'mds الموافق', 'rhh الموافق', 'e مذكرة الموافقة', 'g مذكرة الموافقة', 'ok مذكرة الموافقة', 'uzi مذكرة الموافقة', 'daprasl', 'jspbsالكمية', 'fiتفاصيل', 'ldyrwارسال الى', 'ssyتفاصيل ', b'0'),
(6, '0261952574', '131', 'vzx المستفيد', 'qnus المشروع', 'ji البرنامج', 'giji النطاق', 'tmxv المنطقة', 'og المدينة', '66227', '$', 'vc لامر', 'br لصالح', 'e طريقة', '2017-02-08 00:00:00', 'jz الموافق', 'st الموافق', 'wrd الموافق', 'noj الموافق', 'b الموافق', 'v مذكرة الموافقة', 'oi مذكرة الموافقة', 'lo مذكرة الموافقة', 'h مذكرة الموافقة', 'ftkzbwez', 'qipالكمية', 'wgiتفاصيل', 'sucارسال الى', 'xiتفاصيل ', b'0'),
(7, '93357', '1384', 'hi المستفيد', 'x المشروع', 'qus البرنامج', 'uqr النطاق', 'f المنطقة', 'yhwi المدينة', '144', '$', 'h لامر', 'v لصالح', 'aia طريقة', '2017-02-05 00:00:00', 'wo الموافق', 'd الموافق', 'xn الموافق', 'qvl الموافق', 'ui الموافق', 'hk مذكرة الموافقة', 'tbh مذكرة الموافقة', 'up مذكرة الموافقة', 'kre مذكرة الموافقة', 'vbltdasijd', 'xxnkالكمية', 'ttvتفاصيل', 'kxbruارسال الى', 'vukyتفاصيل ', b'0'),
(8, '63136', '258', 'bgbi المستفيد', 'y المشروع', 'lyl البرنامج', 'u النطاق', 'chom المنطقة', 'lhg المدينة', '513668', '$', 'zcl لامر', 'xov لصالح', 'rt طريقة', '2017-02-18 00:00:00', 'og الموافق', 'm الموافق', 'c الموافق', 'r الموافق', 'fj الموافق', 'uao مذكرة الموافقة', 'so مذكرة الموافقة', 'yt مذكرة الموافقة', 'e مذكرة الموافقة', 'rzhgxjya', 'hrالكمية', 'agphتفاصيل', 'giارسال الى', 'wrxhcتفاصيل ', b'0'),
(9, '4569422246', '328', 'd المستفيد', 'nhe المشروع', 'av البرنامج', 'xz النطاق', 'hmqm المنطقة', 'ysuj المدينة', '3628', '$', 'ls لامر', 'n لصالح', 'pf طريقة', '2017-03-23 00:00:00', 'e الموافق', 'x الموافق', 'dc الموافق', 'up الموافق', 'dfh الموافق', 'd مذكرة الموافقة', 'llm مذكرة الموافقة', 'ths مذكرة الموافقة', 'mns مذكرة الموافقة', 'hlarlxokph', 'hbktwالكمية', 'qwhتفاصيل', 'tbارسال الى', 'reتفاصيل ', b'0'),
(10, '6645908989', '422', 'onlg المستفيد', 'mnt المشروع', 'ky البرنامج', 'ef النطاق', 'blg المنطقة', 'p المدينة', '12842', '$', 'im لامر', 'fuy لصالح', 'qn طريقة', '2017-02-22 00:00:00', 'in الموافق', 'ypd الموافق', 'wt الموافق', 'b الموافق', 'xve الموافق', 'rvf مذكرة الموافقة', 'dk مذكرة الموافقة', 't مذكرة الموافقة', 'idv مذكرة الموافقة', 'sdwdj', 'hhlالكمية', 'cdتفاصيل', 'bssiارسال الى', 'ercتفاصيل ', b'0'),
(11, '506192055', '6818', 'k المستفيد', 'xt المشروع', 'f البرنامج', 'g النطاق', 'bi المنطقة', 'txkd المدينة', '44112', '$', 'fjn لامر', 'yv لصالح', 'xp طريقة', '2017-03-26 00:00:00', 'rad الموافق', 'k الموافق', 'z الموافق', 'ae الموافق', 't الموافق', 'k مذكرة الموافقة', 'z مذكرة الموافقة', 'r مذكرة الموافقة', 'txi مذكرة الموافقة', 'dgfvtcspr', 'qynpالكمية', 'lkeتفاصيل', 'zvdwارسال الى', 'zrتفاصيل ', b'0'),
(12, '44503', '71244', 'c المستفيد', 'j المشروع', 'iv البرنامج', 'eyfi النطاق', 'kj المنطقة', 'ur المدينة', '574780', '$', 'jyf لامر', 'tra لصالح', 'ein طريقة', '2017-03-01 00:00:00', 'xrs الموافق', 'odb الموافق', 'ln الموافق', 'mg الموافق', 'p الموافق', 'f مذكرة الموافقة', 'fta مذكرة الموافقة', 'w مذكرة الموافقة', 'ws مذكرة الموافقة', 'gowqugof', 'qbrjaالكمية', 'zdتفاصيل', 'lrارسال الى', 'zmتفاصيل ', b'0'),
(13, '0786047526', '1743', 'ds المستفيد', 'p المشروع', 'qk البرنامج', 'oxtv النطاق', 'tw المنطقة', 'h المدينة', '89037', '$', 'dnr لامر', 'ku لصالح', 'l طريقة', '2017-03-14 00:00:00', 'mlt الموافق', 'nnh الموافق', 'l الموافق', 'es الموافق', 'o الموافق', 'c مذكرة الموافقة', 'e مذكرة الموافقة', 'ai مذكرة الموافقة', 'wvh مذكرة الموافقة', 'nkxedasn', 'pqhslالكمية', 'ooتفاصيل', 'exiارسال الى', 'hldnjتفاصيل ', b'0'),
(14, '7748908549', '608', 'cq المستفيد', 'xi المشروع', 'q البرنامج', 'gd النطاق', 'il المنطقة', 'bmuq المدينة', '364670', '$', 'f لامر', 'vyj لصالح', 'ye طريقة', '2017-03-05 00:00:00', 'd الموافق', 'a الموافق', 'xtf الموافق', 'fd الموافق', 'rav الموافق', 'd مذكرة الموافقة', 'xrp مذكرة الموافقة', 'ym مذكرة الموافقة', 'qb مذكرة الموافقة', 'idvfvlibr', 'fzfaالكمية', 'girxتفاصيل', 'ibjdارسال الى', 'dpتفاصيل ', b'0'),
(15, '76098', '064', 'ijj المستفيد', 'i المشروع', 'xfg البرنامج', 'yq النطاق', 'tvz المنطقة', 'aje المدينة', '577679', '$', 'xys لامر', 's لصالح', 'ph طريقة', '2017-01-23 00:00:00', 'b الموافق', 'm الموافق', 'tp الموافق', 'd الموافق', 'fms الموافق', 'z مذكرة الموافقة', 's مذكرة الموافقة', 'l مذكرة الموافقة', 'lln مذكرة الموافقة', 'pprnjiwxn', 'qzالكمية', 'nwتفاصيل', 'gecارسال الى', 'uuتفاصيل ', b'0'),
(16, '115439608', '398960', 'gwvc المستفيد', 'ujag المشروع', 'aty البرنامج', 'uwo النطاق', 'enih المنطقة', 'g المدينة', '94133', '$', 'cce لامر', 'eb لصالح', 'cxm طريقة', '2017-02-01 00:00:00', 'pd الموافق', 'ov الموافق', 'c الموافق', 'a الموافق', 'taw الموافق', 'tbp مذكرة الموافقة', 'bz مذكرة الموافقة', 'edv مذكرة الموافقة', 'b مذكرة الموافقة', 'fvjzfiwfmh', 'caynpالكمية', 'avezتفاصيل', 'tvbvqارسال الى', 'wmتفاصيل ', b'0'),
(17, '9976192743', '0352', 'onop المستفيد', 'vg المشروع', 'zjz البرنامج', 'jqvj النطاق', 'ol المنطقة', 'rrvl المدينة', '34174', '$', 'xrz لامر', 's لصالح', 'rtc طريقة', '2017-02-25 00:00:00', 'gs الموافق', 'aw الموافق', 'x الموافق', 'hy الموافق', 'ssi الموافق', 'm مذكرة الموافقة', 'pgu مذكرة الموافقة', 'n مذكرة الموافقة', 'hu مذكرة الموافقة', 'ubmhnqt', 'aewالكمية', 'hgnتفاصيل', 'tyyplارسال الى', 'vwtdlتفاصيل ', b'0'),
(18, '28212', '7715', 'qe المستفيد', 'paf المشروع', 'rr البرنامج', 'cwt النطاق', 'x المنطقة', 'acn المدينة', '72803', '$', 'q لامر', 'zf لصالح', 'qs طريقة', '2017-03-27 00:00:00', 'mh الموافق', 'apw الموافق', 'oz الموافق', 'u الموافق', 'joi الموافق', 'yxz مذكرة الموافقة', 'lm مذكرة الموافقة', 'm مذكرة الموافقة', 'e مذكرة الموافقة', 'oojxw', 'vsالكمية', 'myayvتفاصيل', 'ukyzارسال الى', 'kzcتفاصيل ', b'0'),
(19, '935495', '76213', 'roh المستفيد', 'ikt المشروع', 'gy البرنامج', 'ucx النطاق', 'gy المنطقة', 'ru المدينة', '89273', '$', 'ly لامر', 'ozz لصالح', 'zv طريقة', '2017-01-02 00:00:00', 'x الموافق', 'dkj الموافق', 'sy الموافق', 'l الموافق', 'qmz الموافق', 'wog مذكرة الموافقة', 'ml مذكرة الموافقة', 'fuq مذكرة الموافقة', 'fqb مذكرة الموافقة', 'hkehq', 'zgylzالكمية', 'lzتفاصيل', 'gwارسال الى', 'tylqتفاصيل ', b'0'),
(20, '55693197', '3035', 'z المستفيد', 'nwr المشروع', 'v البرنامج', 'f النطاق', 'l المنطقة', 'jpvx المدينة', '9539', '$', 'bz لامر', 'wx لصالح', 'k طريقة', '2017-03-25 00:00:00', 'z الموافق', 'syr الموافق', 'j الموافق', 'tw الموافق', 'iqu الموافق', 'wd مذكرة الموافقة', 'oto مذكرة الموافقة', 'k مذكرة الموافقة', 'v مذكرة الموافقة', 'nzffbh', 'cnuiالكمية', 'btfتفاصيل', 'hwارسال الى', 'pgkkتفاصيل ', b'0'),
(21, '3198902526', '3619', 'e المستفيد', 'h المشروع', 'h البرنامج', 'uc النطاق', 'xeqr المنطقة', 'pmk المدينة', '124', '$', 'v لامر', 'pkc لصالح', 'ffb طريقة', '2017-02-13 00:00:00', 'sqz الموافق', 'd الموافق', 'p الموافق', 'wzc الموافق', 'x الموافق', 'es مذكرة الموافقة', 'gcj مذكرة الموافقة', 'j مذكرة الموافقة', 'kc مذكرة الموافقة', 'urbdn', 'slyvالكمية', 'rtxhxتفاصيل', 'osارسال الى', 'bfqgتفاصيل ', b'0'),
(22, '378487', '67765', 'kqfg المستفيد', 'jf المشروع', 'blr البرنامج', 'hsd النطاق', 'ktt المنطقة', 'hlcb المدينة', '5490', '$', 'h لامر', 'l لصالح', 'g طريقة', '2017-02-09 00:00:00', 'shv الموافق', 'eoy الموافق', 'm الموافق', 'c الموافق', 'vh الموافق', 'p مذكرة الموافقة', 'z مذكرة الموافقة', 'qfd مذكرة الموافقة', 'ddd مذكرة الموافقة', 'fzvsmnnwzy', 'jiالكمية', 'wqpvrتفاصيل', 'lgxwارسال الى', 'kjhobتفاصيل ', b'0'),
(23, '1183606', '380174', 'qjgt المستفيد', 'nzn المشروع', 'xc البرنامج', 'htj النطاق', 'wt المنطقة', 'q المدينة', '429980', '$', 'd لامر', 'w لصالح', 'qei طريقة', '2017-01-28 00:00:00', 'm الموافق', 'bf الموافق', 'xn الموافق', 'mz الموافق', 'np الموافق', 'y مذكرة الموافقة', 'xe مذكرة الموافقة', 'qe مذكرة الموافقة', 'ik مذكرة الموافقة', 'zxguxmhc', 'cdالكمية', 'zdتفاصيل', 'iiqbeارسال الى', 'avzkتفاصيل ', b'0'),
(24, '970595094', '466004', 'qiar المستفيد', 'zdgq المشروع', 'jw البرنامج', 'mqcr النطاق', 'lz المنطقة', 'hteo المدينة', '39404', '$', 'a لامر', 'qeg لصالح', 'y طريقة', '2017-03-26 00:00:00', 'ww الموافق', 'yve الموافق', 'xre الموافق', 'g الموافق', 'o الموافق', 'ig مذكرة الموافقة', 'fy مذكرة الموافقة', 'ga مذكرة الموافقة', 'hf مذكرة الموافقة', 'rwyea', 'mkglالكمية', 'puwتفاصيل', 'xlwkcارسال الى', 'xeiyتفاصيل ', b'0'),
(25, '39291499', '030996', 'hqpd المستفيد', 'ii المشروع', 'in البرنامج', 'yli النطاق', 'usk المنطقة', 'f المدينة', '352003', '$', 'uk لامر', 'f لصالح', 'b طريقة', '2017-02-22 00:00:00', 'wjj الموافق', 'pgz الموافق', 'w الموافق', 'fcp الموافق', 'sgh الموافق', 'tky مذكرة الموافقة', 'a مذكرة الموافقة', 'ams مذكرة الموافقة', 'll مذكرة الموافقة', 'rsewfufg', 'dtyالكمية', 'thsتفاصيل', 'bysjbارسال الى', 'sxgتفاصيل ', b'0'),
(26, '2885312', '577', 'o المستفيد', 's المشروع', 'o البرنامج', 'bxh النطاق', 'ib المنطقة', 'omii المدينة', '54717', '$', 'zxo لامر', 'tik لصالح', 'i طريقة', '2017-01-04 00:00:00', 'cr الموافق', 'oh الموافق', 'fb الموافق', 'm الموافق', 'vtc الموافق', 'w مذكرة الموافقة', 'diw مذكرة الموافقة', 'yk مذكرة الموافقة', 'sjo مذكرة الموافقة', 'htgrlyl', 'xgpالكمية', 'wpتفاصيل', 'cbgeارسال الى', 'scتفاصيل ', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@sbmf.com', '$2y$10$bYz9NKSmOWne1H3VYj1cX.ei3orMVhxyk98iPXE4obtKxTn/sNCI2', 'MMYJu4OafHOIQu2mzJzU5YpXs4iopjaYihtSazOKdBea2gkKGphakHbH5qxZ', '2017-07-04 10:13:31', '2017-07-04 10:13:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `budget`
--
ALTER TABLE `budget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
