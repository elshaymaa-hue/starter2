-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2022 at 09:40 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

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
CREATE DATABASE IF NOT EXISTS `monitor` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `monitor`;

-- --------------------------------------------------------

--
-- Table structure for table `bussinessaffairs`
--

DROP TABLE IF EXISTS `bussinessaffairs`;
CREATE TABLE `bussinessaffairs` (
  `ID` int(11) NOT NULL,
  `SubjectID` int(11) DEFAULT NULL,
  `SectionID` int(11) DEFAULT NULL,
  `bussinessid` int(11) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `Actions` char(100) DEFAULT NULL,
  `remarks` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bussinessaffairs`
--

INSERT INTO `bussinessaffairs` (`ID`, `SubjectID`, `SectionID`, `bussinessid`, `date`, `Actions`, `remarks`) VALUES
(1, 1, 1, 1, 'أغسطس 2011', 'توريد عدد 7 محطات رادار(بورفؤاد - القبة - الكاب - الارسال - فنارة - جنيفة -بورتوفيق)', 'تواريخ التوريد و التركيب لكل محطةواسم الشركة الموردة وشروط التوريد بنود التوريد'),
(2, 1, 1, 1, 'أغسطس 2014', 'توريد عدد 7 محطات رادار(بورفؤاد - القبة - الكاب - الارسال - فنارة - جنيفة -بورتوفيق)', 'تواريخ التوريد و التركيب لكل محطةواسم الشركة الموردة وشروط التوريد بنود التوريد'),
(3, 1, 1, 1, 'أغسطس 2015', 'توريد عدد 7 محطات رادار(بورفؤاد - القبة - الكاب - الارسال - فنارة - جنيفة -بورتوفيق)', 'تواريخ التوريد و التركيب لكل محطةواسم الشركة الموردة وشروط التوريد بنود التوريد'),
(4, 1, 1, 2, 'ابريل 2015', 'تركيب عدد 6 محطات (بورفؤاد - القبة - الكاب - الارسال - جنيفة - بورتوفيق)', 'تواريخ التوريد و التركيب لكل محطةواسم الشركة الموردة وشروط التوريد بنود التوريد'),
(5, 1, 1, 3, 'يوليو 2017', 'توريد عدد 5 محطات رادار (راس العش - البلاح - شرق الفردان - طوسون - الشلوفة )', 'تواريخ التوريد و التركيب لكل محطةواسم الشركة الموردة وشروط التوريد بنود التوريد'),
(6, 1, 1, 4, 'أغسطس 2017', 'تركيب عدد 3 محطات رادار(البلاج - طوسون - الشلوفة)', 'تواريخ التوريد و التركيب لكل محطةواسم الشركة الموردة وشروط التوريد بنود التوريد'),
(7, 1, 1, 5, 'فبراير 2020', 'تركيب رادار  ( فنارة - رأس العش - شرق الفردان)', 'تواريخ التوريد و التركيب لكل محطةواسم الشركة الموردة وشروط التوريد بنود التوريد'),
(8, 1, 1, 6, 'خلال 2020/2021', 'مع مندوب GET  وكيل الهيئة الاقتصادية للمشروعات تم عمل اختبارات (فنارة - شرق الفردان -راس العش) باقى', 'إشارة للشركة رقم 883 بتاريخ /9/12/2021'),
(9, 1, 1, 7, 'نوفمبر 2021', 'عدد 2 امر توريد من شركات (TERMA- SPERRY MARINE) و في انتظار توريدهم هي قطع غيار مطلوبة لعمل الصيانات', 'استثناء كارتة CPRD تعمل التموين على توفيرها'),
(10, 2, 1, 1, 'أغسطس 2012', 'قامت الشركة الفرنسية (الهيئة الاقتصادية للمشروعات بالمخابرات العامة) بعمل :', 'المحطات الأساسية والمضافة وتاريخ التعاقد على ال 5 محطات'),
(11, 2, 1, 1, 'أغسطس 2012', '1- مسح ودراسة ميدانية للتغطية الردارية لقناة السوسي بالكامل', 'المحطات الأساسية والمضافة وتاريخ التعاقد على ال 5 محطات'),
(12, 2, 1, 1, 'أغسطس 2012', '2- نتج عنها 5 مناطق عمياء للشبكة الردارية المكونة من :', 'المحطات الأساسية والمضافة وتاريخ التعاقد على ال 5 محطات'),
(13, 2, 1, 1, 'أغسطس 2012', 'عدد 8 محطات رادار وبالتالي تم تعديل التعاقد بإضافة عدد  5 محطات ردارية إضافية وأصبحت عدد المحطات 13', 'المحطات الأساسية والمضافة وتاريخ التعاقد على ال 5 محطات');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `task` varchar(100) NOT NULL,
  `manager` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `task`, `manager`, `created_at`, `updated_at`) VALUES
(1, 'vtms', 'vtms', 'waleed', '2022-03-01 12:16:43', '2022-03-01 12:16:43'),
(2, 'vtms', 'vtms', 'waleed', '2022-03-02 08:53:18', '2022-03-02 08:53:18');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contents` varchar(100) NOT NULL,
  `geha` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `name`, `contents`, `geha`, `created_at`, `updated_at`, `photo`) VALUES
(1, '675', 'reply', NULL, '2022-03-01 12:30:30', '2022-03-01 10:30:30', ''),
(2, '657', 'reply', NULL, '2022-03-02 06:53:39', '2022-03-02 04:53:39', ''),
(3, '658', 'store', NULL, '2022-03-02 07:00:45', '2022-03-02 05:00:45', ''),
(4, '659', 'store2', NULL, '2022-03-02 07:02:51', '2022-03-02 05:02:51', ''),
(5, '660', 'store3', NULL, '2022-03-02 07:03:26', '2022-03-02 05:03:26', ''),
(6, '660', 'store3', NULL, '2022-03-02 07:05:43', '2022-03-02 05:05:43', '');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `details_en` varchar(1000) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `details_ar` varchar(1000) DEFAULT NULL,
  `directory` varchar(100) NOT NULL DEFAULT 'offers',
  `input` varchar(100) DEFAULT NULL,
  `output` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `name_en`, `price`, `photo`, `created_at`, `updated_at`, `details_en`, `name_ar`, `details_ar`, `directory`, `input`, `output`, `type`, `status`) VALUES
