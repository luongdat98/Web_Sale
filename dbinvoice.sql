-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 26, 2020 lúc 03:57 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dbinvoice`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `activeFlag` int(11) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `name`, `logo`, `activeFlag`, `createDate`, `updateDate`, `status`) VALUES
(22, 'Oppo', NULL, 1, '2020-08-25 22:57:36', '2020-08-25 22:57:36', 1),
(23, 'SamSung', NULL, 1, '2020-08-25 22:58:48', '2020-08-25 22:58:48', 1),
(24, 'Huawei', NULL, 1, '2020-08-25 22:59:15', '2020-08-25 22:59:15', 1),
(25, 'Apple', NULL, 1, '2020-08-25 22:59:31', '2020-08-25 22:59:31', 1),
(26, 'Xiaomi', NULL, 1, '2020-08-25 23:00:18', '2020-08-25 23:00:18', 1),
(27, 'Vinmart', NULL, 1, '2020-08-25 23:01:03', '2020-08-25 23:01:03', 1),
(28, 'LG', NULL, 1, '2020-08-25 23:01:30', '2020-08-25 23:01:30', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `activeFlag` int(1) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updateDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `code`, `description`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 'Điện Thoại', '1', '1', 1, '2020-08-05 16:08:43', NULL),
(2, 'Laptop', '2', '2', 1, '2020-08-08 16:08:59', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phoneNumber` varchar(12) NOT NULL,
  `address` text NOT NULL,
  `payment` int(1) DEFAULT NULL,
  `quantity` int(5) DEFAULT NULL,
  `amount` decimal(20,1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `invoice`
--

INSERT INTO `invoice` (`id`, `userId`, `name`, `phoneNumber`, `address`, `payment`, `quantity`, `amount`, `status`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 1, '#111', '123456789', 'Thu Duc', 1, 2, '4800000.0', 0, 1, '2020-08-16 02:59:52', '2020-08-19 02:59:56'),
(2, 2, '#444', '1235656', 'Da Nang', 1, 2, '50000000.0', 1, 1, '2020-08-05 03:02:44', '2020-08-06 03:02:47'),
(3, 3, '#555', '9876543826', 'Quan 9', 2, 3, '20000.0', 1, 1, '2020-08-11 13:35:06', '2020-08-11 13:35:06'),
(4, 4, '#222', '9836589274', 'Binh Duong', 3, 1, '70000.0', 1, 1, '2020-08-11 13:35:30', '2020-08-11 13:35:30'),
(5, 5, '#333', '5738462826', 'Quan 1', 1, 2, '5000.0', 1, 1, '2020-08-11 13:45:47', '2020-08-11 13:45:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoicedetail`
--

CREATE TABLE `invoicedetail` (
  `id` int(11) NOT NULL,
  `invoiceId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quanlity` int(3) DEFAULT NULL,
  `price` decimal(20,1) NOT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `invoicedetail`
--

INSERT INTO `invoicedetail` (`id`, `invoiceId`, `productId`, `quanlity`, `price`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 1, 20, 1, '2400000.0', 1, '2020-08-25 23:58:03', '2020-08-25 23:58:03'),
(2, 2, 21, 1, '25000000.0', 1, '2020-08-25 23:59:03', '2020-08-25 23:59:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(20,5) NOT NULL,
  `discount` decimal(15,2) DEFAULT NULL,
  `unitBrief` text DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgMain` varchar(200) DEFAULT NULL,
  `imgList` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `categoryId`, `brandId`, `name`, `code`, `price`, `discount`, `unitBrief`, `description`, `imgMain`, `imgList`, `quantity`, `activeFlag`, `createDate`, `updateDate`) VALUES
(20, 1, 24, 'Hawei-p40', '#samsung', '2400000.00000', '10000.00', 'OPPO A92 được trang bị cho mình con chip Snapdragon 665 mạnh mẽ cho hiệu năng cao, xử lý đa nhiệm mượt mà, “cân” tốt các tựa game mobile hiện hành. ', 'New Product', NULL, NULL, 50, 1, '2020-08-25 23:10:41', '2020-08-25 23:10:41'),
(21, 1, 25, 'Iphone 11 pro', '#Iphone', '25000000.00000', '10000.00', 'OPPO A92 được trang bị cho mình con chip Snapdragon 665 mạnh mẽ cho hiệu năng cao, xử lý đa nhiệm mượt mà, “cân” tốt các tựa game mobile hiện hành. ', 'New Product', NULL, NULL, 50, 1, '2020-08-25 23:11:44', '2020-08-25 23:11:44'),
(22, 1, 22, 'Oppo-reno4', '#oppo', '4000000.00000', '10000.00', 'OPPO A92 được trang bị cho mình con chip Snapdragon 665 mạnh mẽ cho hiệu năng cao, xử lý đa nhiệm mượt mà, “cân” tốt các tựa game mobile hiện hành. ', 'New Product', NULL, NULL, 30, 1, '2020-08-25 23:12:48', '2020-08-25 23:12:48'),
(23, 1, 23, 'SamSung A21', '#samsung', '3000000.00000', '10000.00', 'OPPO A92 được trang bị cho mình con chip Snapdragon 665 mạnh mẽ cho hiệu năng cao, xử lý đa nhiệm mượt mà, “cân” tốt các tựa game mobile hiện hành. ', 'New Product', NULL, NULL, 30, 1, '2020-08-25 23:13:39', '2020-08-25 23:13:39'),
(24, 1, 27, 'VsMart-star-4', '#vsmart', '4500000.00000', '10000.00', 'OPPO A92 được trang bị cho mình con chip Snapdragon 665 mạnh mẽ cho hiệu năng cao, xử lý đa nhiệm mượt mà, “cân” tốt các tựa game mobile hiện hành. ', 'New Product', NULL, NULL, 30, 1, '2020-08-25 23:14:54', '2020-08-25 23:14:54'),
(25, 1, 26, 'Xiaomi redmi note 8', '#xiaomi', '2340000.00000', '10000.00', 'OPPO A92 được trang bị cho mình con chip Snapdragon 665 mạnh mẽ cho hiệu năng cao, xử lý đa nhiệm mượt mà, “cân” tốt các tựa game mobile hiện hành. ', 'New Product', NULL, NULL, 30, 1, '2020-08-25 23:16:00', '2020-08-25 23:16:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productline`
--

CREATE TABLE `productline` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_nopad_ci DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL,
  `createDate` timestamp NULL DEFAULT NULL,
  `createUpdate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_nopad_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `roleName` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `activeFlag` int(1) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updateDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `roleName`, `description`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 'admin', 'admin', 1, '2020-08-22 05:24:25', NULL),
(2, 'user', 'user', 1, '2020-08-22 05:24:34', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roleuser`
--

CREATE TABLE `roleuser` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  `activeFlag` int(1) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updateDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `roleuser`
--

INSERT INTO `roleuser` (`userId`, `roleId`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 1, 1, '2020-08-01 05:25:04', NULL),
(2, 2, 1, '2020-08-14 05:25:08', NULL),
(6, 2, 0, '2020-08-22 08:00:47', NULL),
(7, 1, 0, '2020-08-22 08:00:47', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `activeFlag` int(1) NOT NULL DEFAULT 1,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `activeFlag`, `createDate`, `updateDate`) VALUES
(1, 'dat', '123456', 'dat@gmail.com', 'Dat', 1, '2020-08-01 02:59:10', '2020-08-02 02:59:14'),
(2, 'ngoc', '456789', 'ngoc@gmail.com', 'Ngoc', 1, '2020-08-01 09:21:50', '2020-08-07 09:21:53'),
(3, 'vy', '123898', 'vy@gmail.com', 'Vy', 1, '2020-08-11 13:34:00', '2020-08-11 13:34:00'),
(4, 'tuyen', '987653', 'tuyen@gmail.com', 'Tuyen', 1, '2020-08-11 13:34:18', '2020-08-11 13:34:18'),
(5, 'linh ', '569134', 'linh@gmail.com', 'Linh', 1, '2020-08-11 13:45:09', '2020-08-11 13:45:09'),
(6, 'thai', '123456', 'quocthai@gmail.com', 'thai', 1, '2020-08-22 07:44:23', '2020-08-22 07:44:23'),
(7, 'thaidt', '123456', 'luongdat0102@gmail.com', 'thai', 1, '2020-08-22 07:59:37', '2020-08-22 07:59:37');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Chỉ mục cho bảng `invoicedetail`
--
ALTER TABLE `invoicedetail`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `invoiceId` (`invoiceId`),
  ADD KEY `productId` (`productId`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brandId` (`brandId`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Chỉ mục cho bảng `productline`
--
ALTER TABLE `productline`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `brandId` (`brandId`) USING BTREE;

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roleuser`
--
ALTER TABLE `roleuser`
  ADD PRIMARY KEY (`userId`,`roleId`),
  ADD KEY `roleId` (`roleId`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `invoicedetail`
--
ALTER TABLE `invoicedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `productline`
--
ALTER TABLE `productline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `invoicedetail`
--
ALTER TABLE `invoicedetail`
  ADD CONSTRAINT `invoicedetail_ibfk_1` FOREIGN KEY (`invoiceId`) REFERENCES `invoice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoicedetail_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productline`
--
ALTER TABLE `productline`
  ADD CONSTRAINT `productline_ibfk_1` FOREIGN KEY (`brandId`) REFERENCES `brand` (`id`);

--
-- Các ràng buộc cho bảng `roleuser`
--
ALTER TABLE `roleuser`
  ADD CONSTRAINT `roleuser_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `roleuser_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
