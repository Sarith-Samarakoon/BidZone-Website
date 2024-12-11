-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2023 at 05:00 PM
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
-- Database: `iwt`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `accountID` int(11) NOT NULL,
  `accountType` varchar(20) DEFAULT NULL,
  `password` char(20) NOT NULL,
  `adminID` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`accountID`, `accountType`, `password`, `adminID`) VALUES
(1201, 'Seller', '12345678', 'AI2026'),
(1202, 'Buyer', '23456789', 'AI2026'),
(1203, 'Seller', '1234', 'AI2026'),
(1204, 'Seller', '200011', 'AI2026'),
(1205, 'Buyer', '200207', 'AI2026'),
(1206, 'Buyer', '200203', 'AI2026'),
(1207, 'Buyer', '200110', 'AI2026'),
(1208, 'Buyer', '200111', 'AI2026'),
(1209, 'Seller', '199010', 'AI2026'),
(1210, 'Seller', '186412', 'AI2026'),
(1211, 'Buyer', '20121212', 'AI2026'),
(1212, 'Buyer', '20080229', 'AI2026'),
(1213, 'Buyer', '20150230', 'AI2026'),
(1214, 'Buyer', 'ac@2002', 'AI2026'),
(1215, 'Seller', 'abc4050', 'AI2026'),
(1216, 'Seller', 'pqr@1975', 'AI2026'),
(1217, 'Buyer', 'zyr#123', 'AI2026'),
(1218, 'Seller', 'star@wars', 'AI2026'),
(1219, 'Buyer', 'acer@11', 'AI2026'),
(1220, 'Buyer', '01125365', 'AI2026');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` char(6) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `NIC` char(15) DEFAULT NULL,
  `password` char(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `username`, `NIC`, `password`, `email`) VALUES
('AI2026', 'James William', '200220502026', 'james#123', 'jameswilliam@gmail.com');

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
('BI0011', '200424681309', 'Benjamin Michael', '2004-04-09', 'benjaminmichael@gmail.com'),
('BT0012', '198486420378', 'Oscar Robert', '1984-11-12', 'oscarrobert@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `checkouttable`
--

CREATE TABLE `checkouttable` (
  `checkoutID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `State` varchar(50) DEFAULT NULL,
  `Province` varchar(50) DEFAULT NULL,
  `City` varchar(50) NOT NULL,
  `Zip` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `ConfirmEmail` varchar(100) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackID` int(11) NOT NULL,
  `feedback` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackID`, `feedback`) VALUES
