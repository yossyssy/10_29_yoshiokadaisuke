-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2019 年 3 月 07 日 15:38
-- サーバのバージョン： 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gs_f02_db29`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `movinid` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `type` tinyint(4) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `bookmark_items`
--

CREATE TABLE `bookmark_items` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `bookmark_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `followers`
--

CREATE TABLE `followers` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `follow_user` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `indate`) VALUES
(1, '課題', 'テスト', '難しい', '2019-02-02 17:45:00'),
(2, 'プログラミング', '2019-02-03', '難しい', '2019-02-03 19:46:49'),
(3, 'プログラミング2', '2019-02-03', '難しい', '2019-02-03 19:54:23'),
(4, 'プログラミング', '2019-02-28', 'テスト', '2019-02-03 20:57:40');

-- --------------------------------------------------------

--
-- テーブルの構造 `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `store_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `keywords`
--

CREATE TABLE `keywords` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `password`, `picture`, `created`, `modified`) VALUES
(1, 'yoshi', 'yoshi@gmail.com', '7yoshi', 'meber.jpg', '2019-02-07 20:55:13', '2019-02-07 11:55:13');

-- --------------------------------------------------------

--
-- テーブルの構造 `movins`
--

CREATE TABLE `movins` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `php02_table`
--

CREATE TABLE `php02_table` (
  `id` int(12) NOT NULL,
  `task` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `image` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `php02_table`
--

INSERT INTO `php02_table` (`id`, `task`, `deadline`, `comment`, `image`, `indate`) VALUES
(2, '課題222', '2019-02-15', '難しいわ', NULL, '2019-02-02 15:21:43'),
(11, '課題', '2019-02-07', '頑張る', NULL, '2019-02-02 16:31:45'),
(12, 'DB接続', '2019-02-02', 'ここまで', NULL, '2019-02-02 16:34:08'),
(13, 'DB接続', '2019-02-02', 'ここまで', NULL, '2019-02-02 16:59:46'),
(14, 'DB接続', '2019-02-19', 'やばい', NULL, '2019-02-02 17:05:21'),
(15, 'DB接続', '2019-02-21', 'テスト', NULL, '2019-02-02 17:37:07'),
(16, '課題', '2019-02-09', 'test', NULL, '2019-02-09 14:45:20'),
(17, '課題', '2019-02-22', 'sss', NULL, '2019-02-16 17:07:44'),
(18, '課題', '2019-02-01', 'bbb', NULL, '2019-02-16 17:21:04'),
(19, 'aaa', '2019-03-15', 'aaa', 'upload/20190302070339d41d8cd98f00b204e9800998ecf8427e.jpg', '2019-03-02 16:03:39'),
(20, 'bbb', '2019-03-21', 'bbb', 'upload/20190302070525d41d8cd98f00b204e9800998ecf8427e.jpg', '2019-03-02 16:05:25'),
(21, 'ccc', '2019-03-22', 'ccc', 'upload/20190302070851d41d8cd98f00b204e9800998ecf8427e.jpg', '2019-03-02 16:08:51'),
(22, 'www', '2019-03-15', 'www', NULL, '2019-03-02 17:34:23'),
(23, 'kkk', '2019-03-21', 'ssss', NULL, '2019-03-02 17:35:02'),
(25, 'dddd', '2019-03-20', 'ddd', NULL, '2019-03-03 21:17:19'),
(26, '0304', '2019-03-04', '0304', 'upload/20190303232116d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-04 08:21:16'),
(27, 'ssss', '2019-03-04', 'ssss', NULL, '2019-03-04 19:39:45'),
(28, 'ffff', '2019-03-04', 'fffff', NULL, '2019-03-04 19:42:15'),
(29, '課題', '2019-03-04', 'あああ', 'upload/20190304105302d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-04 19:53:02'),
(30, '課題です', '2019-03-29', 'ssssss', 'upload/20190304105839d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-04 19:58:39'),
(31, '課題', '2019-03-12', '課題やります', NULL, '2019-03-05 20:42:06'),
(32, '写真1', '2019-03-05', '20:54', 'upload/20190305115419d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-05 20:54:19'),
(33, '画像ajaxでおくれた！', '2019-03-28', '20:55', 'upload/20190305115559d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-05 20:55:59'),
(34, '画像をjsonでおくれてるか', '2019-03-29', '画像をjsonでおくれてるか', NULL, '2019-03-05 21:02:58'),
(35, '21:15', '2019-03-05', '21:15', NULL, '2019-03-05 21:16:06'),
(36, '21:18', '2019-03-05', '21:18', NULL, '2019-03-05 21:19:01'),
(37, '21:21', '2019-03-05', '21:21', NULL, '2019-03-05 21:21:53'),
(38, '21:26', '2019-03-05', '21:26', NULL, '2019-03-05 21:26:35'),
(39, '21:30', '2019-03-05', '21:30', NULL, '2019-03-05 21:31:22'),
(40, '21:35', '2019-03-05', '21:35', NULL, '2019-03-05 21:35:49'),
(41, '21:38', '2019-03-05', '21:38', NULL, '2019-03-05 21:38:43'),
(42, '21:52', '2019-03-29', '21:52', NULL, '2019-03-05 21:52:20'),
(43, '21:53', '2019-03-05', '21:53', NULL, '2019-03-05 21:54:04'),
(44, '22:04', '2019-03-05', '22:04', NULL, '2019-03-05 22:05:10'),
(45, '22:09', '2019-03-05', '22:09', NULL, '2019-03-05 22:09:55'),
(46, '22:12', '2019-03-05', '22:12', NULL, '2019-03-05 22:12:36'),
(47, '22:14', '2019-03-05', '22:14', NULL, '2019-03-05 22:14:15'),
(48, '22:17', '2019-03-05', '22:17', NULL, '2019-03-05 22:17:13'),
(49, '22:17', '2019-03-05', '22:17', 'upload/20190305131800d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-05 22:18:00'),
(50, '22:22', '2019-03-05', '22:22', NULL, '2019-03-05 22:22:51'),
(51, '22:24', '2019-03-05', '22:24', NULL, '2019-03-05 22:24:38'),
(52, '課題', '2019-03-28', 'cccc', NULL, '2019-03-07 22:18:41'),
(53, '課題', '2019-03-21', 'cccc', NULL, '2019-03-07 22:58:47'),
(54, '課題', '2019-03-21', 'ccccc', NULL, '2019-03-07 23:00:32'),
(55, 'DB接続', '2019-03-22', 'vvv', NULL, '2019-03-07 23:01:01');

-- --------------------------------------------------------

--
-- テーブルの構造 `php_ajax_table`
--

CREATE TABLE `php_ajax_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `php_ajax_table`
--

INSERT INTO `php_ajax_table` (`id`, `name`, `comment`, `indate`) VALUES
(1, 'aaa', 'aaa', '2019-03-07 00:00:00'),
(2, 'bbb', 'bbb', '2019-03-07 00:00:00'),
(3, 'ccc', 'cccc', '2019-03-07 00:00:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `reply_post_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `posts`
--

INSERT INTO `posts` (`id`, `member_id`, `reply_post_id`, `message`, `created`, `modified`) VALUES
(1, 0, 0, 'kimuchi', '2019-02-07 20:59:22', '2019-02-07 11:59:22');

-- --------------------------------------------------------

--
-- テーブルの構造 `shares`
--

CREATE TABLE `shares` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `user_options`
--

CREATE TABLE `user_options` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `user_table`
--

CREATE TABLE `user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'yoshi', '1', '1', 1, 0),
(2, 'yoshi2', '2', '2', 0, 0),
(3, 'yossy3', '3', '3', 0, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `publish` datetime NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `videos`
--

INSERT INTO `videos` (`id`, `name`, `code`, `description`, `publish`, `created`, `modified`) VALUES
(5, 'CGじゃないぞ！！　イチローのミラクルスロー！【ユンケルCM】', 'q2Xshs3niys', '', '2014-10-13 00:00:00', '2014-10-13 06:55:57', '2014-10-13 06:55:57'),
(6, 'ふんわり鏡月『夏・うなじ』篇 15秒 石原さとみ サントリー CM', '04I2zjYNQ5k', '', '2014-10-13 00:10:00', '2014-10-13 06:56:43', '2014-10-13 06:56:43'),
(7, 'Nike Football Presents: 激戦上等 - Ronaldo, Neymar Jr., Rooney, Ibrahimović, Iniesta & more', '9-zPIT3Q6lI', '', '2014-10-13 00:00:00', '2014-10-13 06:58:04', '2014-10-13 06:58:04'),
(8, '【博多美女ん】ひろな July_Tue18(HD)', 'Se_dndYpqXg', '', '2014-10-13 00:00:00', '2014-10-13 06:58:47', '2014-10-13 06:58:47'),
(9, 'キリン CM 香川真司 「応援する者」篇 Shinji Kagawa', 'z8VWg9GUBWc', '', '2014-10-13 00:00:00', '2014-10-13 07:00:01', '2014-10-13 07:00:01'),
(10, 'GUARDIANS OF THE GALAXY - Official \"Extended Look\" Trailer #3 (2014) [HD]', 'aHUBlv5_K8Y', '', '2014-10-13 00:00:00', '2014-10-13 07:02:33', '2014-10-13 07:02:33'),
(11, 'RHYMESTER　『The Choice Is Yours』', 'OmjJWUM8VcA', '', '2014-12-29 16:42:00', '2014-12-29 16:42:53', '2014-12-29 16:42:53'),
(12, '安室奈美恵 / 「BRIGHTER DAY」MUSIC VIDEO -short ver.-', 'Dtkxu1HF6rk', '', '2014-12-29 16:45:00', '2014-12-29 16:45:47', '2014-12-29 16:45:47'),
(13, 'RHYMESTER　『ONCE AGAIN』', '0JxL3zWIWtQ', '', '2014-12-29 16:46:00', '2014-12-29 16:46:38', '2014-12-29 16:46:38'),
(14, 'ベイビーレイズ　暦の上ではディセンバー　MF', 'nw_PrmYaEac', '', '2014-12-29 16:49:00', '2014-12-29 16:49:24', '2014-12-29 16:49:24'),
(16, '『龍が如く０　誓いの場所』最新PV', 'TExQ0_7JaHM', '', '2015-03-21 16:35:00', '2015-03-21 16:36:10', '2015-03-21 16:36:10'),
(17, 'レキシ - 年貢 for you feat. 旗本ひろし、足軽先生', 'OJqNoFi5lcE', '', '2015-05-04 14:39:00', '2015-05-04 14:39:46', '2015-05-04 14:39:46'),
(20, 'Criss Angel BeLIEve: Criss Rips Bodies Apart (On Spike)', 'i5gK2MxGR0M', '', '2015-05-10 11:19:00', '2015-05-10 11:19:25', '2015-05-10 11:19:25'),
(21, 'JungGi Kim Drawing show in Angoulême BD festival 2015', 'kKtGVJiOC2Q', '', '2015-06-07 16:37:00', '2015-06-07 16:38:06', '2015-06-07 16:38:06'),
(22, 'Can You Walk on Water? (Non-Newtonian Fluid Pool)', 'D-wxnID2q4A', '', '2015-06-07 16:38:00', '2015-06-07 16:38:55', '2015-06-07 16:38:55'),
(23, 'Jackie Chan chopsticks portrait by REDhongyi', 'z-N3nb4_zjU', '', '2015-06-07 16:39:00', '2015-06-07 16:41:21', '2015-06-07 16:41:21'),
(24, 'Drop\'s 「未来」Music Video', 'Qk1IBkgbl98', '', '2015-06-07 16:42:00', '2015-06-07 16:42:57', '2015-06-07 16:42:57'),
(25, 'the POWER of Words～『ことばの力』', 'DhcrP1T9Um0', '', '2015-06-07 16:43:00', '2015-06-07 16:44:19', '2015-06-07 16:44:19'),
(26, 'The Web We Want: An Open Letter', 'Xm5i5kbIXzc', '', '2015-06-07 16:45:00', '2015-06-07 16:45:15', '2015-06-07 16:45:15'),
(27, 'Out of Sight (敲敲)', '4qCbiCxBd2M', '', '2015-06-07 16:45:00', '2015-06-07 16:46:01', '2015-06-07 16:46:01'),
(28, 'Kankudai by Mahiro(7-year-old girl)', 'DZlUgkTGeAQ', '', '2015-06-07 16:46:00', '2015-06-07 16:46:56', '2015-06-07 16:46:56'),
(29, 'Going to School', 'kP7w1XYqq0M', '', '2015-06-07 16:47:00', '2015-06-07 16:47:46', '2015-06-07 16:47:46'),
(30, 'Zoochosis: Escalator', '_xf3ELqb6kc', '', '2015-06-07 16:48:00', '2015-06-07 16:48:38', '2015-06-07 16:48:38'),
(31, 'Lily\'s Disneyland Surprise!', 'OOpOhlGiRTM', '', '2015-06-07 16:56:00', '2015-06-07 16:56:56', '2015-06-07 16:56:56'),
(32, 'Holland\'s Got Talent 2013 - Amira Willighagen (9)', 'VBMfgLvRZJs', '', '2015-06-07 16:57:00', '2015-06-07 16:58:01', '2015-06-07 16:58:01'),
(33, 'I Forgot My Phone', 'OINa46HeWg8', '', '2015-06-07 16:58:00', '2015-06-07 16:58:39', '2015-06-07 16:58:39'),
(35, 'CMドラマ　ついに1年越しで彼女がOK編　完全版', 'uHR216Ro1j4', '', '2015-06-07 16:59:00', '2015-06-07 17:00:09', '2015-06-07 17:00:09'),
(36, '#ViolenceIsViolence: Domestic abuse advert Mankind', 'u3PgH86OyEM', '', '2015-06-07 17:00:00', '2015-06-07 17:00:45', '2015-06-07 17:00:45'),
(37, 'Nico\'s Story', '10GD9inHQbI', '', '2015-06-07 17:01:00', '2015-06-07 17:01:27', '2015-06-07 17:01:27'),
(38, '4 Year Olds Bucket List - Water is Life', 'XYf82F3CHYo', '', '2015-06-07 17:01:00', '2015-06-07 17:02:04', '2015-06-07 17:02:04'),
(39, 'Cutest Karate Kids Taekwondo Fight Ever - Martial Artist Battle', '4kPophWJKhk', '', '2015-06-07 17:02:00', '2015-06-07 17:02:44', '2015-06-07 17:02:44'),
(40, 'Broccoli Samurai - Mario Kart Fun', 'vBUULD_L0Uo', '', '2015-06-07 17:03:00', '2015-06-07 17:03:20', '2015-06-07 17:03:20'),
(41, 'Microsoft: Productivity Future Vision', 'w-tFdreZB94', '', '2015-06-07 17:03:00', '2015-06-07 17:03:53', '2015-06-07 17:03:53'),
(42, 'A week in the life of a Tokyo salary man【字幕付き】', 'po8IPh64rVM', '', '2015-06-07 17:05:00', '2015-06-07 17:05:33', '2015-06-07 17:05:33'),
(43, 'Riding the White Line', 'GzhlDnTv0pc', '', '2015-06-07 17:05:00', '2015-06-07 17:06:09', '2015-06-07 17:06:09'),
(44, 'Japanese Flip Books', '1e1GKG-Gmjk', '', '2015-06-07 17:06:00', '2015-06-07 17:06:42', '2015-06-07 17:06:42'),
(45, '毛皮反対プロジェクト', '99yWAjKcLdM', '', '2015-06-07 17:06:00', '2015-06-07 17:07:14', '2015-06-07 17:07:14'),
(46, 'The New Tube for London', 'Z3Q0FZUKHkY', '', '2015-06-07 17:07:00', '2015-06-07 17:07:41', '2015-06-07 17:07:41'),
(47, 'Samurai Girl ~ One Girl\'s Story of becoming a Samurai（サムライガール〜相馬野馬追）', 'rLpDpP3S38k', '', '2015-06-07 17:08:00', '2015-06-07 17:08:35', '2015-06-07 17:08:35'),
(48, 'Green Lake, Austria', 'Qkgc1ljb144', '', '2015-06-07 17:08:00', '2015-06-07 17:09:09', '2015-06-07 17:09:09'),
(49, '映画『フルスロットル』ゼロG＝無重力のパルクール映像 feat.ZEN', 'F8L3rPZefBc', '', '2015-06-07 17:09:00', '2015-06-07 17:09:40', '2015-06-07 17:09:40'),
(50, 'Brunettes Shoot Blondes - Knock Knock (Official Video) - Music on 14 Apple Screens', 'RC_0NzJ2mWA', '', '2015-06-07 17:09:00', '2015-06-07 17:10:11', '2015-06-09 22:57:28'),
(51, 'Most Epic Nerf War in History!', 'bKG2WAkgyyU', '', '2015-06-07 17:10:00', '2015-06-07 17:10:44', '2015-06-07 17:10:44'),
(52, 'AMAZING STREET HACK', '1hpU_Neg1KA', '', '2015-06-07 17:11:00', '2015-06-07 17:11:17', '2015-06-07 17:11:17'),
(53, 'LOVE JAPAN', 'MbXugf-02_o', '', '2015-06-07 17:11:00', '2015-06-07 17:11:46', '2015-06-07 17:11:46'),
(54, 'Apple - Holiday - TV Ad - Misunderstood', 'nhwhnEe7CjE', '', '2015-06-07 17:12:00', '2015-06-07 17:12:24', '2015-06-07 17:12:24'),
(55, 'Navdy: Feels Like Driving In The Future', 'pKL4PJICS40', '', '2015-06-07 17:12:00', '2015-06-07 17:13:07', '2015-06-07 17:13:07'),
(56, 'The Best Mentawai Islands Surf Video from my drone, Phyllis. June 2014, by Paul Borrud', 'kLg5t6xhFP4', '', '2015-06-07 17:13:00', '2015-06-07 17:13:38', '2015-06-07 17:13:38'),
(57, 'The world-changing sensor we saw at CES', '4VtXvj4X0CE', '', '2015-06-07 17:13:00', '2015-06-07 17:14:26', '2015-06-07 17:14:26'),
(58, 'THE FOUR PLAYERS: The Fixer', 'jBRVSdwpjzo', '', '2015-06-07 17:14:00', '2015-06-07 17:15:04', '2015-06-07 17:15:04'),
(59, 'MAN', 'WfGMYdalClU', '', '2015-06-07 17:15:00', '2015-06-07 17:15:37', '2015-06-07 17:15:37'),
(60, 'GoPro: Backflip Over 72ft Canyon - Kelly McGarry Red Bull Rampage 2013', 'x76VEPXYaI0', '', '2015-06-07 17:15:00', '2015-06-07 17:16:14', '2015-06-07 17:16:14'),
(61, 'Emma Watson Unmasks', 'vfIHsurwTMo', '', '2015-06-07 17:16:00', '2015-06-07 17:17:00', '2015-06-07 17:17:00'),
(62, 'Brushy One String - Chicken in The Corn (Official Video)', 'E8H-67ILaqc', '', '2015-06-07 17:17:00', '2015-06-07 17:17:30', '2015-06-09 22:56:50'),
(63, 'Around the World in 360° Degrees - 3 Year Epic Selfie', 'VTlXttQL_Yk', '', '2015-06-07 17:17:00', '2015-06-07 17:17:59', '2015-06-07 17:17:59'),
(64, 'How to Open a Beer with Paper - CHOW Tip', '00DWLkVLbd4', '', '2015-06-07 17:18:00', '2015-06-07 17:18:32', '2015-06-07 17:18:32'),
(65, 'iPhone (MetroGnome Remix)', 'M3h00M9dcj4', '', '2015-06-07 17:18:00', '2015-06-07 17:19:05', '2015-06-07 17:19:05'),
(66, 'Jリーグ×キャプテン翼 ＃３　ツインシュート　Captain Tsubasa super shot', 'V2LzbxRzkdA', '', '2015-06-07 17:19:00', '2015-06-07 17:19:46', '2015-06-07 17:19:46'),
(67, 'One Camper\'s Incredible Encounter With an Alaskan Brown Bear', '0cfBVCNGMAg', '', '2015-06-07 17:20:00', '2015-06-07 17:20:35', '2015-06-07 17:20:35'),
(68, 'OK Go - I Won\'t Let You Down - Official Video', 'u1ZB_rGFyeU', '', '2015-06-07 17:20:00', '2015-06-07 17:21:03', '2015-06-07 17:21:03'),
(69, 'Marten Horák - Reality?', 'YSqmY6r1X8M', '', '2015-06-07 17:21:00', '2015-06-07 17:21:33', '2015-06-07 17:21:33'),
(70, 'The Unbelievable Game - Pepsi Max. Unbelievable #LiveForNow', 'jkUcFF4VmO4', '', '2015-06-07 17:21:00', '2015-06-07 17:22:12', '2015-06-07 17:22:12'),
(71, 'Go Freebord!', 'XMj8YTeVtbk', '', '2015-06-07 17:22:00', '2015-06-07 17:22:43', '2015-06-07 17:22:43'),
(72, 'A Second a Day from Birth.', 'ZtgzTr8iopk', '', '2015-06-07 17:23:00', '2015-06-07 17:23:19', '2015-06-07 17:23:19'),
(73, 'Driscoll Middle School Trick Play', '0UIdI8khMkw', '', '2015-06-07 17:23:00', '2015-06-07 17:23:53', '2015-06-07 17:23:53'),
(74, 'معقوله المقطع ده هيخليك تضحك من غير ما تحس !! وتحدي', 'NZqUvFkBj9g', '', '2015-06-07 17:24:00', '2015-06-07 17:24:19', '2015-06-07 17:24:19'),
(75, 'Meet South Africa (New South African Tourism brand video)', 'zv1MU_Nh8ck', '', '2015-06-07 17:24:00', '2015-06-07 17:24:44', '2015-06-07 17:24:44'),
(76, 'This Poor Family Gets Shot with 3,192 Paintballs in 5.3 Seconds to Prove a Powerful Point -VidAngel', 'B7t85SESTXI', '', '2015-06-07 17:25:00', '2015-06-07 17:25:13', '2015-06-07 17:25:13'),
(77, 'Coca-Cola Friendly Twist', 't9cmoT_wb0A', '', '2015-06-07 17:25:00', '2015-06-07 17:25:38', '2015-06-07 17:25:38'),
(78, 'ドコモ地図ナビ「3D地図」サービス紹介', 'FHM0EYEf-b8', '', '2015-06-07 17:25:00', '2015-06-07 17:26:14', '2015-06-07 17:26:14'),
(79, 'Wood spiny lobster', 'nD53blQl1no', '', '2015-06-07 17:26:00', '2015-06-07 17:26:36', '2015-06-07 17:26:36'),
(80, 'dtac \"the power of love\" TVC (Official HD): โฆษณาดีแทค', 'PmCDxY2lJAE', '', '2015-06-07 17:26:00', '2015-06-07 17:27:18', '2015-06-09 22:55:55'),
(81, 'World Vision - Blanket | YouTube Commercial', 'vMVYv8lsXqI', '', '2015-06-07 17:28:00', '2015-06-07 17:28:15', '2015-06-07 17:28:15'),
(82, 'もしもあなたがあと5分しか生きられなかったら（日本語字幕）', '5dZuRWM9CKE', '', '2015-06-07 17:28:00', '2015-06-07 17:28:57', '2015-06-07 17:28:57'),
(83, 'Liseberg - The fun queue (case)', 'C61pT-hEJXM', '', '2015-06-07 17:29:00', '2015-06-07 17:29:29', '2015-06-07 17:29:29'),
(84, 'Merrell virtual hike', 'efd6WhPmTyU', '', '2015-06-07 17:29:00', '2015-06-07 17:30:12', '2015-06-07 17:30:12'),
(85, 'CLAIMS YOUR TERRITORY. The new BMW X5 M and BMW X6 M.', '8QJigHtz40E', '', '2015-06-07 17:30:00', '2015-06-07 17:30:35', '2015-06-07 17:30:35'),
(86, 'Volvo Trucks - The Epic Split feat. Van Damme (Live Test 6)', 'M7FIvfx5J10', '', '2015-06-07 17:30:00', '2015-06-07 17:30:57', '2015-06-07 17:30:57'),
(87, 'ムヒカ大統領の衝撃的なスピーチ【世界で最も貧乏な大統領】', 'Q7aJcf_Lexs', '', '2015-06-07 17:31:00', '2015-06-07 17:31:29', '2015-06-07 17:31:29'),
(88, 'Pixel extraits', 'B2OL_RxJKlQ', '', '2015-06-07 17:31:00', '2015-06-07 17:31:50', '2015-06-07 17:31:50'),
(89, 'アイサイトでの事故回避例', '8Hp0H-auFXk', '', '2015-06-07 17:32:00', '2015-06-07 17:32:13', '2015-06-07 17:32:13'),
(90, '映画『インターステラー』スペシャル映像【HD】2014年11月22日公開', 'qZZ9jRan9eo', '', '2015-06-07 17:32:00', '2015-06-07 17:32:46', '2015-06-07 17:32:46'),
(91, '映画『マッドマックス 怒りのデス・ロード』予告1【HD】2015年6月20日公開', 'YXhJGkZzS-4', '', '2015-06-07 17:33:00', '2015-06-07 17:33:09', '2015-06-07 17:33:09'),
(92, 'ゲーム『バットマン：アーカム・ナイト』2015.7.2発売決定告知トレーラー', '7XTdjmBjkNw', '', '2015-06-07 17:33:00', '2015-06-07 17:33:39', '2015-06-07 17:33:39'),
(93, 'Kinect-Powered Cube Unveiled at Decibel Festival', '1jzHcXZFJMw', '', '2015-06-07 17:33:00', '2015-06-07 17:34:07', '2015-06-07 17:34:07'),
(94, 'Mr.Knocky ミスターノッキー', 'DcYUfO-5_Dc', '', '2015-06-07 17:34:00', '2015-06-07 17:34:46', '2015-06-07 17:34:46'),
(95, 'Nike Football: Winner Stays. ft. Ronaldo, Neymar Jr., Rooney, Ibrahimović, Iniesta & more', '3XviR7esUvo', '', '2015-06-07 17:34:00', '2015-06-07 17:35:11', '2015-06-07 17:35:11'),
(96, '「進撃の巨人」予告', '2X0i4gnbBOA', '', '2015-06-07 17:35:00', '2015-06-07 17:35:45', '2015-06-07 17:35:45'),
(97, 'GoPro Footage From U.S. EVA #30', '26QWMMT1c8Y', '', '2015-06-07 17:35:00', '2015-06-07 17:36:11', '2015-06-07 17:36:11'),
(98, 'Traffic in Frenetic HCMC, Vietnam', '08OpjYn1BlY', '', '2015-06-07 17:36:00', '2015-06-07 17:37:07', '2015-06-07 17:37:07'),
(99, '「バケモノの子」予告', 'BTOWVxi2KC8', '', '2015-06-07 17:37:00', '2015-06-07 17:37:33', '2015-06-07 17:37:33'),
(100, 'Watch a US Navy aircraft carrier launch all its F-18 fighter jets', 'c0vKjewofLU', '', '2015-06-07 17:37:00', '2015-06-07 17:38:11', '2015-06-07 17:38:11'),
(101, 'Amazing Drone Footage of Nubian Pyramids', 'O7tAuPi_azU', '', '2015-06-07 17:38:00', '2015-06-07 17:38:39', '2015-06-07 17:38:39'),
(102, 'Hoverboard in Real Life! In 4K!', 'gMaDhkNJA2g', '', '2015-06-07 17:46:00', '2015-06-07 17:39:05', '2015-12-29 17:45:40'),
(103, '[HD]ベッカム、ファウルで横たわる選手にボールをキック、大絶賛される', 'wmyPmQSjA0c', '', '2015-06-07 17:39:00', '2015-06-07 17:39:35', '2015-06-07 17:39:35'),
(104, 'ダヴ　フランスのCM　シャンプーの効果でロン毛男性が女性に見えちゃう！？', 'gOnBUHqaic4', '', '2015-06-07 17:39:00', '2015-06-07 17:40:04', '2015-06-07 17:40:04'),
(105, '【美技】美しすぎるイチロースーパープレイ集', 'Le2VLDFBIs0', '', '2015-06-07 17:40:00', '2015-06-07 17:40:35', '2015-06-07 17:40:35'),
(106, '【トップ10】フェデラーの天才的フェイクショット', 'ZN5NOr_JI5w', '', '2015-06-07 17:40:00', '2015-06-07 17:41:02', '2015-06-07 17:41:02'),
(107, 'The Tale of The Princess Kaguya Official US Release Trailer #1 (2014) - Studio Ghibli Film HD', 'tM6hcHp0_kU', '', '2015-06-07 17:41:00', '2015-06-07 17:41:24', '2015-06-07 17:41:24'),
(108, 'ペルソナ５　PV#01', 'oc_9r4wifFc', '', '2015-06-07 17:41:00', '2015-06-07 17:41:50', '2015-06-07 17:41:50'),
(109, 'Miyavi Performs \'Let Go\'', '1vHQnZvFOEc', '', '2015-06-07 17:42:00', '2015-06-07 17:42:35', '2015-06-09 22:55:18'),
(110, 'MIYAVI - The Others', 'PCco_YBsU3w', '', '2015-06-07 17:42:00', '2015-06-07 17:42:59', '2015-06-07 17:42:59'),
(111, 'Daft Punk Get Lucky The Grammy 2014', 'RSaTCcb2eXI', '', '2015-06-07 17:43:00', '2015-06-07 17:43:23', '2015-06-07 17:43:23'),
(112, 'AC Milan vs. Super Car by TOYO TIRES', 'M092PBHytC8', '', '2015-06-07 17:46:00', '2015-06-07 17:43:43', '2015-12-29 17:44:43'),
(113, 'The talking window', 'azwL5eoE5aI', '', '2015-06-07 17:43:00', '2015-06-07 17:44:16', '2015-06-07 17:44:16'),
(115, 'DICK\'S Sporting Goods Baseball Commercial - Every Pitch', 'wpbU8vlGlzk', '', '2015-06-07 17:45:00', '2015-06-07 17:45:13', '2015-06-07 17:45:13'),
(116, 'Honda \"Hands\"', 'Dxy4n0UT82o', '', '2015-06-07 17:45:00', '2015-06-07 17:45:34', '2015-06-07 17:45:34'),
(120, 'Guilty dog apologizes baby for stealing her toy:it is never too late for apologize for friends', 'eV8k2cpAptU', '', '2015-12-29 17:16:00', '2015-12-29 17:16:38', '2015-12-29 17:16:38'),
(121, 'Most Shocking Second a Day Video', 'RBQ-IoHfimQ', '', '2015-12-29 17:16:00', '2015-12-29 17:16:54', '2015-12-29 17:16:54'),
(122, '忍者女子高生 | 制服で大回転 | japanese school girl chase #ninja', 'qHFr1_md3Ok', '', '2015-12-29 17:30:00', '2015-12-29 17:17:06', '2015-12-29 17:43:56'),
(123, '福岡・西中洲「和田門」のレモンステーキがジュージュー！', '0WMua2zOuxg', '福岡・西中洲「和田門」のレモンステーキがジュージュー！', '2019-02-04 22:45:40', '2019-02-04 22:45:40', NULL),
(125, '元祖博多めんたい重', 'CT4Fi2KLhdk', '西中洲大通り「めんたい重」', '2019-02-07 19:30:18', '2019-02-07 19:30:18', NULL),
(126, '福岡 もつ鍋「梟 ふくろう」', 'W7RK-f09g-I', '福岡県博多で人気の もつ鍋屋、梟さん。https://jiyuzine.com/trip/post_941/', '2019-02-07 19:31:52', '2019-02-07 19:31:52', NULL),
(127, 'お通しが人気！ 福岡・春吉「食堂 えぶりお」の目と舌で満足する創作和食', 'yPWSDAMssWo', 'いいよ', '2019-02-07 19:32:46', '2019-02-07 19:32:46', NULL),
(128, 'たべごころ　食人ごころ　『レストラン アレナ』', 'PtQwMD_jmK4', 'たべごころ　毎週土曜日ごご5時放送\r\n\r\nhttp://rkb.jp/tabegocoro/\r\n\r\n (2018年4月21日ＯＡ)\r\nレストラン アレナ\r\nお問い合わせ\r\n住　所：福岡市中央区西中洲１０−３NB.L.D１階', '2019-02-07 19:34:19', '2019-02-07 19:34:19', NULL),
(129, '九州のうまいものに乾杯！福岡篇', 'YkoTzj3GJss', '美食の街・福岡の名店を舞台に、店主自慢の「うまいもの」をご紹介する、霧島酒造 芋麹焼酎「吉助」ＴＶＣＭシリーズ。', '2019-02-07 19:35:41', '2019-02-07 19:35:41', NULL),
(130, '寿司　福岡・西中洲　河庄本店', '1D4GcQWt-qY', '福岡・西中洲の「河庄本店」です。王貞治ソフトバンクホークス会長の行きつけのお寿司屋さんとして紹介されますが、老舗の名店であり高級寿司割烹のお店です。', '2019-02-07 19:36:44', '2019-02-07 19:36:44', NULL),
(131, '炭火焼鶏　黒船　西中洲店', 'bExkgkInvQI', '住／福岡市中央区西中洲11‐5　セブンイレブン2Ｆ\r\n電話／092-718‐0860\r\n営／17:00～24:00（ＬＯ23:30）\r\n休／無休\r\nキャパ／140席（最大宴会人数80名）\r\n※天神店もあります。お気軽にお問い合わせ下さい。\r\n092-737-0833\r\n福岡市中央区天神2-6-27　天神東宝2Ｆ', '2019-02-07 19:38:24', '2019-02-07 19:38:24', NULL),
(132, '藤よし　西中洲', 'yFeAorjQs1Y', '西中洲の藤よし', '2019-02-07 19:39:42', '2019-02-07 19:39:42', NULL),
(133, '博多ほたる 西中洲本店 OPEN告知', 'qZlFyAkkOqY', '博多ほたる 西中洲', '2019-02-07 19:40:41', '2019-02-07 19:40:41', NULL),
(134, '福岡・西中洲「和田門」のレモンステーキがジュージュー！', '0WMua2zOuxg', '美味しいね', '2019-02-22 00:00:00', '2019-02-07 22:24:11', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookmark_items`
--
ALTER TABLE `bookmark_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movins`
--
ALTER TABLE `movins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `php02_table`
--
ALTER TABLE `php02_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `php_ajax_table`
--
ALTER TABLE `php_ajax_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_options`
--
ALTER TABLE `user_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookmark_items`
--
ALTER TABLE `bookmark_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movins`
--
ALTER TABLE `movins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `php02_table`
--
ALTER TABLE `php02_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `php_ajax_table`
--
ALTER TABLE `php_ajax_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_options`
--
ALTER TABLE `user_options`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
