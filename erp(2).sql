-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 21, 2019 at 07:43 PM
-- Server version: 10.1.34-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.15-0ubuntu0.18.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_Id` varchar(30) NOT NULL,
  `account_Name` varchar(50) NOT NULL,
  `account_Description` text NOT NULL,
  `account_CreationTime` double NOT NULL,
  `account_CreatedBy` varchar(20) NOT NULL,
  `account_manager` varchar(20) NOT NULL,
  `account_Contact` text NOT NULL,
  `account_Email` text NOT NULL,
  `account_UpdationTime` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_Id` int(11) NOT NULL,
  `category_Name` varchar(50) NOT NULL,
  `category_Description` text NOT NULL,
  `category_creationTime` double NOT NULL,
  `category_createdBy` varchar(60) NOT NULL,
  `category_UpdationTime` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Customer_ID` int(11) NOT NULL,
  `account_ID` varchar(30) NOT NULL,
  `Customer_Name` varchar(50) NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(50) NOT NULL,
  `Country` varchar(30) NOT NULL,
  `Contact_Person` varchar(50) NOT NULL,
  `Phone_Number` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Notes` varchar(50) NOT NULL,
  `Balance` double DEFAULT '0',
  `created_By` varchar(50) DEFAULT NULL,
  `created_Date` int(15) DEFAULT NULL,
  `updated_By` varchar(50) DEFAULT NULL,
  `updated_Date` int(15) DEFAULT NULL,
  `amount` int(15) NOT NULL,
  `due_Date` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