(1, 'xdvxdb'),
(2, 'xdfgdx'),
(3, 'bcgh');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `itemID` int(11) NOT NULL,
  `itemName` varchar(30) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  `itemMaterial` varchar(25) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `itemPrice` float NOT NULL,
  `context` varchar(200) DEFAULT NULL,
  `itemDescription` varchar(200) DEFAULT NULL,
  `warranty` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itemID`, `itemName`, `category`, `itemMaterial`, `quantity`, `itemPrice`, `context`, `itemDescription`, `warranty`) VALUES
(10001, 'Three-Door Wardrobe', 'Home and Furniture', 'Teak Wood', 4, 100000, 'New', 'Introducing our stunning three-door teak wardrobe, a perfect blend of elegance and functionality.', '1 Year'),
(10002, 'Sofa Set', 'Home and Furniture', 'Fabric', 4, 300000, 'New', 'Gorgeously produced sofa with deep seating for superior coziness. Consists of two recliners crafted with top of the range materials to enrich relaxation at best.', '1 Year'),
(20001, 'Smart 4k Television', 'Electronic', 'Glass/Metal', 10, 150000, 'New', 'Transform your entertainment with our top-of-the-line 4K television, delivering breathtaking visuals and immersive sound for an unparalleled viewing experience.', '1 Year'),
(20002, 'Blender', 'Electronic', 'Plastic/Metal', 5, 7000, 'New', 'Effortlessly blend, mix, and puree with our high-performance blender.', '6 Months'),
(30001, 'Leather Handbag', 'Fashion and Beauty', 'Leather', 20, 8000, 'New', 'Our luxury leather handbag meticulously crafted from supple, genuine leather, this exquisite accessory exudes elegance and timeless beauty.', '3 Months'),
(30002, 'Metal Necklace', 'Fashion and Beauty', 'Metal', 20, 300, 'New', 'Our affordable metal necklace, a stylish accessory that adds a touch of elegance to any outfit.', '1 Week'),
(40001, 'Treadmill', 'Sport and Fitness', 'Steal/Rubber', 3, 70000, 'Pre owned', 'Designed for intense workouts, this high-performance machine offers a range of advanced features to elevate your fitness routine.', '1 Year'),
(40002, 'Cricket Bat', 'Sport and Fitness', 'Wood', 3, 1500, 'Pre owned', 'Unleash your cricketing prowess with our high-performance cricket bat.', '1 Week'),
(50001, 'Gramophone', 'Antique', 'Metal and Wood', 2, 36000, 'Pre owned', 'This vintage-inspired masterpiece combines the beauty of ornate woodwork with the warm, nostalgic sound of yesteryear.', '1 Year'),
(50002, 'Porcelain Teapot', 'Antique', 'Porcelain', 2, 10000, 'Pre owned', 'Indulge in the elegance of tea time with our exquisite hand-painted porcelain teapot.', '1 Month'),
(60001, 'Coin Collection', 'Collectible and Art', 'Metal', 50, 2000, 'pre owned', 'Explore our rare coin collection set, featuring captivating numismatic treasures from various eras, each embodying unique historical significance and artistic beauty.', '1 Year'),
(60002, 'Oil Paint Set', 'Collectible and Art', 'Pigment', 30, 800, 'New', 'This all-inclusive kit includes a rich selection of high-quality oil paints in a variety of vibrant colors.', '1 Year');

-- --------------------------------------------------------

--
-- Table structure for table `paymenttable`
--

CREATE TABLE `paymenttable` (
  `paymentID` int(11) NOT NULL,
  `CardHolderName` varchar(100) NOT NULL,
  `CardNumber` varchar(20) NOT NULL,
  `ExpirationDate` date NOT NULL,
  `CVV` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `sellerID` char(6) NOT NULL,
  `userName` varchar(30) DEFAULT NULL,
  `NIC` char(15) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`sellerID`, `userName`, `NIC`, `birthday`, `email`) VALUES
('SI0001', 'Oliver James', '200112345601', '2001-10-12', 'oliverjames@gmail.com'),
('SI0002', 'Charlie Alexander', '199898765402', '1998-11-02', 'charliealexander@gmail.com'),
('SI0003', 'Henry Fredrick', '200624681309', '2006-03-22', 'henryfredrick@gmail.com'),
('SI0004', 'George Edward', '198686420378', '1986-12-27', 'georgeedward@gmail.com'),
('SI0005', 'Thomas Charles', '200113579206', '2001-04-14', 'thomascharles@gmail.com'),
('SI0006', 'Jacob Matthew', '200280246713', '2002-01-04', 'jacobmatthew@gmail.com'),
('SI0007', 'Daniel Joseph', '198531415935', '1985-01-30', 'danieljoseph@gmail.com'),
('SI0008', 'Emily Victoria', '200727182845', '2007-05-06', 'emilyvictoria@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `nic` varchar(15) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `user_pass` varchar(255) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `nic`, `phone_no`, `email`, `dob`, `user_pass`, `user_type`) VALUES
(1, 'Joseph edward', '200412345601', '0781236547', 'josephedward@gmail.com', '2004-08-10', '68f6c1d28ef34f255aa5c5d3158657f074f68175', 'Buyer'),
(2, 'Ishini Madhushani', '200082500605', '0772108209', 'ishinimadhushani@gmail.com', '2000-11-20', '52679450c481272e349c43b467f6e3b119433b55', 'Seller'),
(3, 'Sanil neelaka', '200145789121', '0718045490', 'sanilneelaka@gmail.com', '2001-10-04', '254e1c3f84426f173a4a57ce4c9feb6a87802755', ''),
(4, 'Joseph edward', '200412345601', '781236547', 'josephedward@gmail.com', '0000-00-00', '23456789', 'Buyer'),
(5, 'Charlie Alexander', '199898765402', '771236548', 'charliealexander@gmail.com', '0000-00-00', '1234', 'Seller'),
(6, 'Henry Fredrick', '200324681309', '782569874', ' henryfredrick@gmail.com', '0000-00-00', '200011', 'Seller'),
(7, 'William Henry', '1999798765402', '771563415', 'williamhenry@gmail.com', '0000-00-00', '200207', 'Buyer'),
(8, 'Eliza Amelia', '20012481309', '761457852', ' elizaamelia@gmail.com', '0000-00-00', '200203', 'Buyer'),
(9, 'Noah Alexander', '198286420378', '771543687', 'noahalexander@gmail.com ', '0000-00-00', '200110', 'Buyer'),
(10, 'Isabella Rose', '200213579206', '784635716', 'isabellarose@gmail.com', '0000-00-00', '200111', 'Buyer'),
(11, 'George Edward', '198686420378', '758315972', 'georgeedward@gmail.com', '0000-00-00', '199010', 'Seller'),
(12, 'Thomas Charles', '200113579206', '725871364', 'thomascharles@gmail.com', '0000-00-00', '186410', 'Seller'),
(13, 'Harry Benjamin', '2003800246713', '116547852', 'harrybenjamin@gmail.com', '0000-00-00', '20121212', 'Buyer'),
(14, 'Olivia Maeve', '198931415938', '753105864', 'oliviamaeve@gmail.com', '0000-00-00', '2008229', 'Buyer'),
(15, 'Jack Christoper', '200127182845', '113564720', 'jackchristoper@gmail.com', '0000-00-00', '20150230', 'Buyer'),
(16, 'Ava Penelope', '200012345601', '778942034', 'avapenelope@gmail.com', '0000-00-00', 'ac@2002', 'Seller'),
(17, 'Jacob Mathew', '200280246713', '118036450', 'jacobmathew@gmail.com', '0000-00-00', 'abc4050', 'Seller'),
(18, 'Daniel Joseph', '198531415935', '753010548', 'danieljoseph@gmail.com', '0000-00-00', 'pqr@1975', 'Seller'),
(19, 'Mia Chatherine', '1999698765402', '789015436', 'miachatherine@gmail.com', '0000-00-00', 'zyr#123', 'Buyer'),
(20, 'Emily Victoria', '2004271182845', '765049785', 'emilyvictoria@gmail.com', '0000-00-00', 'star@wars', 'Seller'),
(21, 'Benjamin Michael', '200424681309', '773049614', 'benjaminmichael@gmail.com', '0000-00-00', 'acer@11', 'Buyer'),
(22, 'Oscar Robert', '198486420378', '725046727', 'oscarrobert@gmail.com', '0000-00-00', '01125365', 'Buyer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`accountID`),
  ADD KEY `fk_account` (`adminID`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`buyerID`);

--
-- Indexes for table `checkouttable`
--
ALTER TABLE `checkouttable`
  ADD PRIMARY KEY (`checkoutID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `paymenttable`
--
ALTER TABLE `paymenttable`
  ADD PRIMARY KEY (`paymentID`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`sellerID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkouttable`
--
ALTER TABLE `checkouttable`
  MODIFY `checkoutID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `paymenttable`
--
ALTER TABLE `paymenttable`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `fk_account` FOREIGN KEY (`adminID`) REFERENCES `admin` (`adminID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
