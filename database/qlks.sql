-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 10, 2022 lúc 10:15 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlks`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datphong`
--

CREATE TABLE `datphong` (
  `id` int(10) UNSIGNED NOT NULL,
  `phong_id` int(10) UNSIGNED NOT NULL,
  `khachhang_id` int(10) UNSIGNED NOT NULL,
  `tinhtrang` int(10) NOT NULL DEFAULT 0,
  `payment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `magiaodich` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngaydat` datetime NOT NULL,
  `ngaytra` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `datphong`
--

INSERT INTO `datphong` (`id`, `phong_id`, `khachhang_id`, `tinhtrang`, `payment`, `magiaodich`, `ngaydat`, `ngaytra`, `created_at`, `updated_at`) VALUES
(15, 65, 32, 1, NULL, NULL, '2021-05-19 00:00:00', '2021-05-22 00:00:00', '2021-12-01 07:09:46', '2021-12-01 07:09:46'),
(28, 62, 32, 1, NULL, NULL, '2021-05-20 00:00:00', '2021-05-21 00:00:00', '2021-12-01 07:09:46', '2021-12-01 07:09:46'),
(29, 65, 32, 1, NULL, NULL, '2021-05-21 00:00:00', '2021-05-22 00:00:00', '2021-12-01 07:09:46', '2021-12-01 07:09:46'),
(30, 66, 50, 1, NULL, NULL, '2021-05-24 00:00:00', '2021-05-30 00:00:00', '2021-12-01 07:09:46', '2021-12-01 07:09:46'),
(31, 58, 51, 1, NULL, NULL, '2021-05-25 00:00:00', '2021-05-26 00:00:00', '2021-12-01 07:09:46', '2021-12-01 07:09:46'),
(46, 58, 60, 1, NULL, NULL, '2021-05-28 00:00:00', '2021-05-31 00:00:00', '2021-12-01 07:09:46', '2021-12-01 07:09:46'),
(48, 67, 60, 1, NULL, NULL, '2021-05-29 00:00:00', '2021-05-31 00:00:00', '2021-12-01 07:09:46', '2021-12-01 07:09:46'),
(49, 66, 60, 1, NULL, NULL, '2021-05-29 00:00:00', '2021-05-31 00:00:00', '2021-12-01 07:09:46', '2021-12-01 07:09:46'),
(50, 65, 60, 0, NULL, NULL, '2021-05-29 00:00:00', '2021-05-31 00:00:00', '2021-12-01 07:09:46', '2021-12-01 07:09:46'),
(51, 61, 32, 1, NULL, NULL, '2021-05-28 00:00:00', '2021-05-30 00:00:00', '2021-12-01 07:09:46', '2021-12-01 07:09:46'),
(52, 62, 32, 1, NULL, NULL, '2021-05-28 00:00:00', '2021-05-31 00:00:00', '2021-12-01 07:09:46', '2021-12-01 07:09:46'),
(53, 58, 60, 1, NULL, NULL, '2021-05-28 00:00:00', '2021-05-31 00:00:00', '2021-12-01 07:09:46', '2021-12-01 07:09:46'),
(54, 60, 67, 1, NULL, NULL, '2021-11-28 00:00:00', '2021-11-29 00:00:00', '2021-12-01 07:09:46', '2021-12-01 07:09:46'),
(55, 60, 69, 0, NULL, NULL, '2021-11-28 00:00:00', '2021-11-29 00:00:00', '2021-12-01 07:09:46', '2021-12-01 07:09:46'),
(58, 61, 74, 1, NULL, NULL, '2021-11-29 00:00:00', '2021-11-30 00:00:00', '2021-12-01 07:09:46', '2021-12-01 02:55:20'),
(59, 66, 75, 0, NULL, NULL, '2021-12-03 00:00:00', '2021-12-06 00:00:00', '2021-12-03 01:09:58', '2021-12-03 01:09:58'),
(60, 62, 76, 1, 'atm', 'e5jzl8', '2021-12-15 00:00:00', '2021-12-23 00:00:00', '2021-12-14 23:44:07', '2021-12-15 00:42:01'),
(61, 58, 77, 1, 'momo', 'kllksh', '2021-12-26 00:00:00', '2021-12-30 00:00:00', '2021-12-26 02:42:29', '2021-12-26 02:45:17'),
(62, 62, 78, 1, 'atm', 'ee1o8f', '2022-01-10 00:00:00', '2022-01-11 00:00:00', '2022-01-09 07:32:35', '2022-01-09 07:33:04'),
(63, 67, 79, 1, 'momo', 'biakjl', '2022-01-10 00:00:00', '2022-01-11 00:00:00', '2022-01-09 07:45:42', '2022-01-09 07:46:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `id` int(10) UNSIGNED NOT NULL,
  `tendichvu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `soluong` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `donvi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`id`, `tendichvu`, `gia`, `soluong`, `donvi`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Number One', 50000, 1, 'Chai', '2019-07-18/d47a6d33fa00c1333989304166883f79.jpg', 1, '2021-12-01 07:09:30', '2022-01-09 08:04:10'),
(6, 'Trà Doctor Thanh', 50000, 1, 'Chai', '2019-05-24/3cef88d1b3c1ca615defde6c8200c571.jpg', 1, '2021-12-01 07:09:30', '2022-01-09 08:04:24'),
(7, 'Giặt là', 150000, 1, 'Lần', '2019-05-24/acdf7456889b11c7cc15c7e81eb34e36.jpg', 1, '2021-12-01 07:09:30', '2022-01-09 08:04:34'),
(9, 'Thuê xe máy', 1500000, 1, 'Ngày', '2019-05-27/2133f4b3bcd815727b3f032f8440008b.jpg', 1, '2021-12-01 07:09:30', '2022-01-09 08:04:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(10) UNSIGNED NOT NULL,
  `thuephong_id` int(10) UNSIGNED DEFAULT NULL,
  `khachhang_id` int(10) UNSIGNED DEFAULT NULL,
  `tiendichvu` bigint(20) DEFAULT NULL,
  `tienphong` bigint(20) DEFAULT NULL,
  `tongtien` bigint(20) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `thuephong_id`, `khachhang_id`, `tiendichvu`, `tienphong`, `tongtien`, `user_id`, `created_at`, `updated_at`) VALUES
(15, 25, 32, 0, 100000, 100000, 28, '2021-10-01 07:08:37', '2021-12-01 07:08:37'),
(16, 22, 32, 1212121, 200000, 1412121, 28, '2021-10-01 07:08:37', '2021-12-01 07:08:37'),
(17, 26, 32, 30000, 400000, 430000, 28, '2021-10-01 07:08:37', '2021-12-01 07:08:37'),
(18, 27, 50, 0, 3000, 3000, 28, '2021-10-01 07:08:37', '2021-12-01 07:08:37'),
(19, 28, 51, 0, 3000, 3000, 28, '2021-08-01 07:08:37', '2021-12-01 07:08:37'),
(20, 29, 52, 30000, 3000, 33000, 28, '2021-08-01 07:08:37', '2021-12-01 07:08:37'),
(21, 30, 32, 0, 3000, 3000, 28, '2021-09-01 07:08:37', '2021-12-01 07:08:37'),
(22, 31, 32, 15000, 3000, 18000, 28, '2021-07-01 07:08:37', '2021-12-01 07:08:37'),
(23, 33, 60, 0, 3000, 3000, 28, '2021-11-01 07:08:37', '2021-12-01 07:08:37'),
(24, 37, 66, 0, 100000, 100000, 28, '2021-11-01 07:08:37', '2021-12-01 07:08:37'),
(25, 36, 65, 0, 3000, 3000, 28, '2021-11-01 07:08:37', '2021-12-01 07:08:37'),
(26, 38, 60, 0, 3000, 3000, 28, '2021-12-01 07:08:37', '2021-12-01 07:08:37'),
(27, 40, 60, 20000, 3000, 23000, 28, '2021-12-01 07:08:37', '2021-12-01 07:08:37'),
(28, 34, 60, 20000, 16500000, 165200, 28, '2020-12-01 07:08:37', '2021-12-01 07:08:37'),
(29, 35, 32, 20000, 3000, 2300000, 28, '2020-10-01 07:08:37', '2021-12-01 07:08:37'),
(30, 39, 32, 0, 27000000, 270000, 1, '2021-12-01 02:11:24', '2021-12-01 02:11:24'),
(31, 43, 76, 0, 26000000, 17000000, 1, '2022-01-09 07:31:52', '2022-01-09 07:31:52'),
(32, 45, 78, 50000, 1000000, 50000, 1, '2022-01-09 07:34:55', '2022-01-09 07:34:55'),
(33, 46, 79, 0, 20000000, 10000000, 1, '2022-01-09 07:53:19', '2022-01-09 07:53:19'),
(34, 44, 77, 20000, 45000000, 27040000, 1, '2022-01-09 07:55:52', '2022-01-09 07:55:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenkhachhang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cmnd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diachi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dienthoai` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gioitinh` int(11) DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `tenkhachhang`, `cmnd`, `diachi`, `dienthoai`, `gioitinh`, `email`, `username`, `password`, `created_at`, `updated_at`, `user_id`, `remember_token`, `facebook_id`) VALUES
(32, 'Quí', '131231313123', 'BT', '32313131', 0, 'quidz201@gmail.com', 'khachhang1', '$2y$10$yyIi5SDXM5uSuZq9lLNqOexjXfPjl99ImfEPb76EKy3nOJ8WpWop6', '2021-12-01 07:08:20', '2021-12-01 07:08:20', 28, 'uDmTwqMmu5ARPAnAX0qj92mlqXYpejM1WppqY1BcJv2zNsS8kLi0brS8D9jo', NULL),
(33, 'Khachhang03', '12', '12', '12', 0, NULL, NULL, NULL, '2021-12-01 07:08:20', '2021-12-01 07:08:20', 28, NULL, NULL),
(42, 'Trần văn a', '1111', '1111', '1111', 0, NULL, NULL, NULL, '2021-12-01 07:08:20', '2021-12-01 07:08:20', 28, NULL, NULL),
(50, 'Nguyễn Văn B', '10101340099', NULL, '0964722616', NULL, NULL, NULL, NULL, '2021-12-01 07:08:20', '2021-12-01 07:08:20', NULL, NULL, NULL),
(51, 'Lê văn c', '1111', NULL, '3178525140', 1, NULL, NULL, NULL, '2021-12-01 07:08:20', '2021-12-01 07:08:20', 28, NULL, NULL),
(52, 'khachhang04', '111111', NULL, '3178525140', 0, NULL, NULL, NULL, '2021-12-01 07:08:20', '2021-12-01 07:08:20', 28, NULL, NULL),
(60, 'khachhangtest', '1001111', NULL, '1111', NULL, NULL, NULL, NULL, '2021-12-01 07:08:20', '2021-12-01 07:08:20', NULL, 'G81dE6Fpwo55aUCQjyPhE2fFr0vJhyNvLODfGuLg37arZ3PNy8cuDNQUQuEP', '111026130143600'),
(65, 'dsada111', '111', NULL, '0964989098', 0, NULL, NULL, NULL, '2021-12-01 07:08:20', '2021-12-01 07:08:20', 28, NULL, NULL),
(66, 'qnpppp', '1111', NULL, '0964989098', 1, NULL, NULL, NULL, '2021-12-01 07:08:20', '2021-12-01 07:08:20', 28, NULL, NULL),
(67, 'qnp', '123456789', NULL, '0123456789', NULL, 'npnqpnqpnspnp', NULL, NULL, '2021-12-01 07:08:20', '2021-12-01 07:08:20', NULL, NULL, NULL),
(69, 'qnp111', 'qnpqnpqnspnqp', NULL, 'nqp', NULL, 'npnqpnqpnspnp@gmail.com', NULL, NULL, '2021-12-01 07:08:20', '2021-12-01 07:08:20', NULL, NULL, NULL),
(74, 'Nguyễn Phú Quí', '123456789', NULL, '123456789', NULL, 'npq171@gmail.com', NULL, NULL, '2021-12-01 07:08:20', '2021-12-01 07:08:20', NULL, NULL, NULL),
(75, 'Nguyễn Văn A', '1233455', NULL, '12345678', NULL, 'npq171@gmail.com', NULL, NULL, '2021-12-03 01:09:58', '2021-12-03 01:09:58', NULL, NULL, NULL),
(76, 'khachhhangggg', '123456789', NULL, '098765432', NULL, '123456@gmail.com', NULL, NULL, '2021-12-14 23:44:07', '2021-12-14 23:44:07', NULL, NULL, NULL),
(77, 'ádấ', '123123123', NULL, '12312312312', NULL, '12312312@gmai.lc.om', NULL, NULL, '2021-12-26 02:42:29', '2021-12-26 02:42:29', NULL, NULL, NULL),
(78, '123', '123', NULL, '123', NULL, '123@123.123', NULL, NULL, '2022-01-09 07:32:35', '2022-01-09 07:32:35', NULL, NULL, NULL),
(79, '123', '123', NULL, '123', NULL, '123@123', NULL, NULL, '2022-01-09 07:45:42', '2022-01-09 07:45:42', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaiphong`
--

CREATE TABLE `loaiphong` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenloaiphong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giatien` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaiphong`
--

INSERT INTO `loaiphong` (`id`, `tenloaiphong`, `slug`, `giatien`, `created_at`, `updated_at`) VALUES
(2, 'Phòng Chuẩn', 'phong-chuan', 1000000, '2021-12-01 07:07:54', '2021-12-01 00:58:26'),
(3, 'Phòng Vip', 'phong-vip', 2000000, '2021-12-01 07:07:54', '2021-12-01 00:58:34'),
(5, 'Phòng Đôi', 'phong-doi', 3000000, '2021-12-01 07:07:54', '2021-12-01 00:58:43'),
(10, 'Phòng Hạng Sang', 'phong-hang-sang', 5000000, '2021-12-01 07:07:54', '2021-12-01 00:58:58'),
(11, 'Phòng Đơn', 'phong-don', 1500000, '2021-12-01 07:07:54', '2021-12-01 00:59:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\User', 1),
(3, 'App\\User', 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2021-12-01 07:10:25', '2021-12-01 07:10:25'),
(2, 'role-create', 'web', '2021-12-01 07:10:25', '2021-12-01 07:10:25'),
(3, 'role-edit', 'web', '2021-12-01 07:10:25', '2021-12-01 07:10:25'),
(4, 'role-delete', 'web', '2021-12-01 07:10:25', '2021-12-01 07:10:25'),
(8, 'loaiphong-list', 'web', '2021-12-01 07:10:25', '2021-12-01 07:10:25'),
(9, 'phong-list', 'web', '2021-12-01 07:10:25', '2021-12-01 07:10:25'),
(10, 'phong-update', 'web', '2021-12-01 07:10:25', '2021-12-01 07:10:25'),
(11, 'phong-delete', 'web', '2021-12-01 07:10:25', '2021-12-01 07:10:25'),
(12, 'loaiphong-update', 'web', '2021-12-01 07:10:25', '2021-12-01 07:10:25'),
(14, 'khachhang-list', 'web', '2021-12-01 07:10:25', '2021-12-01 07:10:25'),
(15, 'khachhang-update', 'web', '2021-12-01 07:10:25', '2021-12-01 07:10:25'),
(16, 'khachhang-delete', 'web', '2021-12-01 07:10:25', '2021-12-01 07:10:25'),
(17, 'dichvu-list', 'web', '2021-12-01 07:10:25', '2021-12-01 07:10:25'),
(18, 'dichvu-update', 'web', '2021-12-01 07:10:25', '2021-12-01 07:10:25'),
(19, 'loaiphong-delete', 'web', '2021-12-01 07:10:25', '2021-12-01 07:10:25'),
(20, 'dichvu-delete', 'web', '2021-12-01 07:10:25', '2021-12-01 07:10:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenphong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinhtrang` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mota` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `loaiphong_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`id`, `tenphong`, `tinhtrang`, `mota`, `image`, `user_id`, `loaiphong_id`, `created_at`, `updated_at`) VALUES
(58, 'A 102', 0, 'âsa', '2019-05-24/438fa287eb95793accf18537426dcea6.jpg', 1, 5, '2021-12-01 07:07:10', '2022-01-09 07:55:52'),
(60, 'A 103', 2, 'Block A', '2019-05-24/681ac1207dacf9a31e7b4b8484488257.jpg', 1, 10, '2021-12-01 07:07:10', '2021-12-01 07:07:10'),
(61, 'A 105', 2, 'Phòng A', '2019-05-24/cad10a1a812fe98768cfa2a7195a0495.jpg', 1, 5, '2021-12-01 07:07:10', '2021-12-01 02:55:20'),
(62, 'C 101', 0, 'Phòng C', '2019-05-24/88331e1b1cda5cbc5a0c32764d275e68.jpg', 1, 2, '2021-12-01 07:07:10', '2022-01-09 07:34:55'),
(65, 'C102', 1, 'Phòng Hạng C', '2019-05-24/1be91dbf77dc2324ddeff60cc6d948d5.jpg', 1, 2, '2021-12-01 07:07:10', '2021-12-01 07:07:10'),
(66, 'D105', 1, 'Phòng hạng D', '2019-05-24/68d00a0b2e6d46128d527c9293a3e516.jpg', 1, 5, '2021-12-01 07:07:10', '2021-12-03 01:09:58'),
(67, 'D101', 0, 'Phòng Hạng D', '2019-05-24/6ce15b197b9db4a3c62f562d885bc85d.jpg', 1, 10, '2021-12-01 07:07:10', '2022-01-09 07:53:19'),
(68, 'A104', 0, 'A', '2019-05-26/9b4693a8fac8879d22431521e5d28b36.jpg', 1, 11, '2021-12-01 07:07:10', '2021-12-01 07:07:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'web', '2021-12-01 07:10:40', '2021-12-01 07:10:40'),
(3, 'NhanVien', 'web', '2021-12-01 07:10:40', '2021-12-01 07:10:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(8, 2),
(9, 2),
(9, 3),
(10, 2),
(11, 2),
(12, 2),
(14, 2),
(14, 3),
(15, 2),
(15, 3),
(16, 2),
(16, 3),
(17, 2),
(18, 2),
(19, 2),
(20, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sudungdichvu`
--

CREATE TABLE `sudungdichvu` (
  `id` int(10) UNSIGNED NOT NULL,
  `thuephong_id` int(10) UNSIGNED DEFAULT NULL,
  `dichvu_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sudungdichvu`
--

INSERT INTO `sudungdichvu` (`id`, `thuephong_id`, `dichvu_id`, `user_id`, `quantity`, `created_at`, `updated_at`) VALUES
(57, 14, 2, 1, 1, '2021-12-01 07:10:54', '2021-12-01 07:10:54'),
(60, 22, 7, 1, 1, '2021-12-01 07:10:54', '2021-12-01 07:10:54'),
(61, 26, 2, 1, 2, '2021-12-01 07:10:54', '2021-12-01 07:10:54'),
(62, 26, 6, 1, 1, '2021-12-01 07:10:54', '2021-12-01 07:10:54'),
(63, 26, 7, 1, 2, '2021-12-01 07:10:54', '2021-12-01 07:10:54'),
(64, 29, 2, 1, 1, '2021-12-01 07:10:54', '2021-12-01 07:10:54'),
(65, 29, 6, 1, 2, '2021-12-01 07:10:54', '2021-12-01 07:10:54'),
(66, 29, 7, 1, 2, '2021-12-01 07:10:54', '2021-12-01 07:10:54'),
(67, 31, 2, 1, 2, '2021-12-01 07:10:54', '2021-12-01 07:10:54'),
(68, 31, 6, 1, 2, '2021-12-01 07:10:54', '2021-12-01 07:10:54'),
(69, 31, 7, 1, 1, '2021-12-01 07:10:54', '2021-12-01 07:10:54'),
(70, 34, 2, 1, 1, '2021-12-01 07:10:54', '2021-12-01 07:10:54'),
(71, 34, 6, 1, 1, '2021-12-01 07:10:54', '2021-12-01 07:10:54'),
(72, 40, 2, 1, 1, '2021-12-01 07:10:54', '2021-12-01 07:10:54'),
(73, 40, 6, 1, 1, '2021-12-01 07:10:54', '2021-12-01 07:10:54'),
(74, 35, 2, 1, 1, '2021-12-01 07:10:54', '2021-12-01 07:10:54'),
(75, 35, 6, 1, 1, '2021-12-01 07:10:54', '2021-12-01 07:10:54'),
(76, 41, 2, 30, 1, '2021-12-01 07:10:54', '2021-12-01 07:10:54'),
(77, 41, 7, 30, 1, '2021-12-01 07:10:54', '2021-12-01 07:10:54'),
(78, 44, 6, 1, 1, '2021-12-26 02:46:15', '2021-12-26 02:46:15'),
(79, 45, 2, 1, 5, '2022-01-09 07:34:35', '2022-01-09 07:34:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuephong`
--

CREATE TABLE `thuephong` (
  `id` int(10) UNSIGNED NOT NULL,
  `phong_id` int(10) UNSIGNED NOT NULL,
  `khachhang_id` int(10) UNSIGNED NOT NULL,
  `ngaydat` datetime NOT NULL,
  `ngaytra` datetime NOT NULL,
  `trangthai` int(1) NOT NULL DEFAULT 0,
  `thanhtoan` int(1) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuephong`
--

INSERT INTO `thuephong` (`id`, `phong_id`, `khachhang_id`, `ngaydat`, `ngaytra`, `trangthai`, `thanhtoan`, `user_id`, `created_at`, `updated_at`) VALUES
(14, 60, 42, '2021-04-26 12:24:34', '2021-05-25 12:24:36', 1, 0, 1, '2021-12-01 07:11:21', '2021-12-01 07:11:21'),
(22, 65, 32, '2021-05-19 00:00:00', '2021-05-22 00:00:00', 1, 0, 1, '2021-12-01 07:11:21', '2021-12-01 07:11:21'),
(25, 62, 32, '2021-05-20 00:00:00', '2021-05-21 00:00:00', 1, 0, 1, '2021-12-01 07:11:21', '2021-12-01 07:11:21'),
(26, 65, 32, '2021-05-21 00:00:00', '2021-05-22 00:00:00', 1, 0, 1, '2021-12-01 07:11:21', '2021-12-01 07:11:21'),
(27, 66, 50, '2021-05-24 00:00:00', '2021-05-30 00:00:00', 1, 0, 1, '2021-12-01 07:11:21', '2021-12-01 07:11:21'),
(28, 58, 51, '2021-05-25 00:00:00', '2021-05-26 00:00:00', 1, 0, 1, '2021-12-01 07:11:21', '2021-12-01 07:11:21'),
(29, 61, 52, '2021-05-25 00:00:00', '2021-05-26 00:00:00', 1, 0, 1, '2021-12-01 07:11:21', '2021-12-01 07:11:21'),
(30, 61, 32, '2021-05-27 00:00:00', '2021-05-28 00:00:00', 1, 0, 1, '2021-12-01 07:11:21', '2021-12-01 07:11:21'),
(31, 58, 32, '2021-05-27 00:00:00', '2021-05-28 00:00:00', 1, 0, 1, '2021-12-01 07:11:21', '2021-12-01 07:11:21'),
(33, 58, 60, '2021-05-28 00:00:00', '2021-05-31 00:00:00', 1, 0, 1, '2021-12-01 07:11:21', '2021-12-01 07:11:21'),
(34, 67, 60, '2021-05-29 00:00:00', '2021-05-31 00:00:00', 1, 0, 1, '2021-12-01 07:11:21', '2021-12-01 07:11:21'),
(35, 61, 32, '2021-05-28 00:00:00', '2021-05-30 00:00:00', 1, 0, 1, '2021-12-01 07:11:21', '2021-12-01 07:11:21'),
(36, 58, 65, '2021-05-28 00:05:14', '2021-05-28 00:05:15', 1, 0, 1, '2021-12-01 07:11:21', '2021-12-01 07:11:21'),
(37, 62, 66, '2021-05-28 00:07:23', '2021-05-28 00:07:23', 1, 0, 1, '2021-12-01 07:11:21', '2021-12-01 07:11:21'),
(38, 66, 60, '2021-05-29 00:00:00', '2021-05-31 00:00:00', 1, 0, 1, '2021-12-01 07:11:21', '2021-12-01 07:11:21'),
(39, 62, 32, '2021-05-28 00:00:00', '2021-05-31 00:00:00', 1, 0, 1, '2021-12-01 07:11:21', '2021-12-01 02:11:24'),
(40, 58, 60, '2021-05-28 00:00:00', '2021-05-31 00:00:00', 1, 0, 1, '2021-12-01 07:11:21', '2021-12-01 07:11:21'),
(41, 60, 67, '2021-11-28 00:00:00', '2021-12-03 00:00:00', 0, 0, 1, '2021-12-01 07:11:21', '2021-12-26 02:47:16'),
(42, 61, 74, '2021-11-29 00:00:00', '2021-11-30 00:00:00', 0, 0, 1, '2021-12-01 02:55:20', '2021-12-01 02:55:20'),
(43, 62, 76, '2021-12-15 00:00:00', '2021-12-23 00:00:00', 1, 1, 1, '2021-12-15 00:42:01', '2022-01-09 07:31:52'),
(44, 58, 77, '2021-12-26 00:00:00', '2021-12-31 00:00:00', 1, 1, 1, '2021-12-26 02:45:17', '2022-01-09 07:55:52'),
(45, 62, 78, '2022-01-10 00:00:00', '2022-01-11 00:00:00', 1, 1, 1, '2022-01-09 07:33:04', '2022-01-09 07:34:55'),
(46, 67, 79, '2022-01-06 00:00:00', '2022-01-07 00:00:00', 1, 1, 1, '2022-01-09 07:46:12', '2022-01-09 07:53:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuvienhinhanh`
--

CREATE TABLE `thuvienhinhanh` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phong_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Phú Quí', 'admin@gmail.com', NULL, '$2y$10$yyIi5SDXM5uSuZq9lLNqOexjXfPjl99ImfEPb76EKy3nOJ8WpWop6', 'SuWaDoUCCx9SgG8PkK9xo4dlLPpBrkIy1iCNpjUaxt0ZYzx5ZLiw793vCnb7', '2021-12-01 00:02:47', '2021-12-01 00:02:47'),
(30, 'Nhân viên', 'nhanvien@gmail.com', NULL, '$2y$10$yyIi5SDXM5uSuZq9lLNqOexjXfPjl99ImfEPb76EKy3nOJ8WpWop6', 'RHAhcqeGZkvKS8IHanXVHzci5MMuvAJByCaIXVnMiPQYwZPlvVG5dFioVyNl', '2021-12-01 00:02:47', '2021-12-01 00:03:17');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `datphong`
--
ALTER TABLE `datphong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `datphong_phong_id_foreign` (`phong_id`),
  ADD KEY `datphong_khachhang_id_foreign` (`khachhang_id`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dichvu_tendichvu_unique` (`tendichvu`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaiphong`
--
ALTER TABLE `loaiphong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phong_tenphong_unique` (`tenphong`),
  ADD KEY `phong_loaiphong_id_foreign` (`loaiphong_id`),
  ADD KEY `phong_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `sudungdichvu`
--
ALTER TABLE `sudungdichvu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sudungdichvu_dichvu_id_foreign` (`dichvu_id`),
  ADD KEY `sudungdichvu_thuephong_id_foreign` (`thuephong_id`),
  ADD KEY `sudungdichvu_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `thuephong`
--
ALTER TABLE `thuephong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thuephong_phong_id_foreign` (`phong_id`),
  ADD KEY `thuephong_khachhang_id_foreign` (`khachhang_id`),
  ADD KEY `thuephong_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `thuvienhinhanh`
--
ALTER TABLE `thuvienhinhanh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thuvienhinhanh_phong_id_foreign` (`phong_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `datphong`
--
ALTER TABLE `datphong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `loaiphong`
--
ALTER TABLE `loaiphong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `phong`
--
ALTER TABLE `phong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `sudungdichvu`
--
ALTER TABLE `sudungdichvu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `thuephong`
--
ALTER TABLE `thuephong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `thuvienhinhanh`
--
ALTER TABLE `thuvienhinhanh`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `datphong`
--
ALTER TABLE `datphong`
  ADD CONSTRAINT `datphong_khachhang_id_foreign` FOREIGN KEY (`khachhang_id`) REFERENCES `khachhang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datphong_phong_id_foreign` FOREIGN KEY (`phong_id`) REFERENCES `phong` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `phong_loaiphong_id_foreign` FOREIGN KEY (`loaiphong_id`) REFERENCES `loaiphong` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `phong_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sudungdichvu`
--
ALTER TABLE `sudungdichvu`
  ADD CONSTRAINT `sudungdichvu_dichvu_id_foreign` FOREIGN KEY (`dichvu_id`) REFERENCES `dichvu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sudungdichvu_thuephong_id_foreign` FOREIGN KEY (`thuephong_id`) REFERENCES `thuephong` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sudungdichvu_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `thuephong`
--
ALTER TABLE `thuephong`
  ADD CONSTRAINT `thuephong_khachhang_id_foreign` FOREIGN KEY (`khachhang_id`) REFERENCES `khachhang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `thuephong_phong_id_foreign` FOREIGN KEY (`phong_id`) REFERENCES `phong` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `thuephong_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `thuvienhinhanh`
--
ALTER TABLE `thuvienhinhanh`
  ADD CONSTRAINT `thuvienhinhanh_phong_id_foreign` FOREIGN KEY (`phong_id`) REFERENCES `phong` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
