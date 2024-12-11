-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 08:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bidzone new`
--

-- --------------------------------------------------------

--
-- Table structure for table `auction`
--

CREATE TABLE `auction` (
  `auctionID` int(11) NOT NULL,
  `itemName` varchar(50) DEFAULT NULL,
  `sellerID` char(20) DEFAULT NULL,
  `startTime` varchar(15) DEFAULT NULL,
  `endTime` varchar(15) DEFAULT NULL,
  `currentPrice` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auction`
--

INSERT INTO `auction` (`auctionID`, `itemName`, `sellerID`, `startTime`, `endTime`, `currentPrice`) VALUES
(33001, 'Blender', 'SI0002', '12:00:00', '06:00:00', 8500),
(33002, 'Coin Collection', 'SI0004', '23:00:00', '15:00:00', 3000),
(33003, 'Metal Necklace', 'SI0005', '08:00:00', '15:00:00', 500),
(33004, 'Three-Door Wardrobe', 'SI0007', '05:00:00', '19:00:00', 110000),
(33005, 'Gramophone', 'SI0006', '07:30:00', '13:30:00', 40000),
(33006, 'Cricket Bat', 'SI0003', '15:45:00', '23:59:00', 2000),
(33007, 'Porcelain Teapot', 'SI0001', '09:00:00', '22:30:00', 11000),
(33008, 'Sofa Set', 'SI0008', '07:55:00', '08:55:00', 320000),
(33009, 'Blender', 'SI0002', '06:00:00', '23:59:00', 7500),
(33010, 'Treadmill', 'SI0005', '08:00:00', '20:00:00', 80000),
(33011, 'Oil Paint Set', 'SI0003', '10:00:00', '22:00:00', 850),
(33012, 'Smart 4k Television', 'SI0006', '09:00:00', '23:30:00', 180000),
(33013, 'Oil Paint Set', 'SI0003', '14:00:00', '24:00:00', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `buyerID` char(6) NOT NULL,
  `NIC` char(15) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`buyerID`, `NIC`, `username`, `birthday`, `email`) VALUES