CREATE TABLE `demo` (
  `demo_ID` int(11) NOT NULL,
  `category_ID` int(11) NOT NULL,
  `product_ID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `customer_ID` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `expire_Date` int(11) NOT NULL,
  `expected_Purchase` int(11) NOT NULL,
  `lead_By` int(11) NOT NULL,
  `sale_By` int(11) NOT NULL,
  `created_By` int(11) NOT NULL,
  `updated_By` int(11) NOT NULL,
  `creation_Time` int(11) NOT NULL,
  `updation_Time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `permission_ID` int(10) NOT NULL,
  `permission_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_ID` int(11) NOT NULL,
  `category_ID` int(11) NOT NULL,
  `supplier_ID` int(11) NOT NULL,
  `product_Name` varchar(50) NOT NULL,
  `product_Description` text NOT NULL,
  `createdBy` int(11) NOT NULL,
  `creation_Time` int(15) NOT NULL,
  `updated_By` int(11) NOT NULL,
  `updation_Time` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchase_ID` int(11) NOT NULL,
  `purchase_Number` varchar(20) NOT NULL,
  `stock_ID` int(11) NOT NULL,
  `supplier_ID` int(11) NOT NULL,
  `category_ID` int(11) NOT NULL,
  `product_ID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `purchasing_Price` double NOT NULL DEFAULT '0',
  `total_Price` double NOT NULL DEFAULT '0',
  `total_Payment` double NOT NULL DEFAULT '0',
  `balance` double NOT NULL DEFAULT '0',
  `Notes` text NOT NULL,
  `Purchased_By` int(11) NOT NULL,
  `transaction_Date` int(11) NOT NULL,
  `dueDate` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_ID` int(11) NOT NULL,
  `role_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_ID` int(11) NOT NULL,
  `sales_Number` varchar(20) NOT NULL,
  `stock_ID` int(11) NOT NULL,
  `customer_ID` int(11) NOT NULL,
  `amount_PerUnit` double NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL,
  `discount_Percentage` double NOT NULL,
  `discount_Amount` double NOT NULL,
  `tax_Percentage` double NOT NULL,
  `tax_Amount` double NOT NULL,
  `total_Amount` double NOT NULL,
  `total_Payment` double NOT NULL,
  `balance` double NOT NULL,
  `gst_Number` varchar(20) NOT NULL,
  `sales_Date` int(11) NOT NULL,
  `notes` text NOT NULL,
  `due_Date` int(11) NOT NULL,
  `sold_By` int(11) NOT NULL,
  `lead_By` int(11) NOT NULL,
  `commission` int(3) NOT NULL,
  `created_By` int(11) NOT NULL,
  `creation_Time` int(11) NOT NULL,
  `update_By` int(11) NOT NULL,
  `updation_Time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `Stock_ID` int(11) NOT NULL,
  `supplier_ID` int(11) NOT NULL,
  `Category_ID` int(11) NOT NULL,
  `product_ID` int(11) NOT NULL,
  `Purchasing_Price` double(20,0) NOT NULL DEFAULT '0',
  `Selling_Price` double(20,0) NOT NULL DEFAULT '0',
  `tax_Percentage` int(10) NOT NULL,
  `Notes` varchar(50) NOT NULL,
  `Quantity` double(20,0) NOT NULL DEFAULT '0',
  `Date_Added` int(15) DEFAULT NULL,
  `Added_By` varchar(50) DEFAULT NULL,
  `Date_Updated` int(15) DEFAULT NULL,
  `Updated_By` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `Supplier_ID` int(11) NOT NULL,
  `Supplier_Name` varchar(50) NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(20) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `Contact_Person` varchar(50) NOT NULL,
  `Phone_Number` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Notes` text NOT NULL,
  `Balance` double DEFAULT '0',
  `Date_Added` datetime DEFAULT NULL,
  `Added_By` varchar(50) DEFAULT NULL,
  `Date_Updated` datetime DEFAULT NULL,
  `Updated_By` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`Supplier_ID`, `Supplier_Name`, `Address`, `City`, `Country`, `Contact_Person`, `Phone_Number`, `Email`, `Notes`, `Balance`, `Date_Added`, `Added_By`, `Date_Updated`, `Updated_By`) VALUES
(1, 'First Supplier', 'Address for the first supplier', 'Bandung', 'Indonesia', 'John Mc. Enroe', '022124415093', 'john.mcenroe@gmail.com', 'Just a note', 16040000, '2015-02-14 11:38:08', 'Administrator', '2015-02-14 11:39:05', 'Administrator'),
(2, 'Second Supplier', 'Address for the second supplier', 'Jakarta', 'Indonesia', 'Martina Navatrilova', '02148272080', 'martina.nav@gmail.com', 'Just a note for Martina.', 7750000, '2015-02-14 11:39:16', 'Administrator', '2015-02-14 11:40:00', 'Administrator'),
(3, 'Third Supplier', 'Address for the third supplier.', 'Surabaya', 'Indonesia', 'Joko Sentul', '03142348293', 'joko.sentoel@gmail.com', 'A note for third supplier.', 3600000, '2015-02-14 11:40:03', 'Administrator', '2015-02-14 11:41:39', 'Administrator'),
(4, 'Fourth Supplier', 'Address for the fourth supplier.', 'Yogyakarta', 'Indonesia', 'Siapa Sajalah', '0213248290', 'siapa.saja@gmail.com', 'Another note for the fourth supplier.', 1700000, '2015-02-14 11:41:44', 'Administrator', '2015-02-14 11:42:42', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_ID` int(10) NOT NULL,
  `user_Role` int(11) NOT NULL,
  `user_Name` varchar(20) NOT NULL,
  `user_Email` varchar(60) NOT NULL,
  `user_password` varchar(60) NOT NULL,
  `user_creationTime` double DEFAULT NULL,
  `user_LastLogin` double DEFAULT NULL,
  `user_isActive` varchar(15) NOT NULL,
  `user_accountID` varchar(60) NOT NULL,
  `preferredLang` varchar(50) NOT NULL,
  `reportsTo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_Permission`
--

CREATE TABLE `user_Permission` (
  `user_ID` int(10) NOT NULL,
  `role_ID` int(10) NOT NULL,
  `permission_ID` int(10) NOT NULL,
  `createdBy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_Id`),
  ADD KEY `account_manager` (`account_manager`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_Id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Customer_ID`),
  ADD UNIQUE KEY `account_ID` (`account_ID`);

--
-- Indexes for table `demo`
--
ALTER TABLE `demo`
  ADD PRIMARY KEY (`demo_ID`),
  ADD UNIQUE KEY `category_ID` (`category_ID`),
  ADD UNIQUE KEY `product_ID` (`product_ID`),
  ADD UNIQUE KEY `customer_ID` (`customer_ID`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_ID`),
  ADD KEY `category_ID` (`category_ID`),
  ADD KEY `supplier_ID` (`supplier_ID`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchase_ID`),
  ADD UNIQUE KEY `stock_ID` (`stock_ID`),
  ADD UNIQUE KEY `supplier_ID` (`supplier_ID`),
  ADD UNIQUE KEY `category_ID` (`category_ID`),
  ADD UNIQUE KEY `product_ID` (`product_ID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_ID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_ID`),
  ADD UNIQUE KEY `stock_ID` (`stock_ID`),
  ADD UNIQUE KEY `customer_ID` (`customer_ID`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`Stock_ID`),
  ADD UNIQUE KEY `supplier_ID` (`supplier_ID`),
  ADD UNIQUE KEY `Category_ID` (`Category_ID`),
  ADD UNIQUE KEY `product_ID` (`product_ID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`Supplier_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_ID`),
  ADD UNIQUE KEY `user_Role` (`user_Role`),
  ADD UNIQUE KEY `user_accountID` (`user_accountID`);

--
-- Indexes for table `user_Permission`
--
ALTER TABLE `user_Permission`
  ADD PRIMARY KEY (`permission_ID`),
  ADD KEY `role_ID` (`role_ID`),
  ADD KEY `user_ID` (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Customer_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `demo`
--
ALTER TABLE `demo`
  MODIFY `demo_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `permission_ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchase_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `Stock_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `Supplier_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`account_ID`) REFERENCES `account` (`account_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `demo`
--
ALTER TABLE `demo`
  ADD CONSTRAINT `demo_ibfk_1` FOREIGN KEY (`category_ID`) REFERENCES `category` (`category_Id`),
  ADD CONSTRAINT `demo_ibfk_2` FOREIGN KEY (`product_ID`) REFERENCES `product` (`product_ID`),
  ADD CONSTRAINT `demo_ibfk_3` FOREIGN KEY (`customer_ID`) REFERENCES `customers` (`Customer_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_ID`) REFERENCES `category` (`category_Id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`supplier_ID`) REFERENCES `suppliers` (`Supplier_ID`);

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`stock_ID`) REFERENCES `stock` (`Stock_ID`),
  ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`supplier_ID`) REFERENCES `suppliers` (`Supplier_ID`),
  ADD CONSTRAINT `purchase_ibfk_3` FOREIGN KEY (`category_ID`) REFERENCES `category` (`category_Id`),
  ADD CONSTRAINT `purchase_ibfk_4` FOREIGN KEY (`product_ID`) REFERENCES `product` (`product_ID`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`stock_ID`) REFERENCES `stock` (`Stock_ID`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`customer_ID`) REFERENCES `customers` (`Customer_ID`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`supplier_ID`) REFERENCES `suppliers` (`Supplier_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`Category_ID`) REFERENCES `category` (`category_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `stock_ibfk_3` FOREIGN KEY (`product_ID`) REFERENCES `product` (`product_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_accountID`) REFERENCES `account` (`account_Id`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`user_Role`) REFERENCES `role` (`role_ID`);

--
-- Constraints for table `user_Permission`
--
ALTER TABLE `user_Permission`
  ADD CONSTRAINT `user_Permission_ibfk_1` FOREIGN KEY (`role_ID`) REFERENCES `role` (`role_ID`),
  ADD CONSTRAINT `user_Permission_ibfk_2` FOREIGN KEY (`user_ID`) REFERENCES `user` (`user_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
