-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2018 at 03:30 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhfc_payroll_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`) VALUES
(1, 'ADMIN', 'pyrllnhfc', '279f98ea35aab419c200764f19bdfedf');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `code` varchar(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `oic` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `code`, `name`, `address`, `oic`, `contact`) VALUES
(1, 'AB', 'ALABANG', '2/F, Villiamante Bldg., National Rd.,Alabang, Muntinlupa City', 'AGUSTINA POLIDO', '(02) 850-0748'),
(2, 'ALB', 'ALAMINOS', 'Rm. 203 Naty Miranda Bldg. Quezon Avenue, Alaminos City 2404, Pangasinan', 'CELEDONIO GEMINO', '(075) 654-1085'),
(3, 'BCB', 'BACLARAN', '314 2/F NHFC Bldg., Quirino Ave. Baclaran, Parañaque City', 'ARTHUR NICOLAS JR', '(02) 552-2552'),
(4, 'BB', 'BAGUIO', 'Rm. 118-119, GP Shopping Arcade, Mabini Street, Baguio City', 'MARLYNE BUGNE', '(074) 443-9653'),
(5, 'BLB', 'BALAGTAS', '2/F Room 201 Dela Cruz Building 1, Rizal Avenue Batangas City', 'JAY MACABATAS', '(044) 769-1349'),
(6, 'BNVB', 'BAMBANG', '2/F Lubong Bldg. Brgy. Banggot, Bambang, Nueva Vizcaya', 'MARITESS ALNAS', '(078) 362-0084'),
(7, 'BGB', 'BANGUED', 'Unit 7, Villamor Townhouse,  cor. Partelo and Peñarrubia Street, Bangued, Abra', 'JULIET D. LABERINTO', '(074) 752-7578'),
(8, 'BTB', 'BATANGAS', '2/F Room 201 Dela Cruz Building 1, Rizal Avenue Batangas City', 'ZARINA MENDOZA', '(043) 723-6328'),
(9, 'PBB', 'BONTOC', '1st Floor Commercial Center, Poblacion Bontoc, Mountain Province', 'JESSICA CHIGWAY', '(074) 602-1105'),
(10, 'CISB', 'CANDON', '2/F De Guia Bldg., San Juan, Candon City, Ilocos Sur', 'ARACELI DOMINGO', '(077) 674-0798'),
(11, 'DGB', 'DAGUPAN', '2/F, Aquino Bldg., No. 1 Burgos Street, Dagupan City, Pangasinan', 'CYNTHIA DAROYA', '(075) 522-5408'),
(12, 'DV', 'DIVISORIA', 'Sampaguita Shopping Center, Stall 905-D8, 907 Juan Luna St. cor. C.M. Recto Ave, Tondo, Manila', 'FERDIE FAJARDO', '(02) 724-2980'),
(13, 'LUV', 'LA UNION', '2/F, Nera Bldg., Quezon Avenue, San Fernando City, La Union', 'MARIBEL VALDEZ', '(072) 888-2078'),
(14, 'LGB', 'LEGAZPI', 'Rm 204 Rañola Bldg., Oro Site, Legazpi City', 'MERIAM MORAL', '(052) 480-8488'),
(15, 'NGB', 'NAGA', '2/F, Prieto Bldg., Panganiban Drive Naga City', 'VILMA REVIDAD', '(054) 472-8444'),
(16, 'NB', 'NOVALICHES', '936 Bonifacio Bldg., Quirino Hi-way Novaliches, Quezon City', 'VANESSA BELDIA', '(02) 939-9203'),
(17, 'RIB', 'ROXAS', '2nd floor, Arca Building Bantug, Roxas, Isabela', 'NOEL DE GUZMAN', '(078) 642-7925'),
(18, 'SJ', 'SAN JUAN', '606 Pinaglabanan Street, San Juan City', 'ANALIZA RAMOS', '(02) 723-5505'),
(19, 'SPB', 'SAN PABLO', '2/F Lina Bldg. JP Rizal Avenue, Cor. A. Mabini St. Brgy. V-B San Pablo City, Laguna', 'PABLO ALDRIN COLOCAR', '049-651-3046'),
(20, 'STGB', 'SANTIAGO', 'RM. # 209 2/F Heritage Commercial Complex, National Hi-way Malvar, Santiago City, Isabela', 'MILAGROS BAUTISTA', '(078) 682-0055'),
(21, 'SNVB', 'SOLANO', '2nd floor, Land Bank Galima Bldg National Hi-way, Solano, Nueva Vizcaya', 'MARINA ALLEGO', '(078) 326-6414'),
(22, 'TBK', 'TABUK', 'Westgate Bldng, Dagupan west, Tabuk City, Kalinga', 'ROLEND ARAÑA', '09175104296'),
(23, 'VGB', 'VIGAN', 'Plaza Maestro Annex PM 202 Plaza Maestro Commercial Complex, Vigan City, Ilocos Sur', 'MYLENE CABARLO', '(077) 632-0619'),
(24, 'SZB', 'ZAMBALES', '259 D Nat\'l. Road, South Poblacion Sta. Cruz, Zambales', 'JOANNE MILLAN', '(047) 602-1956');

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `dates` date NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `type`, `dates`, `description`) VALUES
(1, 'Non-Working Holiday', '2018-05-14', 'SK BARANGAY ELECTION'),
(3, 'AZdasdasda', '2018-05-07', 'sdafasdsadas');

-- --------------------------------------------------------

--
-- Table structure for table `calendar_events`
--

CREATE TABLE `calendar_events` (
  `ID` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `calendar_events`
--

INSERT INTO `calendar_events` (`ID`, `title`, `start`, `end`, `description`) VALUES
(1, 'Test Event', '2017-03-16 00:00:00', '2017-03-16 00:00:00', ''),
(2, 'New Event', '2017-03-23 00:00:00', '2017-03-23 00:00:00', ''),
(3, 'test', '2018-06-12 00:00:00', '2018-06-12 00:00:00', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `code`, `name`, `address`) VALUES
(1, 'NHFC', 'NEW HORIZON FINANCE CORPORATION', '606 Pinaglabanan St., San Juan, Metro Manila'),
(2, 'GTLIC', 'GOLDEN TREASURE LENDING INVESTOR CORPORATION', '606 Pinaglabanan St., San Juan, Metro Manila');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `code`, `name`) VALUES
(1, 'ADM', 'ADMINISTRATIVE'),
(2, 'SOA', 'SALES AND OPERATION'),
(3, 'ACCTNG', 'ACCOUNTING'),
(4, 'AUD', 'AUDIT'),
(5, 'IT', 'INFORMATION TECHNOLOGY'),
(6, 'COL', 'COLLECTION');

-- --------------------------------------------------------

--
-- Table structure for table `dependent_beneficiary`
--

CREATE TABLE `dependent_beneficiary` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `name_type` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) NOT NULL,
  `birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dependent_beneficiary`
--

INSERT INTO `dependent_beneficiary` (`id`, `employee_id`, `name_type`, `last_name`, `first_name`, `middle_name`, `birthdate`) VALUES
(1, 1, 'SPOUSE', '', '', '', '1970-01-01'),
(2, 1, 'CHILDREN', '', '', '', '1970-01-01'),
(3, 1, 'CHILDREN', '', '', '', '1970-01-01'),
(4, 1, 'CHILDREN', '', '', '', '1970-01-01'),
(5, 2, 'SPOUSE', '', '', '', '1970-01-01'),
(6, 2, 'CHILDREN', 'Pauso', 'Katelyn Claire', 'Andea', '2010-06-10'),
(7, 2, 'CHILDREN', '', '', '', '2010-06-10'),
(8, 2, 'CHILDREN', '', '', '', '2010-06-10'),
(9, 3, 'SPOUSE', '', '', '', '1970-01-01'),
(10, 3, 'CHILDREN', '', '', '', '1970-01-01'),
(11, 3, 'CHILDREN', '', '', '', '1970-01-01'),
(12, 3, 'CHILDREN', '', '', '', '1970-01-01'),
(13, 4, 'SPOUSE', '', '', '', '1970-01-01'),
(14, 4, 'CHILDREN', '', '', '', '1970-01-01'),
(15, 4, 'CHILDREN', '', '', '', '1970-01-01'),
(16, 4, 'CHILDREN', '', '', '', '1970-01-01'),
(17, 5, 'SPOUSE', '', '', '', '1970-01-01'),
(18, 5, 'CHILDREN', '', '', '', '1970-01-01'),
(19, 5, 'CHILDREN', '', '', '', '1970-01-01'),
(20, 5, 'CHILDREN', '', '', '', '1970-01-01'),
(21, 6, 'SPOUSE', '', '', '', '1970-01-01'),
(22, 6, 'CHILDREN', '', '', '', '1970-01-01'),
(23, 6, 'CHILDREN', '', '', '', '1970-01-01'),
(24, 6, 'CHILDREN', '', '', '', '1970-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `color` varchar(7) NOT NULL DEFAULT '#3a87ad',
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `allDay` varchar(50) NOT NULL DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `color`, `start`, `end`, `allDay`) VALUES
(6, 'aaaaaa', '', '#000', '2018-06-06 00:00:00', '2018-06-07 00:00:00', 'true'),
(7, 'labor day', '', '#FFD700', '2018-06-07 00:00:00', '2018-06-08 00:00:00', 'true'),
(8, 'National Independence Day', '', '#40E0D0', '2018-06-12 00:00:00', '2018-06-13 00:00:00', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `other_beneficiary`
--

CREATE TABLE `other_beneficiary` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) NOT NULL,
  `relationship` varchar(100) NOT NULL,
  `birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `other_beneficiary`