('BI0001', '200512345601', 'Joseph Edward', '2005-08-10', 'josephedward@gmail.com'),
('BI0002', '199798765402', 'William Henry', '1997-06-04', 'williamhenry@gmail.com'),
('BI0003', '200724681309', 'Eliza Amelia', '2007-06-08', 'elizaamelia@gmail.com'),
('BI0004', '198286420378', 'Noah Alexander', '1982-10-03', 'noahalexander@gmail.com'),
('BI0005', '200513579206', 'Isabella Rose', '2005-09-08', 'isabellarose@gmail.com'),
('BI0006', '200980246713', 'Harry Benjamin', '2009-05-09', 'harrybenjamin@gmail.com'),
('BI0007', '198931415935', 'Olivia Maeve', '1989-08-22', 'oliviamaeve@gmail.com'),
('BI0008', '201027182845', 'Jack Christopher', '2010-05-30', 'jackchristopher@gmail.com'),
('BI0009', '200712345601', 'Ava Penelope', '2007-03-07', 'avapenelope@gmail.com'),
('BI0010', '199698765402', 'Mia Catherine', '1996-02-28', 'miacatherine@gmail.com'),
('BI0011', '200424681309', 'Benjamin Michael', '2004-04-09', 'benjaminmichael@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackID` int(11) NOT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `ratings` int(11) DEFAULT NULL,
  `buyerID` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackID`, `comment`, `ratings`, `buyerID`) VALUES
(22001, 'I recently purchased this handbag and I am absolutely thrilled with it.', 5, 'BI0011'),
(22002, 'Great seller! Fast shipping and item exactly as described', 4, 'BI0003'),
(22003, 'Smooth transaction, excellent communication, and the item arrived in perfect condition', 4, 'BI0009'),
(22004, 'A+ seller! Very responsive and helpful', 5, 'BI0010'),
(22005, 'Terrible seller! Item arrived damaged and poorly packaged', 2, 'BI0007'),
(22006, 'Super fast shipping! The item was well-packaged and arrived in great condition', 3, 'BI0008');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` char(20) NOT NULL,
  `UserName` varchar(200) NOT NULL,
  `NIC` char(15) NOT NULL,
  `pNumber` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Bday` date NOT NULL,
  `Password` char(255) NOT NULL,
  `userType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserName`, `NIC`, `pNumber`, `Email`, `Bday`, `Password`, `userType`) VALUES
('BI0001', 'Joseph Edward', '200512345601', 705799415, 'josephedward@gmail.com', '2005-08-10', '23456789', 'Buyer'),
('BI0002', 'William Henry', '199798765402', 772738496, 'williamhenry@gmail.com', '1997-06-04', '200207', 'Buyer'),
('BI0003', 'Eliza Amelia', '200724681309', 788317625, 'elizaamelia@gmail.com', '2007-06-08', '200203', 'Buyer'),
('BI0004', 'Noah Alexander', '198286420378', 719654321, 'noahalexander@gmail.com', '1982-10-03', '200110', 'Buyer'),
('BI0005', 'Isabella Rose', '200513579206', 751847203, 'isabellarose@gmail.com', '2005-09-08', '200111', 'Buyer'),
('BI0006', 'Harry Benjamin', '200980246713', 706095874, 'harrybenjamin@gmail.com', '2009-05-09', '20121212', 'Buyer'),
('BI0007', 'Olivia Maeve', '198931415935', 713579128, 'oliviamaeve@gmail.com', '1989-08-22', '20080229', 'Buyer'),
('BI0008', 'Jack Christopher', '201027182845', 764823560, 'jackchristopher@gmail.com', '2010-05-30', '20150230', 'Buyer'),
('BI0009', 'Ava Penelope', '200712345601', 757462913, 'avapenelope@gmail.com', '2007-03-07', 'ac@2002', 'Buyer'),
('BI0010', '199698765402', 'Mia Catherine', 785230847, 'miacatherine@gmail.com', '1996-02-28', 'zyr#123', 'Buyer'),
('BI0011', '200424681309', 'Benjamin Michae', 719126538, 'benjaminmichael@gmail.com', '2004-04-09', 'acer@11', 'Buyer'),
('SI0001', 'Oliver James', '200112345601', 112444666, 'oliverjames@gmail.com', '2001-10-12', '12345678', 'Seller'),
('SI0002', 'Charlie Alexander', '199898765402', 112999333, 'charliealexander@gmail.com', '1998-11-02', '1234', 'Seller'),
('SI0003', 'Henry Fredrick', '200624681309', 710001111, 'henryfredrick@gmail.com', '2006-03-22', '200011', 'Seller'),
('SI0004', 'George Edward', '198686420378', 112567633, 'georgeedward@gmail.com', '1986-12-27', '199010', 'Seller'),
('SI0005', 'Thomas Charles', '200113579206', 761333333, 'thomascharles@gmail.com', '2001-04-14', '186412', 'Seller'),
('SI0006', 'Jacob Matthew', '200280246713', 112191919, 'jacobmatthew@gmail.com', '2002-01-04', 'abc4050', 'Seller'),
('SI0007', 'Daniel Joseph', '198531415935', 112447220, 'danieljoseph@gmail.com', '1985-01-30', 'pqr@1975', 'Seller'),
('SI0008', 'Emily Victoria', '200727182845', 112013070, 'emilyvictoria@gmail.com', '2007-05-06', 'star@wars', 'Seller');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auction`
--
ALTER TABLE `auction`
  ADD PRIMARY KEY (`auctionID`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`buyerID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackID`),
  ADD KEY `fk_feedback` (`buyerID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `fk_feedback` FOREIGN KEY (`buyerID`) REFERENCES `buyer` (`buyerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