(1, '2017', 'عدد/5 محطات (راس العش - البلاح - شرق الفردان - طوسون - الشلوفة)', 'vtms-2017.pdf', '2022-04-03 12:14:58', '2022-03-01 08:09:53', 'طباقا لمحضر فحص ظاهري', 'تشوينات  محطات الرادرار ( مخزن المواصلات)', 'مرفق ب التعاقد بين هيئة قناة السويس و مجلس الدفاع الوطني إتفاق 28/6/2009 إتفاق 15/3/2016 ملحق إتفاق 7/3/2019', 'vtms', NULL, NULL, NULL, 'done'),
(2, 'يوليو - أغسطس (2017)', 'تركيب عدد 3 محطات رادار(البلاج - طوسون - الشلوفة)', 'vtms-يوليو - أغسطس (2017).pdf', '2022-04-04 11:44:19', '2022-03-01 06:24:45', NULL, 'تركيبات  محطات الرادار', NULL, 'vtms', NULL, NULL, NULL, 'done'),
(3, 'فبراير 2020', 'تركيب عدد 3 محطات  ( فنارة - رأس العش - شرق الفردان)', '', '2022-03-08 08:30:09', '2022-03-01 08:29:16', NULL, 'تركيبات  محطات الرادار', NULL, 'offers', '', '', '', NULL),
(4, 'ابريل - مايو - يونيو (2015)', 'لا توجد ملاحظات عند التركيب المحطات (بورفؤاد - القبة - الكاب - الارسال - جنيفة - بورتوفيق-القنطرة) وبداية التشغيل تعمل بكفاءة 100%', '', '2022-03-15 07:50:37', '2022-03-01 08:49:09', NULL, 'المشاكل الفنية للرادار', NULL, 'offers', '', '', '', NULL),
(5, 'أغسطس 2011', 'عدد/7 محطات (بورفؤاد - القبة - الكاب -القنطرة -الإرسال - جنيفة - بورتوفيق)', 'vtms-أغسطس 2011.pdf', '2022-04-05 07:27:06', '2022-03-01 08:49:44', 'طباقا لمحضر فحص ظاهري', 'تشوينات  محطات الرادرار ( مخزن المواصلات)', 'مرفق ب التعاقد بين هيئة قناة السويس و مجلس الدفاع الوطني إتفاق 28/6/2009 إتفاق 15/3/2016 ملحق إتفاق 7/3/2019', 'vtms', NULL, NULL, NULL, 'done'),
(6, 'فبراير 2022', 'عدد 5 محطات تعمل بنسبة 50% (بورفؤاد - الكاب - البلاح - الارسال - جنيفة )', 'vtms-فبراير 2022.pdf', '2022-04-03 12:21:37', '2022-03-01 08:49:51', 'أخر مخاطبة الهيئة الإقتصادية  للمشروعات رقم883/ج بتاريخ 9/12/2021', 'المشاكل الفنية للرادار', 'رقم 433/ج بتاريخ 12/7/2016', 'vtms', NULL, NULL, NULL, 'done'),
(7, '06-02-2020', 'أمر توريد رقم 26-1026/1106 بخصوص ماجنترونات محطات رادار موديل terma', 'vtms-06-02-2020.pdf', '2022-04-05 07:30:05', '2022-03-01 09:26:17', NULL, 'أوامر التوريد', NULL, 'vtms', NULL, NULL, 'أمر توريد', 'done'),
(8, '17-11-2021', 'أمر توريد رقم 26-1088/824 بخصوص قطع غيار رادار من نوع sperry marine', 'vtms-3683-17-11-2021.pdf', '2022-04-05 07:31:59', '2022-03-01 11:14:26', NULL, 'أوامر التوريد', NULL, 'vtms', '3683', NULL, 'أمر توريد', 'done'),
(9, '23/11/2020', 'أمر توريد رقم 26-1016/706 بخصوص مواتير  لهوائي رادار CHL', '1647330499.pdf', '2022-03-15 07:48:19', '2022-03-01 11:15:49', NULL, 'أوامر التوريد', NULL, 'offers', '', '', '', NULL),
(10, '17/11/2021', 'أمر توريد رقم 26-1088/823 بخصوص توفير قطع غيار ciberd', '1647330330.pdf', '2022-03-15 07:45:30', '2022-03-01 11:21:01', NULL, 'أوامر التوريد', NULL, 'offers', '', '', '', NULL),
(11, '23/11/2020', 'أمر توريد رقم 26-1016/08 بخصوص قطع غيار هوائي رادار من نوع chl', '1647330524.pdf', '2022-03-15 07:48:44', '2022-03-01 11:27:35', NULL, 'أوامر التوريد', NULL, 'offers', '', '', '', NULL),
(12, '05-09-2010', 'أمر توريد رقم 1528/670-26 بخصوص توفير قطع غيار بخصوص كبائن GEM', '1647331891.pdf', '2022-03-15 08:11:32', '2022-03-07 10:40:07', NULL, 'أوامر التوريد', NULL, 'offers', '', '', '', NULL),
(13, 'فبراير 2022', 'عدد 6 محطات متوقفة لأسباب فنية (القبة - رأس العش - القنطرة - شرق الفردان - فنارة -بورتوفيق)', '1647331572.png', '2022-03-15 08:06:12', '2022-03-07 10:47:40', 'أخر مخاطبة الهيئة الإقتصادية  للمشروعات رقم883/ج بتاريخ 9/12/2021', 'المشاكل الفنية للرادار', 'أول مخاطبة لهيئة الدفاع الوطني', 'offers', '', '', '', NULL),
(14, '05-09-2010', 'أمر توريد رقم 1529/670-26 بخصوص توفير قطع غيار بخصوص كبائن GEM', '1647331714.pdf', '2022-03-15 08:08:34', '2022-03-07 10:53:06', NULL, 'أوامر التوريد', NULL, 'offers', '', '', '', NULL),
(15, '16/4/2013', 'أمر توريد رقم 26-670/1398 بخصوص توفير قطع غيار بخصوص كبائن GEM', '', '2022-03-15 08:15:00', '2022-03-07 12:42:57', NULL, 'أوامر التوريد', NULL, 'offers', '', '', '', NULL),
(16, '02-05-2020', 'أمر توريد رقم 26-1026/1106 بخصوص ماجنترونات محطات رادار موديل terma', '1647330056.pdf', '2022-03-15 07:40:56', '2022-03-15 07:37:13', NULL, 'أوامر التوريد', NULL, 'offers', '', '', '', NULL),
(17, '09-01-2014', 'أمر توريد رقم 263/870-26 بخصوص توفير قطع غيار بخصوص كبائن GEM', '', '2022-03-15 08:16:15', '2022-03-15 08:16:15', 'غير متوفر', 'أوامر التوريد', NULL, 'offers', '', '', '', NULL),
(18, '02-12-2017', 'أمر توريد رقم 997/945-26 بخصوص توفير قطع غيار بخصوص كبائن GEM', '', '2022-03-15 08:17:03', '2022-03-15 08:17:03', 'غير متوفر', 'أوامر التوريد', NULL, 'offers', '', '', '', NULL),
(19, '22/11/2020', 'أمر توريد رقم 708/1016-26 بخصوص توفير قطع غيار بخصوص كبائن GEM', '1647332289.pdf', '2022-03-15 08:18:09', '2022-03-15 08:18:09', NULL, 'أوامر التوريد', NULL, 'offers', '', '', '', NULL),
(20, '14/7/2020', 'أمر توريد رقم997/945-26 بخصوص توفير قطع غيار بخصوص كبائن GEM', '', '2022-03-15 08:21:31', '2022-03-15 08:21:31', NULL, 'أوامر التوريد', NULL, 'offers', '', '', '', NULL),
(21, '23/11/2020', 'أمر توريد رقم 26-1016/707 بخصوص توفير قطع غيار هوائي لمحطات رادار chl', '', '2022-03-15 08:22:25', '2022-03-15 08:22:25', NULL, 'أوامر التوريد', NULL, 'offers', '', '', '', NULL),
(22, '25/8/2019', 'أمر توريد 26-927/213 بخصوص توفير زيوت جير بوكس للهوائيات', '', '2022-03-15 08:23:21', '2022-03-15 08:23:21', NULL, 'أوامر التوريد', NULL, 'offers', '', '', '', NULL),
(23, 'بدون', 'عدم إمكانية الشبكة الرادارية الحالية من عند تغطية قناة السويس الجديدة من 65 حتي 90 كم بسبب إرتفاعات التلال الردم علي ضفتي قناة السويس و قد تصل إرتفاعها إلي منسوب 40 متر', '', '2022-03-15 08:29:58', '2022-03-15 08:28:01', 'بعد إجراءات إستلام مشروع الـVTMS الحالي من الهيئة الإقتصادية  للمشروعات بالمخابرات العامة', 'الرؤية المستقبلية', 'يجب أن تقوم الشركة المكلف لها رسميا بتحديث مشروع الـ VTMS  بعمل دراسة ميدانيا للتغطية الرادارية للقناة الجديدة لتحدد عدد و أحداثيات  لمواقع الرادار الجديدة المقُترحة من طرفهم طبقا لنوعية الموصفات الفنية  للرادارات حتي تنفذ التغطية الرادارية بالكامل وهو الهدف الأساسي من التحديث.', 'offers', '', '', '', NULL),
(24, 'بدون', 'رفع كفاءة التغطية الرادارية للمنطقة الشمالية للقناة بمنطقة شرق التفريعة', '', '2022-03-15 08:29:42', '2022-03-15 08:29:42', 'بعد إجراءات إستلام مشروع الـVTMS الحالي من الهيئة الإقتصادية  للمشروعات بالمخابرات العامة', 'الرؤية المستقبلية', 'يجب أن تقوم الشركة المكلف لها رسميا بتحديث مشروع الـ VTMS  بعمل دراسة ميدانيا للتغطية الرادارية للمنطقة الشمالية لتحدد مدي فاعلية  تركيب محطة رادار جديدة بالبرج الجديد بمحطة الجونة البحرية طبقا لنوعية  الموصفات الفنية للرادارحتي تنفذ التغطية الرادارية بالكامل وهو الهدف الأساسب من التحديث وعدم الإعتماد الكلي علي رادار بورفؤاد.', 'offers', '', '', '', NULL),
(25, 'بدون', 'رفع كفاءة التغطية الرادارية للمنطقة الجنوبية للقناة بعد التفريعة الجديدة التي جاري تنفيذها  من ترقيم 122 كم إلي 162 كم', '', '2022-03-15 08:31:25', '2022-03-15 08:31:25', 'بعد إجراءات إستلام مشروع الـVTMS الحالي من الهيئة الإقتصادية  للمشروعات بالمخابرات العامة', 'الرؤية المستقبلية', 'من المحتمل تكون تلال ناتج الردم علي ضفتي القناة الناتجة من الحفر و  التوسعة بالقطاع الجنوبي، مما ينتج عنه مناطق عمياء راداريا  ، مثلما مع حدث من حفر قناة السويس الجديدة و الإضطرار للإحتياج  إلي تركيب محطات رادار جديدة.', 'offers', '', '', '', NULL),
(26, '06-11-2020', 'وصيات اللجنة المشكلة 258/2020 بتحديد أعمال الصيانة  عدد/9 أبراج و أخذ برأي إستشاري بإحلال برجي (الإرسال  و الكاب)', '1647333270.pdf', '2022-03-15 08:34:30', '2022-03-15 08:34:30', 'عملية رقم 1/2011  أخر عملية صيانة للأبراج مع شركة يونيكونت', 'صيانة أبراج رادار', 'تقرير اللجنة المشكلة', 'offers', '', '', '', NULL),
(27, '30/11/2020', 'موافقة رئيس هيئة قناة السويس علي توصيات لجنة المشروعات بإسناد العملية إلي إدارة التحركات', '1647333411.pdf', '2022-03-15 08:36:51', '2022-03-15 08:36:51', NULL, 'صيانة أبراج رادار', 'لجنة المشروعات', 'offers', '', '', '', NULL),
(28, '31/1/2022', 'تم مخاطبة الإدارة الهندسية نحو إسناد العملية لأحد الشركات الهيئة المتخصصة  في هذا المجال بمعرفتكم', '1647333544.pdf', '2022-03-15 08:39:04', '2022-03-15 08:39:04', 'عملية رقم 1/2011  أخر عملية صيانة للأبراج مع شركة يونيكونت', 'صيانة أبراج رادار', NULL, 'offers', '', '', '', NULL),
(29, '23/5/2017', 'أفادات الشئون الفنية بإدارة التحركات لقسم المراقبة الإلكترونية بموافقة علي بند مصعد كل  من برجي رادار بورفؤاد و بورتوفيق بمشروع الموازنة الإستثمارييية 2017/2018', '1647333641.pdf', '2022-03-15 08:40:41', '2022-03-15 08:40:41', NULL, 'مصاعد الابراج', NULL, 'offers', '', '', '', NULL),
(30, '09-07-2017', 'أفادات الشئون الفنية بإدارة التحركات لقسم المراقبة الإلكترونية بموافقة علي بند مصعد كل  من برجي رادار بورفؤاد و بورتوفيق بمشروع الموازنة الإستثمارييية 2017/2018', '1647333712.pdf', '2022-03-15 08:41:52', '2022-03-15 08:41:52', NULL, 'مصاعد الابراج', NULL, 'offers', '', '', '', NULL),
(31, '25-02-2018', 'أفادات إدارة التموين بأن تم تحويل طلب توفير المصاعد  إلي الإدارة الأشغال و الهندسية  برقم 299 بتاريخ 25/2/2018', '1647334753.pdf', '2022-03-15 08:59:13', '2022-03-15 08:43:23', NULL, 'مصاعد الابراج', NULL, 'offers', '', '', '', NULL),
(32, '09-07-2017', 'إفادة إلي إدارة التموين بالمواصفات الفنية للمصعدين المطلوبة و أسماء مندوبين قسم المراقبة الإلكترونية  للإنضمام لجنة الدراسة والبت رقم 1496/ب بتاريخ 7/9/2017', 'vtms-4329-09-07-2017.pdf', '2022-04-05 07:35:05', '2022-03-15 08:45:26', NULL, 'مصاعد الابراج', NULL, 'vtms', '4329', NULL, 'مذكرة فريق', 'done'),
(33, '25/2/2018', 'أفادات إدارة التموين بأن تم تحويل طلب توفير المصاعد  إلي الإدارة الأشغال و الهندسية  برقم 299 بتاريخ 25/2/2018', '1647335172.pdf', '2022-03-15 09:06:12', '2022-03-15 08:50:29', NULL, 'مصاعد الابراج', NULL, 'offers', '', '', '', NULL),
(34, '18/4/2018', 'أفادة إلي الإدارة الهندسية بإشارة رقم رقم 652 بناريخ 18/4/2018  بالمواصفات الفنية للمصاعد و أسماء المندوبين للتنسيق', '1647334850.pdf', '2022-03-15 09:00:50', '2022-03-15 08:51:42', NULL, 'مصاعد الابراج', NULL, 'offers', '', '', '', NULL),
(35, '02-11-2020', 'تشكيل أمر إداري رقم 18 لسنة 2020 بتاريخ 11/2/2020 لممارسة شركة قناة السويس للاستثمار', '1647335008.pdf', '2022-03-15 09:03:28', '2022-03-15 08:53:05', NULL, 'مصاعد الابراج', NULL, 'offers', '', '', '', NULL),
(36, '08-08-2021', 'مذكرة إدارة الرئاسة رقم 3836 و 3837 بتاريخ 8/8/2021 بخصوص إسناد  شركة ترسانة السويس البحرية بالتنفيذ بمبلغ 12.5 مليون جنية', '1647335068.pdf', '2022-03-15 09:04:28', '2022-03-15 08:54:39', 'أوصي رئيس الهيئة بأن المبلغ  المعروض مبالغ فيه', 'مصاعد الابراج', NULL, 'offers', '', '', '', NULL),
(37, '09-07-2021', 'مذكرة رقم 4329 بتاريخ 7/9/2021 بعادة طرح مناقصة توريد وتركيب المصاعد', '1647334596.pdf', '2022-03-15 08:56:36', '2022-03-15 08:56:36', 'حتي سعه و تاريخه لم يتم إتخاذ  أي إجراء', 'مصاعد الابراج', NULL, 'offers', '', '', '', NULL),
(38, '2/3/22', 'اصلاح عدد جهاز واحد', '1648452740.pdf', '2022-03-28 07:32:21', '2022-03-28 07:32:21', NULL, 'صيانة جهاز AIS ترسانة بورسعيد', 'اشارة بتلف الجهاز تماما وعدم صلاحيته للعمل', 'offers', '', '', '', NULL),
(39, '2/3/2022', 'صيانة ال ups خاص بجهاز ال ais بالترسانة', 'power-2022-03-28.png', '2022-03-28 12:02:05', '2022-03-28 07:41:26', NULL, 'صيانة وحدات كهربية', NULL, 'power', '', '', '', NULL),
(40, '15-3-2022', NULL, 'security-2022455-15-3-2022.pdf', '2022-03-30 12:11:57', '2022-03-28 07:48:38', NULL, 'مشروع البصمة', 'بخصوص نظام التوقيع بالبصمة كامل مشتملاتة ( كاميرات + سيرفر + كابلات )', 'security', '2022455', NULL, 'إشاره كتابيه', NULL),
(41, 'مارس-2022', 'موافاتهم بخطة التعبئة العامة لعام 2023/2022 وكتابة البيانات على الحاسب الآلى على برنامج إكسيل (نسخة ورقية) + إسطوانة CD فى موعد أقصاه 2022/3/24', 'technical_office-2022457-مارس-2022.png', '2022-03-29 11:27:17', '2022-03-28 07:51:36', NULL, 'تعبئة للشئون الفنية', 'تم اجراء اللازم', 'technical_office', '2022457', NULL, 'إشاره كتابيه', NULL),
(42, '2022-03-17', 'شركة الانظمة ciss', 'hospital_centers-2022460-2022-03-17.PDF', '2022-03-29 11:40:33', '2022-03-28 07:55:35', 'بداية مشروع', 'أوامر التوريد', 'امر توريد رقم 109-474/1/1250 فى 26/1/2022 بخصوص تركيب وتوريد وتشغيل نظام مراقبة بالكاميرات للمراكز الطبية للهيئة ببورسعيد والسويس', 'hospital_centers', '2022460', NULL, 'إشاره كتابيه', NULL),
(43, '17-3-2022', 'مطلوب متابعة الشاشات المعطلة بعد المرور وما تم بشأنها', 'tawkitat-2022466-17-3-2022.pdf', '2022-03-29 11:37:32', '2022-03-28 08:03:41', 'انتظار الرد', 'المرور على المحطات البحرية بقطاع الاسماعيليه(البلاح- الفردان- طوسون- الدفرسوار)', NULL, 'tawkitat', '2022466', NULL, 'تقرير', NULL),
(44, '20/3/2022', 'اسماء مندوبينا هم م/ على محمد عادل على راغب رقم 10950 و م/ محمد ماجد حسين العروسى رقم 10589 للجنة فحص تجهيزات قاعة الاحتفالات بمبنى المارينا الجديدة', '1648454841.pdf', '2022-03-28 08:07:21', '2022-03-28 08:07:21', 'منتهى', 'فحص أجهزة', NULL, 'offers', '', '', '', NULL),
(45, '20/3/2022', 'تجهيز قاعة الاحتفالات بمبنى المارينا الجديد بالكم 76 والتنسيق الذى تم مع السيد/مدير ادارة الرئاسة بشان تشكيل لجنه للفحص والاستلام للمنظومات وتحديد اسماء المندوبيين للاشتراك فى اللجنه', '1648454984.pdf', '2022-03-28 08:09:44', '2022-03-28 08:09:44', NULL, 'تجهيز قاعة الاحتفالات', NULL, 'offers', '', '', '', NULL),
(46, '20/03/2022', 'عقد اجتماع يوم الثلاثاء الموافق 22/3/2022 صباحا بمكتب المهندس/ابراهيم جمال عبد الناصر بخصوص تنسيق الاعمال المطلوب تنفيذها من كل قسم لتطوير محطة الشلوفه', '1648455274.pdf', '2022-03-28 08:14:34', '2022-03-28 08:11:52', 'سيتم التنسيق لحضور مندوب من القسم وافاده اشغال بورتوفيق باى ملاحظات ان وجدت', 'اجتماع', 'تطوير محطة الشلوفة', 'offers', '', '', '', NULL),
(47, '16/3/2022', 'تم التنسيق مع مديريه الصحه على تواجد مركز لتلقى الجرعه التنشيطيه لفيرس كورونا', 'hospital_centers-2022-03-28.pdf', '2022-03-28 12:05:36', '2022-03-28 08:21:02', 'المتابعة حين الطلب', 'اجراءات صحية', 'تتم بجدول منتظم', 'hospital_centers', '', '', '', NULL),
(48, '20/3/2022', 'موافاتهم بالبيانات المذكورة باشاره الخدمات بخصوص مشروع التامين على سيارات هيئة قناه السويس للعام المالى 2022/2023', 'security-2022-03-28.pdf', '2022-03-28 11:26:27', '2022-03-28 08:23:55', NULL, 'تامين سيارات', NULL, 'security', '', '', '', NULL),
(49, '23/03/22', 'مخاطبه ادارة الخدمات للتامين الشامل على السياره طبقا لاشارتهم رقم 768 بتاريخ 13/3/2022', 'security-2022-03-29.png', '2022-03-29 06:21:24', '2022-03-29 06:21:24', NULL, 'تامين سيارات', NULL, 'security', '', '', '', NULL),
(50, '13-9-2021', 'أمر توريد رقم 384/1911-455', 'power-2981-13-9-2021.png', '2022-03-31 09:45:01', '2022-03-31 08:43:21', NULL, 'أمر توريد', 'توريد وتركيب 3kva ups', 'power', '2981', NULL, 'أمر توريد', 'canceled'),
(51, '28-2-2022', 'توريد وتركيب', 'power-1993-28-2-2022.png', '2022-03-31 09:44:19', '2022-03-31 08:50:18', NULL, 'أوامر التوريد', '912/1860-55 توريد عدد/18 كارتة ريموت لزوم شبكات UPS', 'power', '1993', NULL, 'أمر توريد', 'progress'),
(52, '6-3-22', 'امر توريد رقم 1890-55-1428', 'power-706-6-3-22.png', '2022-03-31 09:51:56', '2022-03-31 09:51:56', NULL, 'أوامر التوريد', 'امر توري', 'power', '706', NULL, 'أمر توريد', 'transferred');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('elshaymaa_nassar@yahoo.com', '$2y$10$Re1r9jzFrO5iClrlRw.umOSg6sxlkl.nutH.raKHXnwOjPsWeNONS', '2022-03-10 06:53:25'),
('nassarelshaymaa@gmail.com', '$2y$10$eSEjKxmiolx1H/Vu8L1fjuh6JGScHXLttbfIgC3Gg60uFvjAvusMm', '2022-03-22 07:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `power_stations`
--

DROP TABLE IF EXISTS `power_stations`;
CREATE TABLE `power_stations` (
  `id` int(11) NOT NULL,
  `station_name` varchar(100) DEFAULT NULL,
  `UpsSttp` tinyint(1) DEFAULT NULL,
  `UpsRadar` tinyint(1) DEFAULT NULL,
  `ContractUPS` varchar(100) DEFAULT NULL,
  `UpslInstallation` varchar(100) DEFAULT NULL,
  `PreDeliveryUPS` varchar(100) DEFAULT NULL,
  `FinalDeliveryUPS` varchar(100) DEFAULT NULL,
  `StatusRatioRadar` varchar(50) DEFAULT NULL,
  `StatusRatioSTTB` varchar(50) DEFAULT NULL,
  `LastMessage` varchar(100) DEFAULT NULL,
  `Desil` varchar(100) DEFAULT NULL,
  `DeisilInstallation` varchar(45) DEFAULT NULL,
  `ContractDesil` varchar(100) DEFAULT NULL,
  `PreDeliveryDesil` varchar(100) DEFAULT NULL,
  `FinalDeliveryDesil` varchar(100) DEFAULT NULL,
  `ATS1Transit` varchar(100) DEFAULT NULL,
  `IsolationTransformer` varchar(100) DEFAULT NULL,
  `ATS2VTMS` varchar(100) DEFAULT NULL,
  `AvrRadar` varchar(100) DEFAULT NULL,
  `SurgeRadar` varchar(100) DEFAULT NULL,
  `TawkitatSurgeProtect` varchar(100) DEFAULT NULL,
  `RadarSurgeProtect` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `power_stations`
--

INSERT INTO `power_stations` (`id`, `station_name`, `UpsSttp`, `UpsRadar`, `ContractUPS`, `UpslInstallation`, `PreDeliveryUPS`, `FinalDeliveryUPS`, `StatusRatioRadar`, `StatusRatioSTTB`, `LastMessage`, `Desil`, `DeisilInstallation`, `ContractDesil`, `PreDeliveryDesil`, `FinalDeliveryDesil`, `ATS1Transit`, `IsolationTransformer`, `ATS2VTMS`, `AvrRadar`, `SurgeRadar`, `TawkitatSurgeProtect`, `RadarSurgeProtect`) VALUES
(1, 'الجونة', 0, 0, '−', '−', 'لم يتم', 'لم يتم', 'لم يتم', '-', '-', '30 KVA', '2014', '2019', 'لم يتم', '2016', 'لايوجد', '2022', '2019', 'لايوجد', 'لايوجد', 'قيد التوريد', ''),
(2, 'القبة', 0, 0, '−', '−', 'لم يتم', 'لم يتم', 'لدى شركة جيت للإصلاح', '−', '−', '100 KVA', '2014', '2019', 'لم يتم', '2016', 'لايوجد', '2022', '2019', 'لايوجد', 'تم الاستلام  وجارى التركيب)', 'لم يتم', 'لم يتم'),
(3, 'الرسوة', 0, 0, '√', '√', '√', '√', '√', '√', '√', 'قيد التوريد (امر توريد بتاريخ 3-3-2022)مدة التوريد 5 شخور)', '−', '−', '−', '−', 'لايوجد', 'تم استلامه ولكن يركب بعد توريد المولد', 'جاى التوريد', 'لايوجد', 'لايوجد', 'جارى التوريد', 'جارى التركيب'),
(4, 'راس العش', 0, 0, '−', '−', 'لم يتم', 'لم يتم', 'لدى شركة جيت للإصلاح', '−', '−', '30 KVA', '2014', '2015', 'لم يتم', '2016', '2020', 'تم التركيب', '2015', '2021', '2022', 'جارى التوريد', 'جارى التركيب'),
(5, 'التينة', 0, 0, '−', '−', 'لم يتم', 'لم يتم', 'لم يتم', '−', '−', '30 KVA', '2014', '2015', 'لم يتم', '2015', '2020', 'جارى التركيب', '2015', '2021', '2022', 'تم التركيب', 'جارى التركيب'),
(6, 'الكاب', 0, 0, '−', '−', 'لم يتم', 'لم يتم', 'لم يتم', '−', '−', '30 KVA', '2012', '2012', 'لم يتم', '2013', '2020', 'تم التركيب', '2012', '2021', '2022', 'جارى التوريد', 'جارى التركيب'),
(7, 'القنطرة', 0, 0, '−', '−', 'لم يتم', 'لم يتم', 'لدى شركة جيت للإصلاح', '−', '−', '(تم طلب تغيره في اللميزانية30 KVA', '1994', '1994', 'لم يتم', '1995', '2020', 'تم التركيب', '1994', '2021', '2021', 'جارى التوريد', 'جارى التركيب'),
(8, 'البلاح', 0, 0, '−', '−', 'لم يتم', 'لم يتم', 'لدى شركة جيت للإصلاح', '−', '−', '30 KVA', '2014', '2015', 'لم يتم', '2016', '2020', 'تم التركيب', '2015', '2021', '2021', 'جارى التوريد', 'جارى التركيب'),
(9, 'الفردان', 0, 0, '−', '−', 'لم يتم', 'لم يتم', 'لم يتم', '−', '−', '30 KVA', '2014', '2015', 'لم يتم', '2016', '2020', 'جارى التركيب', '2015', '−', '−', 'جارى التوريد', 'جارى التركيب'),
(10, 'المارينا', 0, 0, '−', '−', 'لم يتم', 'لم يتم', 'لم يتم', '−', '−', '−', '−', '−', 'لم يتم', '−', '2020', 'تم التركيب', '−', '−', '−', 'جارى التوريد', 'جارى التركيب'),
(11, 'طوسون', 0, 0, '−', '−', 'لم يتم', 'لم يتم', 'لم يتم', '−', '−', '30 KVA', '2014', '2015', 'لم يتم', '2016', '2020', 'تم التركيب', '2015', '2021', '2022', 'جارى التوريد', 'جارى التركيب'),
(12, 'الدفرسوار', 0, 0, '−', '−', 'لم يتم', 'لم يتم', 'لم يتم', '−', '−', '30 KVA', '2014', '2015', 'لم يتم', '2016', '2020', 'جارى التركيب', '2015', '−', '−', 'جارى التوريد', 'جارى التركيب'),
(13, 'كبريت', 0, 0, '−', '−', 'لم يتم', 'لم يتم', 'لم يتم', '−', '−', '30 KVA', '2014', '2015', 'لم يتم', '2016', '2020', 'جارى التركيب', '2015', '−', '−', 'جارى التوريد', 'جارى التركيب'),
(14, 'جنيفة', 0, 0, '−', '−', 'لم يتم', 'لم يتم', 'لم يتم', '−', '−', '30 KVA', '2012', '2012', 'لم يتم', '2013', '2020', 'تم التركيب', '2013', '2021', '2022', 'تم التركيب', 'جارى التركيب'),
(15, 'الشلوفة', 0, 0, '−', '−', 'لم يتم', 'لم يتم', 'لم يتم', '−', '−', '30 KVA', '2014', '2015', 'لم يتم', '2016', '2020', 'تم التركيب', '2015', '2021', '2021', 'جارى التوريد', 'جارى التركيب'),
(16, 'بورتوفيق', 0, 0, '−', '−', 'لم يتم', 'لم يتم', 'لايعمل', '−', '−', '30 KVA', '2012', '2012', 'لم يتم', '2013', 'لايوجد', 'تم التركيب', '2013', '2021', '2021', '−', '−'),
(17, 'فنارة', 0, 0, '−', '−', 'لم يتم', 'لم يتم', 'لدى شركة جيت للإصلاح', '−', '−', '100 KVA', '2016', '2018', 'لم يتم', '2019', 'لايوجد', 'تم التركيب', '2018', '2021', '2021', 'لايوجد', 'لايوجد'),
(18, 'شرق الفردان', 0, 0, '−', '−', 'لم يتم', 'لم يتم', 'لم يتم', '−', '−', '100 KVA', '2016', '2018', 'لم يتم', '2019', 'لايوجد', 'تم التركيب', '2018', 'لايحتاج تم تريب نظام الطاقة المتجددة', 'جارى التركيب', 'لايوجد', 'لايوجد'),
(19, 'الارسال', 0, 0, '−', '−', 'لم يتم', 'لم يتم', 'لم يتم', '−', '−', '30 KVA', '1996 مطلوب تغييره', '1996', 'لم يتم', '1996', 'لايوجد', 'تم التركيب', '1996', '2021', '2022', 'لايوجد', 'لايوجد'),
(20, 'بورفؤاد', 0, 0, '−', '−', 'لم يتم', 'لم يتم', 'لم يتم', '−', '−', '30 KVA', '2012', '2012', 'لم يتم', '2013', 'لايوجد', 'تم التركيب', '2012', '2022', '2021', 'لايوجد', 'لايوجد');

-- --------------------------------------------------------

--
-- Table structure for table `problemstate`
--

DROP TABLE IF EXISTS `problemstate`;
CREATE TABLE `problemstate` (
  `ID` int(11) NOT NULL,
  `SubjectID` int(11) DEFAULT NULL,
  `SectionID` int(11) DEFAULT NULL,
  `ProblemID` int(11) DEFAULT NULL,
  `Description` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `problemstate`
--

INSERT INTO `problemstate` (`ID`, `SubjectID`, `SectionID`, `ProblemID`, `Description`) VALUES
(1, 1, 1, 1, 'عدد 2 محطة تعمل بنسبة 100% (طوسون - الشلوفة)'),
(2, 1, 1, 2, 'عدد 5 محطات تعمل بنسبة 50% (بورفؤاد - الكاب - البلاح - الارسال - جنيفة )'),
(3, 1, 1, 3, 'عدد 6 محطات رادار متوقفة لأسباب فنية (القبة - رأس العش - القنطرة - شرق الفردان - فنارة -بورتوفيق)'),
(4, 2, 1, 1, 'عدم وجود دراسة رسمية للتغطية الردارية بالقناة الجدية'),
(5, 3, 1, 1, 'تكون تلال ناتج الردم على ضفتى القناة الناتجة عن الحفر والتوسعة بالقطاع الجنوبى مما ينتج عنه مناطق عمياء راداريا مثلما حدث من حفر قناة السويس الجديدة واضطر الاحتياج الى تركيب محطات ردارية جديدة'),
(6, 4, 1, 1, 'كثرة حركة السفن من المناطق المذكورة عاليه'),
(7, 4, 1, 2, 'الرادارات الحديثة تتميز بتمييز الأهداف القريبة من بعضها ولكن يعيب عليها أن التغطية الرادارية لها قصيرة'),
(8, 4, 1, 3, 'لا يوجد محطة احتياطية أو تعمل تغطية راداربة متكاملة مع محطة رادار الترسانة وبالتالي عند توقف الرادار لظروف طارئة يتوقف بالكامل تتبع السفن الكثيرة في هذه المنطقة'),
(9, 5, 1, 1, 'برج محطة القبة - الكاب - القنطرة - الارسال - جنيفة أبراج متهالكة وعند صيانتها دوريا باستخدام الرمالة والمرشمة تشكل خطورة علىوصلات ال WAVE GUIDE  وكابلات المعلومات بين الهوائى أعلى البرج  وشلتر الأجهزة أسفل البرج'),
(10, 5, 1, 2, 'برج الترسانة - بورفؤاد - شرق البحيرات بورتوفيق أبراج غير متهالكة نظرا لأنها مصنعة من الحديد المجلفن الغير قابل للصدأ لا تشكل خطورة على وصلات وكابلات الرادار'),
(11, 6, 1, 1, 'عدم تحديد إجراءات إعادة طرح مناقصة لتوريد وتركيب المصاعد للحصول على اقل الأسعار'),
(12, 7, 1, 1, 'يوجد بقطاع الرادار عدد/2 مهندس مكلفين بأعمال الصيانة والإصلاح والإجراءات الإدارية وذلك للحفاظ على الكفاءة التشغيلية لعدد/13 محطة رادار بطول القناة بالإضافة الى زيادة عدد مجطات الرادار مستقبلا في القطاع الجنوبى والقناة الجديدة وشرق التفريعة شمالا ، مما يبي');

-- --------------------------------------------------------

--
-- Table structure for table `radars`
--

DROP TABLE IF EXISTS `radars`;
CREATE TABLE `radars` (
  `id` int(11) NOT NULL,
  `station_name` varchar(200) DEFAULT NULL,
  `location` varchar(6) DEFAULT NULL,
  `photo` varchar(100) NOT NULL,
  `supply_date` varchar(120) DEFAULT NULL,
  `installation` varchar(100) DEFAULT NULL,
  `operation_date` varchar(100) DEFAULT NULL,
  `delivery` varchar(100) DEFAULT NULL,
  `status_of_tower` varchar(255) DEFAULT NULL,
  `LetterDate` varchar(255) DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `radars`
--

INSERT INTO `radars` (`id`, `station_name`, `location`, `photo`, `supply_date`, `installation`, `operation_date`, `delivery`, `status_of_tower`, `LetterDate`, `Remarks`, `created_at`, `updated_at`) VALUES
(1, 'بورفؤاد', '0.5', '', '2011', '(ابريل - مايو - يونيو )2015', '(ابريل - مايو - يونيو )2015', 'لم يتم عمل الإستلام  الإبتدائي حتي الأن', NULL, NULL, NULL, NULL, NULL),
(2, 'القبة', '1.1', '', '2011', '(ابريل - مايو - يونيو )2015', '(ابريل - مايو - يونيو )2015', 'لم يتم عمل الإستلام  الإبتدائي حتي الأن', NULL, NULL, NULL, NULL, NULL),
(3, 'رأس العش', '14.3', '', '2017', 'فبراير 2020', NULL, 'لم يتم عمل الإستلام  الإبتدائي حتي الأن', NULL, NULL, NULL, NULL, NULL),
(4, 'الكاب', '35.4', '', '2011', NULL, '(ابريل - مايو - يونيو )2015', 'لم يتم عمل الإستلام  الإبتدائي حتي الأن', NULL, NULL, NULL, NULL, NULL),
(5, 'القنطرة', '45.1', '', '2011', '(ابريل - مايو - يونيو )2015', '(ابريل - مايو - يونيو )2015', 'لم يتم عمل الإستلام  الإبتدائي حتي الأن', NULL, NULL, NULL, NULL, NULL),
(6, 'البلاح', '54.8', '', '2017', 'يوليو - أغسطس (2017)', 'يوليو - أغسطس (2017)', 'لم يتم عمل الإستلام  الإبتدائي حتي الأن', NULL, NULL, NULL, NULL, NULL),
(7, 'شرق الفردان', '62.9', '', '2017', 'فبراير 2020', NULL, 'لم يتم عمل الإستلام  الإبتدائي حتي الأن', NULL, NULL, NULL, NULL, NULL),
(8, 'الارسال', '76.1', '', '2011', '(ابريل - مايو - يونيو )2015', '(ابريل - مايو - يونيو )2015', 'لم يتم عمل الإستلام  الإبتدائي حتي الأن', NULL, NULL, NULL, NULL, NULL),
(9, 'طوسون', '54', '', '2017', 'يوليو - أغسطس (2017)', 'يوليو - أغسطس (2017)', 'لم يتم عمل الإستلام  الإبتدائي حتي الأن', NULL, NULL, NULL, NULL, NULL),
(10, 'فنارة', '111.3', '', '2011', 'فبراير 2020', NULL, 'لم يتم عمل الإستلام  الإبتدائي حتي الأن', 'إنشاء 2019 من الحديد المجلفن غير قابل للصدأ', 'أخر مخاطبة صادرة إلي الهيئة الإقتصادية و المشروعات بالمخابرات العامة \r\nبرقم 651/ ج بتاريخ 5/9/2021', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sectionsubjects`
--

DROP TABLE IF EXISTS `sectionsubjects`;
CREATE TABLE `sectionsubjects` (
  `ID` int(11) NOT NULL,
  `SectionID` int(11) DEFAULT NULL,
  `Subjects` char(255) DEFAULT NULL,
  `summary` char(255) DEFAULT NULL,
  `Objectives` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sectionsubjects`
--

INSERT INTO `sectionsubjects` (`ID`, `SectionID`, `Subjects`, `summary`, `Objectives`) VALUES
(1, 1, 'الشبكة الردارية لمشروع ال VTMS (عدد /13 محطة رادار)', 'إصلاح الأعطال واستبدال بعض الوحدات طبقا لإجراءات جدول الصيانة الدورية والوقائية لمحطات الرادار من قبل الهيئة الاقتصادية للمشروعات بالمخابرات العامة', 'الاستلام (الابتدائى / النهائي ) للمشروع (في أقرب وقت)'),
(2, 1, 'التغطية الردارية لقناة السوي للجديدة (من ترقيم 60 كم إلى 95 كم)', 'الشبكة الردارية الحالية عدم إمكانية التغطية لقناة السويس الجديدة بسبب ارتفاعات تلال الردم على ضفتى القناة التي تصل الى منسوب 40  متر', 'استكمال التغطية وتتبع السفن لمشوع ال VTMS'),
(3, 1, 'التغطية الردارية للتفريعة الجديدة والتوسعة من الترقيم 122 كم ل 162 كم', 'عمل تغطية ردارية للتفريعة الجديدة بطول 10 كم', 'استكمال التغطية وتتبع السفن لمشوع ال VTMS'),
(4, 1, 'التغطية الردارية لمنطقة ميناء شرق التفريعة', 'وجود محطة رادار وحيدة (محطة رادار الترسانة) لتغطية منطقة شمال القناة و منطقة االانتظار ببورسعيد و شمال التفريعة ومنطقة الانتظار الخاص بها', 'زيادة كفاءة التغطية الرادارية للمنطقة الشمالية للقناة'),
(5, 1, 'صيانة عدد 9 أبراج رادار', 'تهالك أبراج الرادار', 'زيادة الكفاءة الفنية  للأبراج المعدنية');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `mobile`) VALUES
(10, 'Elshaymaa Nassar', 'elshaymaa_nassar@yahoo.com', NULL, 'hassnaa86', NULL, '2022-03-22 07:06:40', '2022-03-22 07:06:40', NULL),
(11, 'Elshaymaa Nassar mohamed', 'nassarelshaymaa@gmail.com', NULL, 'hassnaa86', NULL, '2022-03-22 07:06:40', '2022-03-22 07:06:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtms_sections`
--

DROP TABLE IF EXISTS `vtms_sections`;
CREATE TABLE `vtms_sections` (
  `ID` int(11) NOT NULL,
  `SectionName` char(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `SectionManagerName` char(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `RepresentativePerson` char(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `CountOfProjects` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1257;

--
-- Dumping data for table `vtms_sections`
--

INSERT INTO `vtms_sections` (`ID`, `SectionName`, `SectionManagerName`, `RepresentativePerson`, `CountOfProjects`) VALUES
(1, 'قطاع الرادارات', 'دكتور مهندس أيمن موسى', 'مهندس أحمد عمر', 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bussinessaffairs`
--
ALTER TABLE `bussinessaffairs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `power_stations`
--
ALTER TABLE `power_stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `problemstate`
--
ALTER TABLE `problemstate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `radars`
--
ALTER TABLE `radars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectionsubjects`
--
ALTER TABLE `sectionsubjects`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vtms_sections`
--
ALTER TABLE `vtms_sections`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_UNIQUE` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bussinessaffairs`
--
ALTER TABLE `bussinessaffairs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `power_stations`
--
ALTER TABLE `power_stations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `problemstate`
--
ALTER TABLE `problemstate`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `radars`
--
ALTER TABLE `radars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sectionsubjects`
--
ALTER TABLE `sectionsubjects`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vtms_sections`
--
ALTER TABLE `vtms_sections`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
