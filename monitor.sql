-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 13, 2022 at 12:18 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monitor`
--

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `directory` varchar(100) NOT NULL DEFAULT 'offers',
  `directory_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `directory`, `directory_id`) VALUES
(1, 'تشوينات  محطات الرادرار', 'radars', 1),
(4, 'المشاكل الفنية للرادار', 'radars', 1),
(5, 'أوامر التوريد', 'radars', 1),
(6, 'الرؤية المستقبلية', 'radars', 1),
(8, 'مصاعد الابراج', 'offers', 3),
(10, 'صيانة جهاز AIS ترسانة بورسعيد', 'offers', 3),
(11, 'صيانة وحدات كهربية', 'power', 4),
(12, 'مشروع البصمة', 'security', 5),
(13, 'تعبئة للشئون الفنية', 'security', 5),
(15, 'زيارة محطات', 'tawkitat', 7),
(16, 'فحص أجهزة', 'offers', 3),
(17, 'تجهيز قاعة الاحتفالات', 'offers', 3),
(18, 'اجتماع', 'offers', 3),
(20, 'مشروع التامين على سيارات هيئة قناه السويس للعام المالى 2022/2023', 'technical_office', 8),
(21, 'أوامر التوريد', 'power', 4),
(22, 'تأمين محطات المياه', 'security', 5),
(23, 'منظومة المراقبة الرادارية', 'vtms', 2),
(24, 'توسيع طريق مرشدين', 'vtms', 2),
(25, 'فحص أجهزة', 'Maintenance', 9),
(26, 'تأمين الاستاد', 'security', 5),
(27, 'تطوير كبرى الفردان', 'security', 5),
(28, 'قطع كابل فايبر', 'vtms', 2),
(30, 'مد كابلات فايبر', 'vtms', 2),
(32, 'تطوير محطات', 'tawkitat', 7),
(33, 'تقرير عرض على الرئاسة', 'tawkitat', 7),
(34, 'الارشيف الالكتروني', 'Electronic_Archive', 10),
(36, 'غرف كابلات المحطات المكشوفة', 'vtms', 2),
(37, 'صيانة طابعة', 'Maintenance', 9),
(39, 'اشارة المجلس الوطنى ملحق الاتفاق', 'radars', 1),
(42, 'صدأ بالبرج', 'vtms', 2),
(43, 'تركيب كاميرات', 'security', 5),
(44, 'توفير مواد خارج جدول', 'technical_office', 8),
(45, 'تشكيل لجنة', 'tawkitat', 7),
(46, 'تأمين أندية', 'security', 5),
(47, 'استعجال أمر توريد', 'vtms', 2),
(48, 'تركيب اجهزة اطفاء بالسنتر', 'tawkitat', 7),
(49, 'أعطال', 'radars', 1),
(50, 'تأمين المستشفى', 'security', 5),
(51, 'تفرير الجهاز المركزى', 'technical_office', 8),
(52, 'تثبيت سيارة', 'tawkitat', 7),
(53, 'القوى -الطاقة المتجددة', 'tawkitat', 7),
(54, 'موقف تأخير شركة جيزة للأنظمة', 'tawkitat', 7),
(55, 'تحديد احتياجات', 'technical_office', 8),
(56, 'اعمال التكسير ومد الكابل', 'power', 4),
(57, 'اصلاح اجهزة التكييف', 'power', 4),
(58, 'تأمين مركز الأبحاث', 'security', 5),
(60, 'استخراج تصاريح', 'tawkitat', 7),
(62, 'عرض شركة ملاحة', 'vtms', 2),
(63, 'توريد وتركيب', 'radars', 1),
(65, 'المناقشات الفنية', 'radars', 1),
(67, 'تأمين مراكز الحركة', 'security', 5),
(72, 'مذكره للعرض', 'vtms', 2),
(75, 'تنفيذ وتركيب واستلام منظومة مكافحة', 'tawkitat', 7),
(76, 'القوى -الطاقة المتجددة', 'power', 4),
(77, 'تأمين مبنى ق.س العاصمه الاداريه', 'security', 5),
(78, 'تأمين الاستاد', 'security', 5),
(79, 'ضغط المياه صندوق الحريق محطة رادار', 'radars', 1),
(80, 'لتامين غرفة الراكات بسنتر التوقيتات والارصاد', 'tawkitat', 7),
(81, 'تأمين محور قناة السويس', 'security', 5),
(82, 'منظومة اطفاء تلقائى خاصة بالمولد', 'power', 4),
(85, 'أوامر التوريد', 'technical_office', 8),
(91, 'قطع غيار الرادار بمحطة الارسال', 'radars', 1),
(92, 'صيانة برج القنطرة', 'radars', 1),
(93, 'تركيب هواتف', 'technical_office', 8),
(94, 'تطوير مركز الحركة', 'vtms', 2),
(95, 'إخطار لجميع الوحدات', 'technical_office', 8),
(96, 'صيانة تكييفات', 'power', 4),
(97, 'نقل مراكز الحركة', 'vtms', 2),
(98, 'صلاحيات إيرادات الملاحة', 'Electronic_Archive', 10),
(99, 'اصلاح تكييفات', 'power', 4),
(100, 'شهادات الصالحية للطفايات', 'technical_office', 8),
(103, 'تعليمات عامة', 'technical_office', 8),
(104, 'أوامر التوريد', 'tawkitat', 7),
(105, 'مشروع مراقبة و تامين المجرى الملاحى', 'vtms', 2),
(106, 'تأمين قاعة الاحتفالات', 'security', 5),
(108, 'أوامر التوريد', 'security', 5),
(109, 'اصلاح تكييفات', 'radars', 1),
(110, 'صيانة مبانى', 'tawkitat', 7),
(111, 'رسوم السفن', 'Electronic_Archive', 10),
(112, 'مراكز الحركة الدور ال 11', 'vtms', 2),
(113, 'مراكز حركة', 'vtms', 2),
(114, 'الجهاز المركزى للمحاسبات', 'technical_office', 8),
(115, 'تأمين ورش صيانة', 'security', 5),
(116, 'تركيبات مشروعات التوقيتات', 'tawkitat', 7),
(117, 'الرقم المختصر', 'technical_office', 8),
(118, 'تصنيع أثاث', 'technical_office', 8),
(119, 'صيانة الابراج', 'technical_office', 8),
(120, 'تدريب', 'technical_office', 8),
(121, 'منظومة كاميرات فيلا التحقيقات', 'security', 5),
(123, 'صيانة مبنى القبة', 'Electronic_Archive', 10),
(124, 'أوامر التوريد', 'vtms', 2),
(125, 'صيانة مبنى القبة', 'vtms', 2),
(126, 'مشروع المتحف', 'tawkitat', 7),
(127, 'مراجعة إيرادات الملاحة', 'Electronic_Archive', 10),
(128, 'مكبس كابلات هيدروليكى كهربائى', 'power', 4),
(129, 'نظام إنذار ومكافحة الحريق', 'technical_office', 8),
(130, 'الحجز الالكتروني', 'Electronic_Archive', 10),
(131, 'ترشيد استخدام الورق', 'technical_office', 8),
(132, 'شاشات قاعة الاحتفالات', 'tawkitat', 7),
(133, 'طفايات حريق', 'technical_office', 8),
(134, 'محطات الارشاد', 'tawkitat', 7),
(135, 'اعداد استراحة', 'technical_office', 8),
(136, 'المنظومه الالكترونيه لمخازن', 'technical_office', 8),
(137, 'برنامج E.C.M', 'technical_office', 8),
(138, 'ابراج رادار', 'radars', 1),
(139, 'مشروع المتحف', 'security', 5),
(140, 'انتداب', 'technical_office', 8),
(141, 'مشروع الكهروبصرية', 'vtms', 2),
(142, 'مخازن المراقبة الالكترونية', 'technical_office', 8),
(143, 'تطوير العاملين', 'technical_office', 8),
(144, 'خدمات الطوارىء', 'technical_office', 8),
(145, 'اصلاح آلة حاسبة', 'Maintenance', 9),
(146, 'شركة AIRBUS', 'vtms', 2),
(147, 'محضر التكهين', 'technical_office', 8),
(148, 'محضر التكهين', 'power', 4),
(149, 'توفير جهاز تكييف اخر جديد بدل من الجهاز المكهن', 'power', 4),
(151, 'محطة الفردان', 'tawkitat', 7),
(152, 'تأمين المخزن الجديد لقطع غيار الردار', 'technical_office', 8),
(153, 'دورة تدريب ادارية', 'technical_office', 8),
(154, 'كوبرى النصر', 'tawkitat', 7),
(155, 'ملاحظات تشغيل أجهزة', 'Electronic_Archive', 10),
(156, 'بيان حادث', 'vtms', 2),
(157, 'بيان شمندورة', 'vtms', 2),
(158, 'ملاحظات متابعة محطات', 'vtms', 2),
(159, 'ملاحظات متابعة محطات', 'tawkitat', 7),
(160, 'ملاحظات تشغيل أجهزة', 'technical_office', 8),
(161, 'مرور الضغط العالى فوق القناة', 'vtms', 2),
(162, 'متابعة شماندورات', 'vtms', 2),
(163, 'محطة الفردان', 'power', 4),
(164, 'أجهوة صوتيات مدارس', 'tawkitat', 7),
(165, 'المساعدات الملاحية', 'security', 5),
(166, 'اختبار محطات أمر توريد', 'tawkitat', 7),
(167, 'منظومة تأمين الترسانة', 'security', 5),
(168, 'تركيب تكييفات', 'technical_office', 8),
(169, 'تركيب تكييفات', 'vtms', 2),
(170, 'تطعيمات', 'technical_office', 8),
(171, 'مركز خدمة لوجستى', 'technical_office', 8),
(172, 'مشروع AIS', 'vtms', 2),
(173, 'تأمين قاعة الاحتفالات', 'tawkitat', 7),
(174, 'منظومة إطفاء الحريق', 'vtms', 2),
(175, 'القوى -الطاقة المتجددة', 'technical_office', 8),
(176, 'تأمين مخزن بورفؤاد', 'security', 5),
(177, 'تأمين خزينة بورسعيد', 'security', 5),
(179, 'كبرى النصر', 'tawkitat', 7),
(180, 'محضر استلام', 'tawkitat', 7),
(181, 'عرض vssim', 'vtms', 2),
(182, 'عرض vssim', 'tawkitat', 7),
(183, 'عرض vssim', 'Electronic_Archive', 10),
(184, NULL, 'offers', 0),
(185, 'إدارة الاتصالات', 'monitoring', 12),
(186, NULL, 'offers', 0),
(187, 'تعليمات داخلية', 'Human_Resources', 14),
(189, 'تجميع بيانات لمركز الابحاث', 'tawkitat', 7),
(190, 'الربط بالـــــVTMS', 'tawkitat', 7),
(193, 'شركة الجيزة', 'tawkitat', 7),
(194, 'لجنة فض مظاريف', 'technical_office ', 8),
(196, 'تأمين كوبرى الشهيد/ أحمد عمر شبراوى', 'security', 5),
(197, 'تأمين الارشاد', 'security', 5),
(198, 'مركز التوقيتات', 'tawkitat', 7),
(199, 'محاضر استلام', 'technical_office', 8);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