--

INSERT INTO `other_beneficiary` (`id`, `employee_id`, `last_name`, `first_name`, `middle_name`, `relationship`, `birthdate`) VALUES
(1, 1, 'Guarin', 'Richelito', 'Caballero', 'Father', '1969-01-12'),
(2, 1, 'Guarin', 'Rosita', 'Ramos', 'Mother', '1976-03-26'),
(3, 2, 'Pauso', 'Francis', 'Cruz', 'Father', '1970-01-01'),
(4, 2, 'Pauso', 'Bernice', 'Santos', 'Mother', '1970-01-01'),
(5, 3, 'Cruz', 'Lauro', 'Sakay', 'Father', '1965-03-02'),
(6, 3, 'Cruz', 'Zenaida', 'Calimon', 'Mother', '1965-03-13'),
(7, 4, 'Caramat', 'Sonia', 'Tela', 'Mother', '1966-10-04'),
(8, 4, 'Caramat', 'Pablo', 'Viduya', 'Father', '1964-12-13'),
(9, 5, 'Bondoc', 'Noralyn', 'Silvestre', 'Mother', '1970-01-01'),
(10, 5, 'Bondoc', 'Homer', 'Yabut', 'Father', '1970-01-01'),
(11, 6, 'Baccay', 'Moises', 'Bucad', 'Father', '1970-04-17'),
(12, 6, 'Baccay', 'Marissa', 'Bucad', 'Mother', '1968-03-01'),
(13, 7, '', '', '', '', '1970-01-01'),
(14, 7, '', '', '', '', '1970-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `sss_table`
--

CREATE TABLE `sss_table` (
  `sss_id` int(11) NOT NULL,
  `range_from` double DEFAULT NULL,
  `range_to` double DEFAULT NULL,
  `monthly_salary` double DEFAULT NULL,
  `ER` double DEFAULT NULL,
  `EE` double DEFAULT NULL,
  `EC` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sss_table`
--

INSERT INTO `sss_table` (`sss_id`, `range_from`, `range_to`, `monthly_salary`, `ER`, `EE`, `EC`) VALUES
(1, 1000, 1249.99, 1000, 73.7, 36.3, 10),
(2, 1250, 1749.99, 1500, 110.5, 54.5, 10),
(3, 1750, 2249.99, 2000, 147.3, 72.7, 10),
(4, 2250, 2749.99, 2500, 184.2, 90.8, 10),
(5, 2750, 3249.99, 3000, 221, 109, 10),
(6, 3250, 3749.99, 3500, 257.8, 127.2, 10),
(7, 3750, 4249.99, 4000, 294.7, 145.3, 10),
(8, 4250, 4749.99, 4500, 331.5, 163.5, 10),
(9, 4750, 5249.99, 5000, 368.3, 181.7, 10),
(10, 5250, 5749.99, 5500, 405.2, 199.8, 10),
(11, 5750, 6249.99, 6000, 442, 218, 10),
(12, 6250, 6749.99, 6500, 478.8, 236.2, 10),
(13, 6750, 7249.99, 7000, 515.7, 254.3, 10),
(14, 7250, 7749.99, 7500, 552.5, 272.5, 10),
(15, 7750, 8249.99, 8000, 589.3, 290.7, 10),
(16, 8250, 8749.99, 8500, 626.2, 308.8, 10),
(17, 8750, 9249.99, 9000, 663, 327, 10),
(18, 9250, 9749.99, 9500, 699.8, 345.2, 10),
(19, 9750, 10249.99, 10000, 736.7, 363.3, 10),
(20, 10250, 10749.99, 10500, 773.5, 381.5, 10),
(21, 10750, 11249.99, 11000, 810.3, 399.7, 10),
(22, 11250, 11749.99, 11500, 847.2, 417.8, 10),
(23, 11750, 12249.99, 12000, 884, 436, 10),
(24, 12250, 12749.99, 12500, 920.8, 454.2, 10),
(25, 12750, 13249.99, 13000, 957.7, 472.2, 10),
(26, 13250, 13749.99, 13500, 994.5, 490.5, 10),
(27, 13750, 14249.99, 14000, 1031.3, 508.7, 10),
(28, 14250, 14749.99, 14500, 1068.2, 526.8, 10),
(29, 14750, 15249.99, 15000, 1105, 545, 30),
(30, 15250, 15749.99, 15500, 1141.8, 563.2, 30),
(31, 15750, 1000000, 16000, 1178.7, 581.3, 30);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `id` int(11) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cut_off_date`
--

CREATE TABLE `tbl_cut_off_date` (
  `id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `is_process` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cut_off_date`
--

INSERT INTO `tbl_cut_off_date` (`id`, `start_date`, `end_date`, `is_process`) VALUES
(2, '2018-05-05', '2018-05-22', 0),
(3, '2018-05-08', '2018-05-09', 0),
(4, '2018-05-05', '2018-05-22', 0),
(6, '2018-04-21', '2018-05-04', 0),
(7, '2018-05-05', '2018-05-22', 0),
(8, '2018-05-08', '2018-05-09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees`
--

CREATE TABLE `tbl_employees` (
  `id` int(11) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `age` varchar(10) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `registered_address` text NOT NULL,
  `provincial_address` text NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `employment_status` varchar(50) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `sss_no` varchar(20) NOT NULL,
  `pagibig_no` varchar(20) NOT NULL,
  `phil_no` varchar(20) NOT NULL,
  `tin_no` varchar(20) NOT NULL,
  `tax_exemption` int(11) NOT NULL,
  `date_hired` date NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employees`
--

INSERT INTO `tbl_employees` (`id`, `employee_number`, `last_name`, `first_name`, `middle_name`, `age`, `gender`, `birthdate`, `status`, `registered_address`, `provincial_address`, `contact_number`, `employment_status`, `salary`, `sss_no`, `pagibig_no`, `phil_no`, `tin_no`, `tax_exemption`, `date_hired`, `company_id`, `branch_id`, `department_id`, `created_date`, `created_by`) VALUES
(1, 240, 'Guarin', 'Christian', 'Ramos', '21', 'Male', '1997-04-17', 'Single', '159 Malagasang II-A Imus City, Cavite', '', '09477220185', 'Regular', '13000.00', '3467453239', '121198597143', '080515673222', '703110488200', 1, '2017-06-08', 1, 18, 5, '2018-06-14', 'pyrllnhfc'),
(2, 777, 'Pauso', 'Keith Francis', 'Vicente', '28', 'Male', '1990-04-22', 'Single', '308 Captain Manzano Street Barangay Pedro Cruz San Juan City M.M', 'N/A', '09161826971', 'Probationary', '13000.00', '34-2874625-7', '12345667899', '12345689', '310-930-163', 1, '2018-04-16', 1, 18, 5, '2018-06-14', 'pyrllnhfc'),
(3, 234, 'Cruz', 'Paul John', 'Calimon', '22', 'Male', '1995-10-01', 'Single', 'Rm408 NBP Bldg. Aurora Blvd. San Juan CIty', '244 Salvador Oliver St. Sta. Ines Bulacan, Bulacan', '09061236294', 'Regular', '10000.00', '3463661436', '123456', '210254302370', '332688201', 1, '2017-03-01', 1, 18, 3, '2018-06-14', 'pyrllnhfc'),
(4, 229, 'Caramat', 'Sharra Jane', 'Tela', '23', 'Female', '1995-04-02', 'Single', '129B. C Benitez St. Kaunlaran, Quezon city', '#012 Tol Village Prk 7, Saranay Cabatuan Isabela', '09971737549', 'Regular', '10000.00', '0238543711', '123456789', '05-025518395-5', '468-800-120', 1, '2016-10-15', 1, 18, 3, '2018-06-14', 'pyrllnhfc'),
(5, 243, 'Bondoc', 'Gazel James', 'Silvestre', '20', 'Male', '1997-10-08', 'Single', '08 Tagumpay St., Gulod Novaliches Quezon City', '', '09091548297', 'Regular', '20000.00', '123456789', '123456789', '123456789', '123456789', 1, '2017-09-20', 1, 18, 3, '2018-06-14', 'pyrllnhfc'),
(6, 233, 'Baccay', 'Mark Davis', 'Baccay', '24', 'Male', '1993-07-21', 'Single', 'Marilao, Bulacan', '', '09267949872', 'Regular', '25000.00', '0123561867', '07219314515', '456789123', '45156421541', 1, '2017-02-01', 1, 18, 3, '2018-06-14', 'pyrllnhfc'),
(7, 139, 'Dimaguila', 'Mar Henria', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(8, 141, 'Mortiz', 'Babelyn', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(10, 183, 'Betarmos', 'Marikris', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(11, 195, 'Jayson', 'Ruel', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(12, 2, 'Ramos', 'Annaliza', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(13, 217, 'Garcia', 'Menard', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(14, 23, 'Manalo', 'Irene', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(15, 25, 'Mayo', 'Aristeo', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(16, 815, 'Guina', 'Pia Marie', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(17, 153, 'Fularon', 'Rholee', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(18, 24, 'Beldia', 'Warlindo', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(19, 28, 'Lamsen', 'Jose Barcoma', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(20, 4, 'Chumacera', 'Luis', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(21, 85, 'Minas', 'Jessie', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(22, 104, 'Crisostomo', 'Allan Francis', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(23, 107, 'Arroyo', 'Francis', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(24, 155, 'Vocal', 'Franz Mae', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(25, 259, 'Angeles', 'Adrian', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(26, 475, 'Mendoza', 'Cecilia', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(27, 159, 'Abilar', 'Kenneth', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(29, 2222, 'Bihasa', 'Claire Antonnete', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(30, 252, 'Alcazaren', 'Melchie', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(31, 257, 'Francisco', 'Raymart', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(32, 248, 'Panalaigan', 'Raynnere', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(33, 261, 'Espano', 'Joseph', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(34, 317, 'Saure', 'Imelda', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', ''),
(35, 655, 'Espenido', 'Joselito', '', '', '', '0000-00-00', '', '', '', '', '', '0.00', '', '', '', '', 0, '0000-00-00', 0, 0, 0, '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_in_attendance`
--

CREATE TABLE `tbl_in_attendance` (
  `id` int(11) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dates` date NOT NULL,
  `times` datetime NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_in_attendance`
--

INSERT INTO `tbl_in_attendance` (`id`, `employee_number`, `name`, `dates`, `times`, `status`) VALUES
(1, 2, 'Annaliza Ramos', '2018-05-08', '2018-05-08 07:57:39', 'in'),
(2, 2, 'Annaliza Ramos ', '2018-05-09', '2018-05-09 00:00:00', 'NO IN'),
(3, 4, 'Luis Chumacera', '2018-05-08', '2018-05-08 06:31:23', 'in'),
(4, 4, 'Luis Chumacera', '2018-05-09', '2018-05-09 07:37:46', 'in'),
(5, 23, 'Irene Manalo', '2018-05-08', '2018-05-08 08:02:02', 'in'),
(6, 23, 'Irene Manalo', '2018-05-09', '2018-05-09 08:00:27', 'in'),
(7, 24, 'Warlindo Beldia', '2018-05-08', '2018-05-08 07:38:28', 'in'),
(8, 24, 'Warlindo Beldia', '2018-05-09', '2018-05-09 07:23:02', 'in'),
(9, 25, 'Aristeo Mayo ', '2018-05-08', '2018-05-08 00:00:00', 'NO IN'),
(10, 25, 'Aristeo Mayo ', '2018-05-09', '2018-05-09 00:00:00', 'NO IN'),
(11, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-08', '2018-05-08 05:28:48', 'in'),
(12, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-09', '2018-05-09 07:08:42', 'in'),
(13, 85, 'Jessie Minas', '2018-05-08', '2018-05-08 05:38:53', 'in'),
(14, 85, 'Jessie Minas', '2018-05-09', '2018-05-09 07:52:12', 'in'),
(15, 104, 'Allan Francis Crisostomo', '2018-05-08', '2018-05-08 07:47:20', 'in'),
(16, 104, 'Allan Francis Crisostomo', '2018-05-09', '2018-05-09 07:55:47', 'in'),
(17, 107, 'Francis Arroyo', '2018-05-08', '2018-05-08 07:51:43', 'in'),
(18, 107, 'Francis Arroyo', '2018-05-09', '2018-05-09 07:56:10', 'in'),
(19, 139, 'Mar Henria Dimaguila', '2018-05-08', '2018-05-08 07:54:09', 'in'),
(20, 139, 'Mar Henria Dimaguila', '2018-05-09', '2018-05-09 07:36:57', 'in'),
(21, 141, 'Babelyn Mortiz', '2018-05-08', '2018-05-08 07:51:03', 'in'),
(22, 141, 'Babelyn Mortiz', '2018-05-09', '2018-05-09 07:50:41', 'in'),
(23, 153, 'Rholee Fularon', '2018-05-08', '2018-05-08 06:05:54', 'in'),
(24, 153, 'Rholee Fularon', '2018-05-09', '2018-05-09 07:18:03', 'in'),
(25, 155, 'Franz Mae Vocal', '2018-05-08', '2018-05-08 07:27:02', 'in'),
(26, 155, 'Franz Mae Vocal', '2018-05-09', '2018-05-09 07:27:09', 'in'),
(27, 159, 'Kenneth Abilar', '2018-05-08', '2018-05-08 08:07:24', 'in'),
(28, 159, 'Kenneth Abilar', '2018-05-09', '2018-05-09 08:18:18', 'in'),
(29, 183, 'Marikris Betarmos', '2018-05-08', '2018-05-08 07:28:40', 'in'),
(30, 183, 'Marikris Betarmos', '2018-05-09', '2018-05-09 07:27:25', 'in'),
(31, 195, 'Ruel Jayson ', '2018-05-08', '2018-05-08 00:00:00', 'NO IN'),
(32, 195, 'Roel P. Jayson', '2018-05-09', '2018-05-09 09:39:46', 'in'),
(33, 217, 'Menard Garcia', '2018-05-08', '2018-05-08 07:54:26', 'in'),
(34, 217, 'Menard Garcia', '2018-05-09', '2018-05-09 07:49:23', 'in'),
(35, 229, 'Sharra Jane T. Caramat', '2018-05-08', '2018-05-08 07:49:09', 'in'),
(36, 229, 'Sharra Jane T. Caramat', '2018-05-09', '2018-05-09 07:58:37', 'in'),
(37, 233, 'Mark Davis B. Baccay', '2018-05-08', '2018-05-08 06:55:31', 'in'),
(38, 233, 'Mark Davis B. Baccay', '2018-05-09', '2018-05-09 07:14:15', 'in'),
(39, 234, 'Paul John Cruz', '2018-05-08', '2018-05-08 08:00:00', 'in'),
(40, 234, 'Paul John Cruz', '2018-05-09', '2018-05-09 07:59:37', 'in'),
(41, 240, 'Christian Ramos Guarin', '2018-05-08', '2018-05-08 07:59:15', 'in'),
(42, 240, 'Christian Ramos Guarin', '2018-05-09', '2018-05-09 07:59:41', 'in'),
(43, 243, 'Gazel James S. Bondoc', '2018-05-08', '2018-05-08 07:38:32', 'in'),
(44, 243, 'Gazel James S. Bondoc', '2018-05-09', '2018-05-09 07:53:47', 'in'),
(45, 248, 'Raynnere B. Panalaigan', '2018-05-08', '2018-05-08 08:00:32', 'in'),
(46, 248, 'Raynnere B. Panalaigan', '2018-05-09', '2018-05-09 07:59:51', 'in'),
(47, 252, 'Melchie Alcazaren ', '2018-05-08', '2018-05-08 00:00:00', 'NO IN'),
(48, 252, 'Melchie Alcazaren', '2018-05-09', '2018-05-09 07:21:17', 'in'),
(49, 257, 'Raymart Francisco ', '2018-05-08', '2018-05-08 00:00:00', 'NO IN'),
(50, 257, 'Raymart Francisco ', '2018-05-09', '2018-05-09 00:00:00', 'NO IN'),
(51, 259, 'Adrian C. Angeles', '2018-05-08', '2018-05-08 08:20:13', 'in'),
(52, 259, 'Adrian C. Angeles', '2018-05-09', '2018-05-09 08:57:13', 'in'),
(53, 261, 'Joseph Espano ', '2018-05-08', '2018-05-08 00:00:00', 'NO IN'),
(54, 261, 'Joseph Espano ', '2018-05-09', '2018-05-09 00:00:00', 'NO IN'),
(55, 317, 'Imelda Cuachin Saure', '2018-05-08', '2018-05-08 07:23:43', 'in'),
(56, 317, 'Imelda Cuachin Saure', '2018-05-09', '2018-05-09 07:07:44', 'in'),
(57, 475, 'Cecilia Mendoza', '2018-05-08', '2018-05-08 08:17:52', 'in'),
(58, 475, 'Cecilia Mendoza', '2018-05-09', '2018-05-09 08:00:39', 'in'),
(59, 655, 'Joselito E. Espenido Jr.', '2018-05-08', '2018-05-08 07:55:37', 'in'),
(60, 655, 'Joselito E. Espenido Jr.', '2018-05-09', '2018-05-09 08:11:46', 'in'),
(61, 777, 'Keith Francis V. Pauso', '2018-05-08', '2018-05-08 07:52:42', 'in'),
(62, 777, 'Keith Francis V. Pauso', '2018-05-09', '2018-05-09 07:49:12', 'in'),
(63, 815, 'Pia Marie G. Guina', '2018-05-08', '2018-05-08 07:54:22', 'in'),
(64, 815, 'Pia Marie G. Guina', '2018-05-09', '2018-05-09 07:52:17', 'in'),
(65, 2222, 'Claire Antonnete B. Bihasa', '2018-05-08', '2018-05-08 07:15:27', 'in'),
(66, 2222, 'Claire Antonnete B. Bihasa', '2018-05-09', '2018-05-09 07:17:47', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_in_out_ob`
--

CREATE TABLE `tbl_in_out_ob` (
  `id` int(11) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ob`
--

CREATE TABLE `tbl_ob` (
  `id` int(11) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_ob` date NOT NULL,
  `type_ob` varchar(255) NOT NULL,
  `site_designation_from` varchar(255) NOT NULL,
  `site_designation_to` varchar(255) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `time_of_departure` varchar(255) NOT NULL,
  `time_of_return` varchar(255) NOT NULL,
  `remarks` varchar(10) DEFAULT NULL,
  `process_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ob`
--

INSERT INTO `tbl_ob` (`id`, `employee_number`, `name`, `date_ob`, `type_ob`, `site_designation_from`, `site_designation_to`, `purpose`, `time_of_departure`, `time_of_return`, `remarks`, `process_date`) VALUES
(2, 252, 'Melchie Alcazaren', '2018-05-08', 'UD_in', 'HEAD OFFICE', 'HEAD OFFICE', 'HR', '8:00:00', '8:00:00', NULL, '2018-07-09'),
(4, 257, 'Raymart Francisco', '2018-05-08', 'WD', 'HEAD OFFICE', 'HEAD OFFICE', 'AUDIT', '8:00:00', '17:30:00', NULL, '2018-07-09'),
(5, 2, 'Annaliza Ramos', '2018-05-09', 'UD_in', 'HEAD OFFICE', 'HEAD OFFICE', 'hee', '8:00:00', '8:00:00', NULL, '2018-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ot`
--

CREATE TABLE `tbl_ot` (
  `id` int(11) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_ot` date NOT NULL,
  `time_in` varchar(255) NOT NULL,
  `time_out` varchar(255) NOT NULL,
  `nature_of_work` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ot`
--

INSERT INTO `tbl_ot` (`id`, `employee_number`, `name`, `date_ot`, `time_in`, `time_out`, `nature_of_work`) VALUES
(1, 240, 'Christian Ramos Guarin', '2018-05-09', '17:30:00', '19:00:00', 'Updating data in Xavi'),
(2, 240, 'Christian Ramos Guarin', '2018-05-08', '17:30:00', '20:00:00', 'Update Xavi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_out_attendance`
--

CREATE TABLE `tbl_out_attendance` (
  `id` int(11) NOT NULL,
  `in_id` int(11) NOT NULL DEFAULT '0',
  `employee_number` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dates` date NOT NULL,
  `times` datetime NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_out_attendance`
--

INSERT INTO `tbl_out_attendance` (`id`, `in_id`, `employee_number`, `name`, `dates`, `times`, `status`) VALUES
(1, 1, 2, 'Annaliza Ramos', '2018-05-08', '2018-05-08 17:32:54', 'out'),
(2, 2, 2, 'Annaliza Ramos', '2018-05-09', '2018-05-09 17:38:09', 'out'),
(3, 3, 4, 'Luis Chumacera', '2018-05-08', '2018-05-08 17:41:51', 'out'),
(4, 4, 4, 'Luis Chumacera', '2018-05-09', '2018-05-09 17:46:24', 'out'),
(5, 5, 23, 'Irene Manalo', '2018-05-08', '2018-05-08 17:35:22', 'out'),
(6, 6, 23, 'Irene Manalo', '2018-05-09', '2018-05-09 17:41:09', 'out'),
(7, 7, 24, 'Warlindo Beldia', '2018-05-08', '2018-05-08 17:49:06', 'out'),
(8, 8, 24, 'Warlindo Beldia', '2018-05-09', '2018-05-09 17:38:14', 'out'),
(9, 9, 25, 'Aristeo Mayo ', '2018-05-08', '2018-05-08 00:00:00', 'NO OUT'),
(10, 10, 25, 'Aristeo Mayo ', '2018-05-09', '2018-05-09 00:00:00', 'NO OUT'),
(11, 11, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-08', '2018-05-08 17:33:33', 'out'),
(12, 12, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-09', '2018-05-09 17:35:27', 'out'),
(13, 13, 85, 'Jessie Minas', '2018-05-08', '2018-05-08 18:07:55', 'out'),
(14, 14, 85, 'Jessie Minas', '2018-05-09', '2018-05-09 17:55:16', 'out'),
(15, 15, 104, 'Allan Francis Crisostomo', '2018-05-08', '2018-05-08 17:32:30', 'out'),
(16, 16, 104, 'Allan Francis Crisostomo', '2018-05-09', '2018-05-09 17:32:59', 'out'),
(17, 17, 107, 'Francis Arroyo', '2018-05-08', '2018-05-08 18:07:59', 'out'),
(18, 18, 107, 'Francis Arroyo', '2018-05-09', '2018-05-09 17:39:58', 'out'),
(19, 19, 139, 'Mar Henria Dimaguila', '2018-05-08', '2018-05-08 17:54:50', 'out'),
(20, 20, 139, 'Mar Henria Dimaguila', '2018-05-09', '2018-05-09 18:27:00', 'out'),
(21, 21, 141, 'Babelyn Mortiz', '2018-05-08', '2018-05-08 17:32:16', 'out'),
(22, 22, 141, 'Babelyn Mortiz', '2018-05-09', '2018-05-09 17:31:56', 'out'),
(23, 23, 153, 'Rholee Fularon', '2018-05-08', '2018-05-08 19:04:10', 'out'),
(24, 24, 153, 'Rholee Fularon', '2018-05-09', '2018-05-09 18:40:55', 'out'),
(25, 25, 155, 'Franz Mae Vocal', '2018-05-08', '2018-05-08 17:40:22', 'out'),
(26, 26, 155, 'Franz Mae Vocal', '2018-05-09', '2018-05-09 17:39:53', 'out'),
(27, 27, 159, 'Kenneth Abilar', '2018-05-08', '2018-05-08 18:28:42', 'out'),
(28, 28, 159, 'Kenneth Abilar', '2018-05-09', '2018-05-09 17:37:29', 'out'),
(29, 29, 183, 'Marikris Betarmos', '2018-05-08', '2018-05-08 17:41:39', 'out'),
(30, 30, 183, 'Marikris Betarmos', '2018-05-09', '2018-05-09 18:25:13', 'out'),
(31, 31, 195, 'Roel P. Jayson', '2018-05-08', '2018-05-08 20:03:45', 'out'),
(32, 32, 195, 'Roel P. Jayson', '2018-05-09', '2018-05-09 21:00:12', 'out'),
(33, 33, 217, 'Menard Garcia', '2018-05-08', '2018-05-08 17:45:13', 'out'),
(34, 34, 217, 'Menard Garcia', '2018-05-09', '2018-05-09 17:40:29', 'out'),
(35, 35, 229, 'Sharra Jane T. Caramat', '2018-05-08', '2018-05-08 19:02:04', 'out'),
(36, 36, 229, 'Sharra Jane Caramat Tela', '2018-05-09', '2018-05-09 00:00:00', 'NO OUT'),
(37, 37, 233, 'Mark Davis B. Baccay', '2018-05-08', '2018-05-08 19:03:06', 'out'),
(38, 38, 233, 'Mark Davis B. Baccay', '2018-05-09', '2018-05-09 17:41:24', 'out'),
(39, 39, 234, 'Paul John Cruz', '2018-05-08', '2018-05-08 19:04:03', 'out'),
(40, 40, 234, 'Paul John Cruz', '2018-05-09', '2018-05-09 17:35:44', 'out'),
(41, 41, 240, 'Christian Ramos Guarin', '2018-05-08', '2018-05-08 17:34:46', 'out'),
(42, 42, 240, 'Christian Ramos Guarin', '2018-05-09', '2018-05-09 17:35:17', 'out'),
(43, 43, 243, 'Gazel James S. Bondoc', '2018-05-08', '2018-05-08 19:03:18', 'out'),
(44, 44, 243, 'Gazel James S. Bondoc', '2018-05-09', '2018-05-09 17:37:37', 'out'),
(45, 45, 248, 'Raynnere B. Panalaigan', '2018-05-08', '2018-05-08 17:37:19', 'out'),
(46, 46, 248, 'Raynnere B. Panalaigan', '2018-05-09', '2018-05-09 17:53:29', 'out'),
(47, 47, 252, 'Melchie Alcazaren', '2018-05-08', '2018-05-08 17:32:59', 'out'),
(48, 48, 252, 'Melchie Alcazaren', '2018-05-09', '2018-05-09 17:32:54', 'out'),
(49, 49, 257, 'Raymart Francisco ', '2018-05-08', '2018-05-08 00:00:00', 'NO OUT'),
(50, 50, 257, 'Raymart Francisco ', '2018-05-09', '2018-05-09 00:00:00', 'NO OUT'),
(51, 51, 259, 'Adrian C. Angeles', '2018-05-08', '2018-05-08 17:38:38', 'out'),
(52, 52, 259, 'Adrian C. Angeles', '2018-05-09', '2018-05-09 17:43:37', 'out'),
(53, 53, 261, 'Joseph Espano ', '2018-05-08', '2018-05-08 00:00:00', 'NO OUT'),
(54, 54, 261, 'Joseph Espano ', '2018-05-09', '2018-05-09 00:00:00', 'NO OUT'),
(55, 55, 317, 'Imelda Cuachin Saure', '2018-05-08', '2018-05-08 17:37:24', 'out'),
(56, 56, 317, 'Imelda Cuachin Saure', '2018-05-09', '2018-05-09 17:53:37', 'out'),
(57, 57, 475, 'Cecilia Mendoza', '2018-05-08', '2018-05-08 17:38:29', 'out'),
(58, 58, 475, 'Cecilia Mendoza', '2018-05-09', '2018-05-09 18:29:59', 'out'),
(59, 59, 655, 'Joselito E. Espenido Jr.', '2018-05-08', '2018-05-08 17:37:29', 'out'),
(60, 60, 655, 'Joselito E. Espenido Jr.', '2018-05-09', '2018-05-09 17:36:04', 'out'),
(61, 61, 777, 'Keith Francis V. Pauso', '2018-05-08', '2018-05-08 17:31:36', 'out'),
(62, 62, 777, 'Keith Francis V. Pauso', '2018-05-09', '2018-05-09 17:31:49', 'out'),
(63, 63, 815, 'Pia Marie G. Guina', '2018-05-08', '2018-05-08 17:32:23', 'out'),
(64, 64, 815, 'Pia Marie G. Guina', '2018-05-09', '2018-05-09 17:35:10', 'out'),
(65, 65, 2222, 'Claire Antonnete B. Bihasa', '2018-05-08', '2018-05-08 17:33:08', 'out'),
(66, 66, 2222, 'Claire Antonnete B. Bihasa', '2018-05-09', '2018-05-09 18:38:29', 'out');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schedules`
--

CREATE TABLE `tbl_schedules` (
  `id` int(11) NOT NULL,
  `daily_in` varchar(255) NOT NULL,
  `daily_out` varchar(255) NOT NULL,
  `daily_friday_out` varchar(255) NOT NULL,
  `halfday_in` varchar(255) NOT NULL,
  `casual_in` varchar(255) NOT NULL,
  `casual_out` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_schedules`
--

INSERT INTO `tbl_schedules` (`id`, `daily_in`, `daily_out`, `daily_friday_out`, `halfday_in`, `casual_in`, `casual_out`) VALUES
(1, '8:00', '17:30', '16:30', '12:00', '9:00', '18:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slvl`
--

CREATE TABLE `tbl_slvl` (
  `id` int(11) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `effective_date_start` date NOT NULL,
  `effective_date_end` date NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slvl`
--

INSERT INTO `tbl_slvl` (`id`, `employee_number`, `name`, `type`, `date`, `effective_date_start`, `effective_date_end`, `reason`) VALUES
(1, 240, 'Christian Ramos Guarin', 'SL', '2018-07-05', '2018-04-21', '2018-04-21', 'LBM'),
(2, 159, 'Kenneth Abilar', 'SL', '2018-07-04', '2018-06-20', '2018-06-20', 'LBM');

-- --------------------------------------------------------

--
-- Table structure for table `temp_attendance`
--

CREATE TABLE `temp_attendance` (
  `id` int(11) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL,
  `status` varchar(25) NOT NULL,
  `is_transfer` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_attendance`
--

INSERT INTO `temp_attendance` (`id`, `employee_number`, `name`, `date_time`, `status`, `is_transfer`) VALUES
(1, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-08 05:28:48', 'in', 1),
(2, 85, 'Jessie Minas', '2018-05-08 05:38:53', 'in', 1),
(3, 153, 'Rholee Fularon', '2018-05-08 06:05:54', 'in', 1),
(4, 153, 'Rholee Fularon', '2018-05-08 06:07:01', 'in', 1),
(5, 4, 'Luis Chumacera', '2018-05-08 06:31:23', 'in', 1),
(6, 233, 'Mark Davis B. Baccay', '2018-05-08 06:55:31', 'in', 1),
(7, 2222, 'Claire Antonnete B. Bihasa', '2018-05-08 07:15:27', 'in', 1),
(8, 1111, 'Raymart A. Francisco', '2018-05-08 07:21:47', 'in', 1),
(9, 317, 'Imelda Cuachin Saure', '2018-05-08 07:23:43', 'in', 1),
(10, 152, 'Maria Carmena Docong', '2018-05-08 07:26:03', 'in', 1),
(11, 155, 'Franz Mae Vocal', '2018-05-08 07:27:02', 'in', 1),
(12, 183, 'Marikris Betarmos', '2018-05-08 07:28:40', 'in', 1),
(13, 24, 'Warlindo Beldia', '2018-05-08 07:38:28', 'in', 1),
(14, 243, 'Gazel James S. Bondoc', '2018-05-08 07:38:32', 'in', 1),
(15, 104, 'Allan Francis Crisostomo', '2018-05-08 07:47:20', 'in', 1),
(16, 229, 'Sharra Jane T. Caramat', '2018-05-08 07:49:09', 'in', 1),
(17, 141, 'Babelyn Mortiz', '2018-05-08 07:51:03', 'in', 1),
(18, 107, 'Francis Arroyo', '2018-05-08 07:51:43', 'in', 1),
(19, 777, 'Keith Francis V. Pauso', '2018-05-08 07:52:42', 'in', 1),
(20, 139, 'Mar Henria Dimaguila', '2018-05-08 07:54:09', 'in', 1),
(21, 815, 'Pia Marie G. Guina', '2018-05-08 07:54:22', 'in', 1),
(22, 217, 'Menard Garcia', '2018-05-08 07:54:26', 'in', 1),
(23, 655, 'Joselito E. Espenido Jr.', '2018-05-08 07:55:37', 'in', 1),
(24, 2, 'Annaliza Ramos', '2018-05-08 07:57:39', 'in', 1),
(25, 240, 'Christian Ramos Guarin', '2018-05-08 07:59:15', 'in', 1),
(26, 234, 'Paul John Cruz', '2018-05-08 08:00:00', 'in', 1),
(27, 248, 'Raynnere B. Panalaigan', '2018-05-08 08:00:32', 'in', 1),
(28, 23, 'Irene Manalo', '2018-05-08 08:02:02', 'in', 1),
(29, 159, 'Kenneth Abilar', '2018-05-08 08:07:24', 'in', 1),
(30, 475, 'Cecilia Mendoza', '2018-05-08 08:17:52', 'in', 1),
(31, 259, 'Adrian C. Angeles', '2018-05-08 08:20:13', 'in', 1),
(32, 20, '', '2018-05-08 08:25:00', 'out', 1),
(33, 252, 'Melchie Alcazaren', '2018-05-08 08:35:43', 'out', 1),
(34, 195, 'Roel P. Jayson', '2018-05-08 09:20:23', 'out', 1),
(35, 777, 'Keith Francis V. Pauso', '2018-05-08 17:31:25', 'in', 1),
(36, 777, 'Keith Francis V. Pauso', '2018-05-08 17:31:36', 'out', 1),
(37, 141, 'Babelyn Mortiz', '2018-05-08 17:32:16', 'out', 1),
(38, 815, 'Pia Marie G. Guina', '2018-05-08 17:32:23', 'out', 1),
(39, 104, 'Allan Francis Crisostomo', '2018-05-08 17:32:30', 'out', 1),
(40, 2, 'Annaliza Ramos', '2018-05-08 17:32:54', 'out', 1),
(41, 252, 'Melchie Alcazaren', '2018-05-08 17:32:59', 'out', 1),
(42, 2222, 'Claire Antonnete B. Bihasa', '2018-05-08 17:33:08', 'out', 1),
(43, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-08 17:33:33', 'out', 1),
(44, 240, 'Christian Ramos Guarin', '2018-05-08 17:34:46', 'out', 1),
(45, 23, 'Irene Manalo', '2018-05-08 17:35:22', 'out', 1),
(46, 1111, 'Raymart A. Francisco', '2018-05-08 17:35:54', 'out', 1),
(47, 248, 'Raynnere B. Panalaigan', '2018-05-08 17:35:59', 'out', 1),
(48, 152, 'Maria Carmena Docong', '2018-05-08 17:37:16', 'out', 1),
(49, 248, 'Raynnere B. Panalaigan', '2018-05-08 17:37:19', 'out', 1),
(50, 317, 'Imelda Cuachin Saure', '2018-05-08 17:37:24', 'out', 1),
(51, 655, 'Joselito E. Espenido Jr.', '2018-05-08 17:37:29', 'out', 1),
(52, 475, 'Cecilia Mendoza', '2018-05-08 17:38:29', 'out', 1),
(53, 259, 'Adrian C. Angeles', '2018-05-08 17:38:38', 'out', 1),
(54, 155, 'Franz Mae Vocal', '2018-05-08 17:40:22', 'out', 1),
(55, 183, 'Marikris Betarmos', '2018-05-08 17:41:39', 'out', 1),
(56, 4, 'Luis Chumacera', '2018-05-08 17:41:51', 'out', 1),
(57, 217, 'Menard Garcia', '2018-05-08 17:45:13', 'out', 1),
(58, 85, 'Jessie Minas', '2018-05-08 17:45:22', 'out', 1),
(59, 24, 'Warlindo Beldia', '2018-05-08 17:49:06', 'out', 1),
(60, 139, 'Mar Henria Dimaguila', '2018-05-08 17:54:50', 'out', 1),
(61, 85, 'Jessie Minas', '2018-05-08 18:07:55', 'out', 1),
(62, 107, 'Francis Arroyo', '2018-05-08 18:07:59', 'out', 1),
(63, 159, 'Kenneth Abilar', '2018-05-08 18:28:42', 'out', 1),
(64, 229, 'Sharra Jane T. Caramat', '2018-05-08 19:02:01', 'out', 1),
(65, 229, 'Sharra Jane T. Caramat', '2018-05-08 19:02:04', 'out', 1),
(66, 233, 'Mark Davis B. Baccay', '2018-05-08 19:03:06', 'out', 1),
(67, 243, 'Gazel James S. Bondoc', '2018-05-08 19:03:18', 'out', 1),
(68, 234, 'Paul John Cruz', '2018-05-08 19:04:03', 'out', 1),
(69, 153, 'Rholee Fularon', '2018-05-08 19:04:10', 'out', 1),
(70, 20, '', '2018-05-08 19:05:45', 'out', 1),
(71, 195, 'Roel P. Jayson', '2018-05-08 20:03:45', 'out', 1),
(72, 317, 'Imelda Cuachin Saure', '2018-05-09 07:07:44', 'in', 1),
(73, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-09 07:08:42', 'in', 1),
(74, 233, 'Mark Davis B. Baccay', '2018-05-09 07:14:15', 'in', 1),
(75, 2222, 'Claire Antonnete B. Bihasa', '2018-05-09 07:17:47', 'in', 1),
(76, 153, 'Rholee Fularon', '2018-05-09 07:18:03', 'in', 1),
(77, 252, 'Melchie Alcazaren', '2018-05-09 07:21:17', 'in', 1),
(78, 24, 'Warlindo Beldia', '2018-05-09 07:23:02', 'in', 1),
(79, 155, 'Franz Mae Vocal', '2018-05-09 07:27:09', 'in', 1),
(80, 183, 'Marikris Betarmos', '2018-05-09 07:27:25', 'in', 1),
(81, 152, 'Maria Carmena Docong', '2018-05-09 07:32:25', 'in', 1),
(82, 1111, 'Raymart A. Francisco', '2018-05-09 07:34:57', 'in', 1),
(83, 139, 'Mar Henria Dimaguila', '2018-05-09 07:36:57', 'in', 1),
(84, 4, 'Luis Chumacera', '2018-05-09 07:37:46', 'in', 1),
(85, 777, 'Keith Francis V. Pauso', '2018-05-09 07:49:12', 'in', 1),
(86, 217, 'Menard Garcia', '2018-05-09 07:49:23', 'in', 1),
(87, 141, 'Babelyn Mortiz', '2018-05-09 07:50:41', 'in', 1),
(88, 85, 'Jessie Minas', '2018-05-09 07:52:12', 'in', 1),
(89, 815, 'Pia Marie G. Guina', '2018-05-09 07:52:17', 'in', 1),
(90, 243, 'Gazel James S. Bondoc', '2018-05-09 07:53:47', 'in', 1),
(91, 104, 'Allan Francis Crisostomo', '2018-05-09 07:55:47', 'in', 1),
(92, 107, 'Francis Arroyo', '2018-05-09 07:56:10', 'in', 1),
(93, 243, 'Gazel James S. Bondoc', '2018-05-09 07:58:11', 'in', 1),
(94, 229, 'Sharra Jane T. Caramat', '2018-05-09 07:58:37', 'in', 1),
(95, 234, 'Paul John Cruz', '2018-05-09 07:59:37', 'in', 1),
(96, 240, 'Christian Ramos Guarin', '2018-05-09 07:59:41', 'in', 1),
(97, 248, 'Raynnere B. Panalaigan', '2018-05-09 07:59:51', 'in', 1),
(98, 23, 'Irene Manalo', '2018-05-09 08:00:27', 'in', 1),
(99, 475, 'Cecilia Mendoza', '2018-05-09 08:00:39', 'in', 1),
(100, 655, 'Joselito E. Espenido Jr.', '2018-05-09 08:11:46', 'in', 1),
(101, 159, 'Kenneth Abilar', '2018-05-09 08:18:18', 'in', 1),
(102, 259, 'Adrian C. Angeles', '2018-05-09 08:57:13', 'in', 1),
(103, 195, 'Roel P. Jayson', '2018-05-09 09:39:46', 'in', 1),
(104, 777, 'Keith Francis V. Pauso', '2018-05-09 17:31:49', 'out', 1),
(105, 141, 'Babelyn Mortiz', '2018-05-09 17:31:56', 'out', 1),
(106, 252, 'Melchie Alcazaren', '2018-05-09 17:32:54', 'out', 1),
(107, 104, 'Allan Francis Crisostomo', '2018-05-09 17:32:59', 'out', 1),
(108, 159, 'Kenneth Abilar', '2018-05-09 17:33:03', 'out', 1),
(109, 1111, 'Raymart A. Francisco', '2018-05-09 17:33:08', 'out', 1),
(110, 815, 'Pia Marie G. Guina', '2018-05-09 17:35:10', 'out', 1),
(111, 240, 'Christian Ramos Guarin', '2018-05-09 17:35:17', 'out', 1),
(112, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-09 17:35:27', 'out', 1),
(113, 307, '', '2018-05-09 17:35:37', 'out', 1),
(114, 234, 'Paul John Cruz', '2018-05-09 17:35:44', 'out', 1),
(115, 655, 'Joselito E. Espenido Jr.', '2018-05-09 17:35:49', 'out', 1),
(116, 655, 'Joselito E. Espenido Jr.', '2018-05-09 17:36:04', 'out', 1),
(117, 152, 'Maria Carmena Docong', '2018-05-09 17:37:22', 'out', 1),
(118, 152, 'Maria Carmena Docong', '2018-05-09 17:37:24', 'out', 1),
(119, 159, 'Kenneth Abilar', '2018-05-09 17:37:29', 'out', 1),
(120, 243, 'Gazel James S. Bondoc', '2018-05-09 17:37:37', 'out', 1),
(121, 2, 'Annaliza Ramos', '2018-05-09 17:38:09', 'out', 1),
(122, 24, 'Warlindo Beldia', '2018-05-09 17:38:14', 'out', 1),
(123, 107, 'Francis Arroyo', '2018-05-09 17:38:22', 'out', 1),
(124, 155, 'Franz Mae Vocal', '2018-05-09 17:39:53', 'out', 1),
(125, 107, 'Francis Arroyo', '2018-05-09 17:39:58', 'out', 1),
(126, 217, 'Menard Garcia', '2018-05-09 17:40:29', 'out', 1),
(127, 23, 'Irene Manalo', '2018-05-09 17:41:09', 'out', 1),
(128, 233, 'Mark Davis B. Baccay', '2018-05-09 17:41:24', 'out', 1),
(129, 259, 'Adrian C. Angeles', '2018-05-09 17:43:37', 'out', 1),
(130, 4, 'Luis Chumacera', '2018-05-09 17:46:24', 'out', 1),
(131, 248, 'Raynnere B. Panalaigan', '2018-05-09 17:53:29', 'out', 1),
(132, 317, 'Imelda Cuachin Saure', '2018-05-09 17:53:37', 'out', 1),
(133, 85, 'Jessie Minas', '2018-05-09 17:55:16', 'out', 1),
(134, 183, 'Marikris Betarmos', '2018-05-09 18:25:13', 'out', 1),
(135, 139, 'Mar Henria Dimaguila', '2018-05-09 18:27:00', 'out', 1),
(136, 475, 'Cecilia Mendoza', '2018-05-09 18:29:59', 'out', 1),
(137, 2222, 'Claire Antonnete B. Bihasa', '2018-05-09 18:38:29', 'out', 1),
(138, 153, 'Rholee Fularon', '2018-05-09 18:40:55', 'out', 1),
(139, 195, 'Roel P. Jayson', '2018-05-09 21:00:12', 'out', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dependent_beneficiary`
--
ALTER TABLE `dependent_beneficiary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_beneficiary`
--
ALTER TABLE `other_beneficiary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sss_table`
--
ALTER TABLE `sss_table`
  ADD PRIMARY KEY (`sss_id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cut_off_date`
--
ALTER TABLE `tbl_cut_off_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_in_attendance`
--
ALTER TABLE `tbl_in_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_in_out_ob`
--
ALTER TABLE `tbl_in_out_ob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ob`
--
ALTER TABLE `tbl_ob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ot`
--
ALTER TABLE `tbl_ot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_out_attendance`
--
ALTER TABLE `tbl_out_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_schedules`
--
ALTER TABLE `tbl_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slvl`
--
ALTER TABLE `tbl_slvl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_attendance`
--
ALTER TABLE `temp_attendance`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dependent_beneficiary`
--
ALTER TABLE `dependent_beneficiary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `other_beneficiary`
--
ALTER TABLE `other_beneficiary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sss_table`
--
ALTER TABLE `sss_table`
  MODIFY `sss_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cut_off_date`
--
ALTER TABLE `tbl_cut_off_date`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_in_attendance`
--
ALTER TABLE `tbl_in_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tbl_in_out_ob`
--
ALTER TABLE `tbl_in_out_ob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_ob`
--
ALTER TABLE `tbl_ob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_ot`
--
ALTER TABLE `tbl_ot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_out_attendance`
--
ALTER TABLE `tbl_out_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tbl_schedules`
--
ALTER TABLE `tbl_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_slvl`
--
ALTER TABLE `tbl_slvl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `temp_attendance`
--
ALTER TABLE `temp_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
