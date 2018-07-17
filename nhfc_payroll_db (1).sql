-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2018 at 08:24 AM
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
(10, '2018-05-08', '2018-05-09', 0),
(11, '2018-05-05', '2018-05-22', 0);

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
(1, 240, 'Christian Guarin', '2018-05-07', '2018-05-07 07:40:00', 'in'),
(2, 240, 'Christian Guarin', '2018-05-09', '2018-05-09 08:10:00', 'in'),
(3, 240, 'Christian Guarin', '2018-05-11', '2018-05-11 07:30:00', 'in');

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
  `ot_num` decimal(10,2) NOT NULL,
  `nature_of_work` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ot`
--

INSERT INTO `tbl_ot` (`id`, `employee_number`, `name`, `date_ot`, `time_in`, `time_out`, `ot_num`, `nature_of_work`) VALUES
(1, 240, 'Christian Ramos Guarin', '2018-05-08', '17:30', '19:00', '1.30', 'test etste'),
(2, 159, 'Kenneth Abilar', '2018-05-08', '17:30', '19:30', '2.00', 'UPDATING PROCESS IN XAVI'),
(3, 240, 'Christian Ramos Guarin', '2018-05-08', '17:30', '19:30', '2.00', 'UPDATING DATA IN XAVI');

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
(1, 1, 240, 'Christian Guarin', '2018-05-08', '2018-05-08 02:00:00', 'out'),
(2, 2, 240, 'Christian Guarin', '2018-05-09', '2018-05-10 02:00:00', 'out'),
(3, 3, 240, 'Christian Guarin', '2018-05-12', '2018-05-12 01:30:00', 'out');

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
  `slvl_num` int(11) DEFAULT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slvl`
--

INSERT INTO `tbl_slvl` (`id`, `employee_number`, `name`, `type`, `date`, `effective_date_start`, `effective_date_end`, `slvl_num`, `reason`) VALUES
(1, 240, 'Christian Ramos Guarin', 'SL', '2018-05-08', '2018-05-08', '2018-05-08', 1, 'Headache/LBM'),
(2, 240, 'Christian Ramos Guarin', 'SL', '2018-05-05', '2018-05-05', '2018-05-05', 1, 'LBM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_time_keeping`
--

CREATE TABLE `tbl_time_keeping` (
  `id` int(11) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dates` date NOT NULL,
  `time_in` datetime NOT NULL,
  `time_out` datetime NOT NULL,
  `daily_hours` varchar(20) NOT NULL,
  `hours_late` varchar(20) NOT NULL,
  `undertime` varchar(20) NOT NULL,
  `ot_morning` varchar(20) NOT NULL,
  `ot_night` varchar(20) NOT NULL,
  `night_diff` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_time_keeping`
--

INSERT INTO `tbl_time_keeping` (`id`, `employee_number`, `name`, `dates`, `time_in`, `time_out`, `daily_hours`, `hours_late`, `undertime`, `ot_morning`, `ot_night`, `night_diff`) VALUES
(1, 240, 'Christian Guarin', '2018-05-07', '2018-05-07 07:40:00', '2018-05-08 02:00:00', '570', '0', '0', '20', '510', '240'),
(2, 240, 'Christian Guarin', '2018-05-09', '2018-05-09 08:10:00', '2018-05-10 02:00:00', '560', '10', '0', '0', '480', '240'),
(3, 240, 'Christian Guarin', '2018-05-11', '2018-05-11 07:30:00', '2018-05-12 01:30:00', '510', '0', '0', '30', '540', '210');

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
(1, 159, 'Kenneth Abilar', '2018-05-05 07:57:38', 'out', 1),
(2, 4, 'Luis Chumacera', '2018-05-05 08:13:15', 'in', 1),
(3, 240, 'Christian Ramos Guarin', '2018-05-05 08:42:59', 'in', 1),
(4, 195, 'Roel P. Jayson', '2018-05-05 08:43:03', 'in', 1),
(5, 24, 'Warlindo Beldia', '2018-05-05 09:02:35', 'in', 1),
(6, 85, 'Jessie Minas', '2018-05-05 09:22:29', 'in', 1),
(7, 159, 'Kenneth Abilar', '2018-05-05 14:13:56', 'in', 1),
(8, 2222, 'Claire Antonnete B. Bihasa', '2018-05-05 14:16:04', 'out', 1),
(9, 159, 'Kenneth Abilar', '2018-05-05 14:18:49', 'out', 1),
(10, 159, 'Kenneth Abilar', '2018-05-05 14:18:51', 'out', 1),
(11, 159, 'Kenneth Abilar', '2018-05-05 14:18:55', 'out', 1),
(12, 159, 'Kenneth Abilar', '2018-05-05 14:19:03', 'out', 1),
(13, 240, 'Christian Ramos Guarin', '2018-05-05 14:38:58', 'out', 1),
(14, 4, 'Luis Chumacera', '2018-05-05 17:37:32', 'out', 1),
(15, 85, 'Jessie Minas', '2018-05-05 18:06:42', 'out', 1),
(16, 24, 'Warlindo Beldia', '2018-05-05 18:07:09', 'out', 1),
(17, 24, 'Warlindo Beldia', '2018-05-05 18:07:43', 'out', 1),
(18, 195, 'Roel P. Jayson', '2018-05-05 19:39:21', 'out', 1),
(19, 317, 'Imelda Cuachin Saure', '2018-05-07 07:02:09', 'in', 1),
(20, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-07 07:02:22', 'in', 1),
(21, 153, 'Rholee Fularon', '2018-05-07 07:04:28', 'in', 1),
(22, 252, 'Melchie Alcazaren', '2018-05-07 07:08:01', 'in', 1),
(23, 2222, 'Claire Antonnete B. Bihasa', '2018-05-07 07:08:06', 'in', 1),
(24, 23, 'Irene Manalo', '2018-05-07 07:16:27', 'in', 1),
(25, 152, 'Maria Carmena Docong', '2018-05-07 07:18:32', 'in', 1),
(26, 155, 'Franz Mae Vocal', '2018-05-07 07:27:18', 'in', 1),
(27, 24, 'Warlindo Beldia', '2018-05-07 07:29:30', 'in', 1),
(28, 183, 'Marikris Betarmos', '2018-05-07 07:30:08', 'in', 1),
(29, 233, 'Mark Davis B. Baccay', '2018-05-07 07:32:59', 'in', 1),
(30, 85, 'Jessie Minas', '2018-05-07 07:33:03', 'in', 1),
(31, 4, 'Luis Chumacera', '2018-05-07 07:45:11', 'in', 1),
(32, 243, 'Gazel James S. Bondoc', '2018-05-07 07:47:28', 'in', 1),
(33, 141, 'Babelyn Mortiz', '2018-05-07 07:51:12', 'in', 1),
(34, 240, 'Christian Ramos Guarin', '2018-05-07 07:52:51', 'in', 1),
(35, 777, 'Keith Francis V. Pauso', '2018-05-07 07:52:57', 'in', 1),
(36, 229, 'Sharra Jane T. Caramat', '2018-05-07 07:56:59', 'in', 1),
(37, 234, 'Paul John Cruz', '2018-05-07 07:57:03', 'in', 1),
(38, 248, 'Raynnere B. Panalaigan', '2018-05-07 07:57:46', 'in', 1),
(39, 159, 'Kenneth Abilar', '2018-05-07 07:58:21', 'in', 1),
(40, 815, 'Pia Marie G. Guina', '2018-05-07 07:58:26', 'in', 1),
(41, 655, 'Joselito E. Espenido Jr.', '2018-05-07 07:58:29', 'in', 1),
(42, 1111, 'Raymart A. Francisco', '2018-05-07 08:00:24', 'in', 1),
(43, 104, 'Allan Francis Crisostomo', '2018-05-07 08:01:41', 'in', 1),
(44, 2, 'Annaliza Ramos', '2018-05-07 08:05:08', 'in', 1),
(45, 217, 'Menard Garcia', '2018-05-07 08:09:19', 'in', 1),
(46, 107, 'Francis Arroyo', '2018-05-07 08:13:59', 'in', 1),
(47, 475, 'Cecilia Mendoza', '2018-05-07 08:14:23', 'in', 1),
(48, 195, 'Roel P. Jayson', '2018-05-07 09:18:50', 'in', 1),
(49, 139, 'Mar Henria Dimaguila', '2018-05-07 11:37:09', 'in', 1),
(50, 2222, 'Claire Antonnete B. Bihasa', '2018-05-07 13:09:58', 'out', 1),
(51, 159, 'Kenneth Abilar', '2018-05-07 15:42:29', 'out', 1),
(52, 141, 'Babelyn Mortiz', '2018-05-07 17:31:49', 'out', 1),
(53, 777, 'Keith Francis V. Pauso', '2018-05-07 17:31:57', 'out', 1),
(54, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-07 17:32:04', 'out', 1),
(55, 104, 'Allan Francis Crisostomo', '2018-05-07 17:32:14', 'out', 1),
(56, 152, 'Maria Carmena Docong', '2018-05-07 17:32:42', 'out', 1),
(57, 23, 'Irene Manalo', '2018-05-07 17:32:54', 'out', 1),
(58, 252, 'Melchie Alcazaren', '2018-05-07 17:33:30', 'out', 1),
(59, 2, 'Annaliza Ramos', '2018-05-07 17:33:43', 'out', 1),
(60, 815, 'Pia Marie G. Guina', '2018-05-07 17:34:01', 'out', 1),
(61, 259, 'Adrian C. Angeles', '2018-05-07 17:34:10', 'out', 1),
(62, 234, 'Paul John Cruz', '2018-05-07 17:34:14', 'out', 1),
(63, 229, 'Sharra Jane T. Caramat', '2018-05-07 17:34:17', 'out', 1),
(64, 240, 'Christian Ramos Guarin', '2018-05-07 17:34:21', 'out', 1),
(65, 233, 'Mark Davis B. Baccay', '2018-05-07 17:34:32', 'out', 1),
(66, 243, 'Gazel James S. Bondoc', '2018-05-07 17:35:18', 'out', 1),
(67, 815, 'Pia Marie G. Guina', '2018-05-07 17:37:10', 'out', 1),
(68, 159, 'Kenneth Abilar', '2018-05-07 17:37:14', 'out', 1),
(69, 475, 'Cecilia Mendoza', '2018-05-07 17:38:24', 'out', 1),
(70, 155, 'Franz Mae Vocal', '2018-05-07 17:38:45', 'out', 1),
(71, 107, 'Francis Arroyo', '2018-05-07 17:38:47', 'out', 1),
(72, 217, 'Menard Garcia', '2018-05-07 17:38:55', 'out', 1),
(73, 159, 'Kenneth Abilar', '2018-05-07 17:39:12', 'out', 1),
(74, 183, 'Marikris Betarmos', '2018-05-07 17:50:10', 'out', 1),
(75, 139, 'Mar Henria Dimaguila', '2018-05-07 17:50:13', 'out', 1),
(76, 153, 'Rholee Fularon', '2018-05-07 19:05:24', 'out', 1),
(77, 24, 'Warlindo Beldia', '2018-05-07 19:11:19', 'out', 1),
(78, 85, 'Jessie Minas', '2018-05-07 19:15:57', 'out', 1),
(79, 4, 'Luis Chumacera', '2018-05-07 19:18:16', 'out', 1),
(80, 1111, 'Raymart A. Francisco', '2018-05-07 19:33:03', 'out', 1),
(81, 655, 'Joselito E. Espenido Jr.', '2018-05-07 19:33:08', 'out', 1),
(82, 248, 'Raynnere B. Panalaigan', '2018-05-07 19:33:13', 'out', 1),
(83, 317, 'Imelda Cuachin Saure', '2018-05-07 19:33:21', 'out', 1),
(84, 195, 'Roel P. Jayson', '2018-05-07 20:10:00', 'out', 1),
(85, 195, 'Roel P. Jayson', '2018-05-07 20:10:06', 'out', 1),
(86, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-08 05:28:48', 'in', 1),
(87, 85, 'Jessie Minas', '2018-05-08 05:38:53', 'in', 1),
(88, 153, 'Rholee Fularon', '2018-05-08 06:05:54', 'in', 1),
(89, 153, 'Rholee Fularon', '2018-05-08 06:07:01', 'in', 1),
(90, 4, 'Luis Chumacera', '2018-05-08 06:31:23', 'in', 1),
(91, 233, 'Mark Davis B. Baccay', '2018-05-08 06:55:31', 'in', 1),
(92, 2222, 'Claire Antonnete B. Bihasa', '2018-05-08 07:15:27', 'in', 1),
(93, 1111, 'Raymart A. Francisco', '2018-05-08 07:21:47', 'in', 1),
(94, 317, 'Imelda Cuachin Saure', '2018-05-08 07:23:43', 'in', 1),
(95, 152, 'Maria Carmena Docong', '2018-05-08 07:26:03', 'in', 1),
(96, 155, 'Franz Mae Vocal', '2018-05-08 07:27:02', 'in', 1),
(97, 183, 'Marikris Betarmos', '2018-05-08 07:28:40', 'in', 1),
(98, 24, 'Warlindo Beldia', '2018-05-08 07:38:28', 'in', 1),
(99, 243, 'Gazel James S. Bondoc', '2018-05-08 07:38:32', 'in', 1),
(100, 104, 'Allan Francis Crisostomo', '2018-05-08 07:47:20', 'in', 1),
(101, 229, 'Sharra Jane T. Caramat', '2018-05-08 07:49:09', 'in', 1),
(102, 141, 'Babelyn Mortiz', '2018-05-08 07:51:03', 'in', 1),
(103, 107, 'Francis Arroyo', '2018-05-08 07:51:43', 'in', 1),
(104, 777, 'Keith Francis V. Pauso', '2018-05-08 07:52:42', 'in', 1),
(105, 139, 'Mar Henria Dimaguila', '2018-05-08 07:54:09', 'in', 1),
(106, 815, 'Pia Marie G. Guina', '2018-05-08 07:54:22', 'in', 1),
(107, 217, 'Menard Garcia', '2018-05-08 07:54:26', 'in', 1),
(108, 655, 'Joselito E. Espenido Jr.', '2018-05-08 07:55:37', 'in', 1),
(109, 2, 'Annaliza Ramos', '2018-05-08 07:57:39', 'in', 1),
(110, 240, 'Christian Ramos Guarin', '2018-05-08 07:59:15', 'in', 1),
(111, 234, 'Paul John Cruz', '2018-05-08 08:00:00', 'in', 1),
(112, 248, 'Raynnere B. Panalaigan', '2018-05-08 08:00:32', 'in', 1),
(113, 23, 'Irene Manalo', '2018-05-08 08:02:02', 'in', 1),
(114, 159, 'Kenneth Abilar', '2018-05-08 08:07:24', 'in', 1),
(115, 475, 'Cecilia Mendoza', '2018-05-08 08:17:52', 'in', 1),
(116, 259, 'Adrian C. Angeles', '2018-05-08 08:20:13', 'in', 1),
(117, 20, '', '2018-05-08 08:25:00', 'out', 1),
(118, 252, 'Melchie Alcazaren', '2018-05-08 08:35:43', 'out', 1),
(119, 195, 'Roel P. Jayson', '2018-05-08 09:20:23', 'out', 1),
(120, 777, 'Keith Francis V. Pauso', '2018-05-08 17:31:25', 'in', 1),
(121, 777, 'Keith Francis V. Pauso', '2018-05-08 17:31:36', 'out', 1),
(122, 141, 'Babelyn Mortiz', '2018-05-08 17:32:16', 'out', 1),
(123, 815, 'Pia Marie G. Guina', '2018-05-08 17:32:23', 'out', 1),
(124, 104, 'Allan Francis Crisostomo', '2018-05-08 17:32:30', 'out', 1),
(125, 2, 'Annaliza Ramos', '2018-05-08 17:32:54', 'out', 1),
(126, 252, 'Melchie Alcazaren', '2018-05-08 17:32:59', 'out', 1),
(127, 2222, 'Claire Antonnete B. Bihasa', '2018-05-08 17:33:08', 'out', 1),
(128, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-08 17:33:33', 'out', 1),
(129, 240, 'Christian Ramos Guarin', '2018-05-08 17:34:46', 'out', 1),
(130, 23, 'Irene Manalo', '2018-05-08 17:35:22', 'out', 1),
(131, 1111, 'Raymart A. Francisco', '2018-05-08 17:35:54', 'out', 1),
(132, 248, 'Raynnere B. Panalaigan', '2018-05-08 17:35:59', 'out', 1),
(133, 152, 'Maria Carmena Docong', '2018-05-08 17:37:16', 'out', 1),
(134, 248, 'Raynnere B. Panalaigan', '2018-05-08 17:37:19', 'out', 1),
(135, 317, 'Imelda Cuachin Saure', '2018-05-08 17:37:24', 'out', 1),
(136, 655, 'Joselito E. Espenido Jr.', '2018-05-08 17:37:29', 'out', 1),
(137, 475, 'Cecilia Mendoza', '2018-05-08 17:38:29', 'out', 1),
(138, 259, 'Adrian C. Angeles', '2018-05-08 17:38:38', 'out', 1),
(139, 155, 'Franz Mae Vocal', '2018-05-08 17:40:22', 'out', 1),
(140, 183, 'Marikris Betarmos', '2018-05-08 17:41:39', 'out', 1),
(141, 4, 'Luis Chumacera', '2018-05-08 17:41:51', 'out', 1),
(142, 217, 'Menard Garcia', '2018-05-08 17:45:13', 'out', 1),
(143, 85, 'Jessie Minas', '2018-05-08 17:45:22', 'out', 1),
(144, 24, 'Warlindo Beldia', '2018-05-08 17:49:06', 'out', 1),
(145, 139, 'Mar Henria Dimaguila', '2018-05-08 17:54:50', 'out', 1),
(146, 85, 'Jessie Minas', '2018-05-08 18:07:55', 'out', 1),
(147, 107, 'Francis Arroyo', '2018-05-08 18:07:59', 'out', 1),
(148, 159, 'Kenneth Abilar', '2018-05-08 18:28:42', 'out', 1),
(149, 229, 'Sharra Jane T. Caramat', '2018-05-08 19:02:01', 'out', 1),
(150, 229, 'Sharra Jane T. Caramat', '2018-05-08 19:02:04', 'out', 1),
(151, 233, 'Mark Davis B. Baccay', '2018-05-08 19:03:06', 'out', 1),
(152, 243, 'Gazel James S. Bondoc', '2018-05-08 19:03:18', 'out', 1),
(153, 234, 'Paul John Cruz', '2018-05-08 19:04:03', 'out', 1),
(154, 153, 'Rholee Fularon', '2018-05-08 19:04:10', 'out', 1),
(155, 20, '', '2018-05-08 19:05:45', 'out', 1),
(156, 195, 'Roel P. Jayson', '2018-05-08 20:03:45', 'out', 1),
(157, 317, 'Imelda Cuachin Saure', '2018-05-09 07:07:44', 'in', 1),
(158, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-09 07:08:42', 'in', 1),
(159, 233, 'Mark Davis B. Baccay', '2018-05-09 07:14:15', 'in', 1),
(160, 2222, 'Claire Antonnete B. Bihasa', '2018-05-09 07:17:47', 'in', 1),
(161, 153, 'Rholee Fularon', '2018-05-09 07:18:03', 'in', 1),
(162, 252, 'Melchie Alcazaren', '2018-05-09 07:21:17', 'in', 1),
(163, 24, 'Warlindo Beldia', '2018-05-09 07:23:02', 'in', 1),
(164, 155, 'Franz Mae Vocal', '2018-05-09 07:27:09', 'in', 1),
(165, 183, 'Marikris Betarmos', '2018-05-09 07:27:25', 'in', 1),
(166, 152, 'Maria Carmena Docong', '2018-05-09 07:32:25', 'in', 1),
(167, 1111, 'Raymart A. Francisco', '2018-05-09 07:34:57', 'in', 1),
(168, 139, 'Mar Henria Dimaguila', '2018-05-09 07:36:57', 'in', 1),
(169, 4, 'Luis Chumacera', '2018-05-09 07:37:46', 'in', 1),
(170, 777, 'Keith Francis V. Pauso', '2018-05-09 07:49:12', 'in', 1),
(171, 217, 'Menard Garcia', '2018-05-09 07:49:23', 'in', 1),
(172, 141, 'Babelyn Mortiz', '2018-05-09 07:50:41', 'in', 1),
(173, 85, 'Jessie Minas', '2018-05-09 07:52:12', 'in', 1),
(174, 815, 'Pia Marie G. Guina', '2018-05-09 07:52:17', 'in', 1),
(175, 243, 'Gazel James S. Bondoc', '2018-05-09 07:53:47', 'in', 1),
(176, 104, 'Allan Francis Crisostomo', '2018-05-09 07:55:47', 'in', 1),
(177, 107, 'Francis Arroyo', '2018-05-09 07:56:10', 'in', 1),
(178, 243, 'Gazel James S. Bondoc', '2018-05-09 07:58:11', 'in', 1),
(179, 229, 'Sharra Jane T. Caramat', '2018-05-09 07:58:37', 'in', 1),
(180, 234, 'Paul John Cruz', '2018-05-09 07:59:37', 'in', 1),
(181, 240, 'Christian Ramos Guarin', '2018-05-09 07:59:41', 'in', 1),
(182, 248, 'Raynnere B. Panalaigan', '2018-05-09 07:59:51', 'in', 1),
(183, 23, 'Irene Manalo', '2018-05-09 08:00:27', 'in', 1),
(184, 475, 'Cecilia Mendoza', '2018-05-09 08:00:39', 'in', 1),
(185, 655, 'Joselito E. Espenido Jr.', '2018-05-09 08:11:46', 'in', 1),
(186, 159, 'Kenneth Abilar', '2018-05-09 08:18:18', 'in', 1),
(187, 259, 'Adrian C. Angeles', '2018-05-09 08:57:13', 'in', 1),
(188, 195, 'Roel P. Jayson', '2018-05-09 09:39:46', 'in', 1),
(189, 777, 'Keith Francis V. Pauso', '2018-05-09 17:31:49', 'out', 1),
(190, 141, 'Babelyn Mortiz', '2018-05-09 17:31:56', 'out', 1),
(191, 252, 'Melchie Alcazaren', '2018-05-09 17:32:54', 'out', 1),
(192, 104, 'Allan Francis Crisostomo', '2018-05-09 17:32:59', 'out', 1),
(193, 159, 'Kenneth Abilar', '2018-05-09 17:33:03', 'out', 1),
(194, 1111, 'Raymart A. Francisco', '2018-05-09 17:33:08', 'out', 1),
(195, 815, 'Pia Marie G. Guina', '2018-05-09 17:35:10', 'out', 1),
(196, 240, 'Christian Ramos Guarin', '2018-05-09 17:35:17', 'out', 1),
(197, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-09 17:35:27', 'out', 1),
(198, 307, '', '2018-05-09 17:35:37', 'out', 1),
(199, 234, 'Paul John Cruz', '2018-05-09 17:35:44', 'out', 1),
(200, 655, 'Joselito E. Espenido Jr.', '2018-05-09 17:35:49', 'out', 1),
(201, 655, 'Joselito E. Espenido Jr.', '2018-05-09 17:36:04', 'out', 1),
(202, 152, 'Maria Carmena Docong', '2018-05-09 17:37:22', 'out', 1),
(203, 152, 'Maria Carmena Docong', '2018-05-09 17:37:24', 'out', 1),
(204, 159, 'Kenneth Abilar', '2018-05-09 17:37:29', 'out', 1),
(205, 243, 'Gazel James S. Bondoc', '2018-05-09 17:37:37', 'out', 1),
(206, 2, 'Annaliza Ramos', '2018-05-09 17:38:09', 'out', 1),
(207, 24, 'Warlindo Beldia', '2018-05-09 17:38:14', 'out', 1),
(208, 107, 'Francis Arroyo', '2018-05-09 17:38:22', 'out', 1),
(209, 155, 'Franz Mae Vocal', '2018-05-09 17:39:53', 'out', 1),
(210, 107, 'Francis Arroyo', '2018-05-09 17:39:58', 'out', 1),
(211, 217, 'Menard Garcia', '2018-05-09 17:40:29', 'out', 1),
(212, 23, 'Irene Manalo', '2018-05-09 17:41:09', 'out', 1),
(213, 233, 'Mark Davis B. Baccay', '2018-05-09 17:41:24', 'out', 1),
(214, 259, 'Adrian C. Angeles', '2018-05-09 17:43:37', 'out', 1),
(215, 4, 'Luis Chumacera', '2018-05-09 17:46:24', 'out', 1),
(216, 248, 'Raynnere B. Panalaigan', '2018-05-09 17:53:29', 'out', 1),
(217, 317, 'Imelda Cuachin Saure', '2018-05-09 17:53:37', 'out', 1),
(218, 85, 'Jessie Minas', '2018-05-09 17:55:16', 'out', 1),
(219, 183, 'Marikris Betarmos', '2018-05-09 18:25:13', 'out', 1),
(220, 139, 'Mar Henria Dimaguila', '2018-05-09 18:27:00', 'out', 1),
(221, 475, 'Cecilia Mendoza', '2018-05-09 18:29:59', 'out', 1),
(222, 2222, 'Claire Antonnete B. Bihasa', '2018-05-09 18:38:29', 'out', 1),
(223, 153, 'Rholee Fularon', '2018-05-09 18:40:55', 'out', 1),
(224, 195, 'Roel P. Jayson', '2018-05-09 21:00:12', 'out', 1),
(225, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-10 07:12:28', 'in', 1),
(226, 233, 'Mark Davis B. Baccay', '2018-05-10 07:12:44', 'in', 1),
(227, 317, 'Imelda Cuachin Saure', '2018-05-10 07:14:47', 'in', 1),
(228, 155, 'Franz Mae Vocal', '2018-05-10 07:18:35', 'in', 1),
(229, 183, 'Marikris Betarmos', '2018-05-10 07:23:44', 'in', 1),
(230, 107, 'Francis Arroyo', '2018-05-10 07:35:40', 'in', 1),
(231, 4, 'Luis Chumacera', '2018-05-10 07:37:54', 'in', 1),
(232, 250, '', '2018-05-10 07:40:09', 'in', 1),
(233, 24, 'Warlindo Beldia', '2018-05-10 07:40:40', 'in', 1),
(234, 152, 'Maria Carmena Docong', '2018-05-10 07:41:06', 'in', 1),
(235, 2, 'Annaliza Ramos', '2018-05-10 07:43:03', 'in', 1),
(236, 2222, 'Claire Antonnete B. Bihasa', '2018-05-10 07:44:31', 'in', 1),
(237, 159, 'Kenneth Abilar', '2018-05-10 07:50:01', 'in', 1),
(238, 815, 'Pia Marie G. Guina', '2018-05-10 07:52:27', 'in', 1),
(239, 240, 'Christian Ramos Guarin', '2018-05-10 07:52:38', 'in', 1),
(240, 229, 'Sharra Jane T. Caramat', '2018-05-10 07:53:04', 'in', 1),
(241, 243, 'Gazel James S. Bondoc', '2018-05-10 07:53:08', 'in', 1),
(242, 257, 'Raymart A. Francisco', '2018-05-10 07:53:52', 'in', 1),
(243, 777, 'Keith Francis V. Pauso', '2018-05-10 07:55:03', 'in', 1),
(244, 234, 'Paul John Cruz', '2018-05-10 07:55:58', 'in', 1),
(245, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-10 07:58:17', 'in', 1),
(246, 248, 'Raynnere B. Panalaigan', '2018-05-10 07:59:46', 'in', 1),
(247, 217, 'Menard Garcia', '2018-05-10 07:59:56', 'in', 1),
(248, 23, 'Irene Manalo', '2018-05-10 08:00:31', 'in', 1),
(249, 259, 'Adrian C. Angeles', '2018-05-10 08:03:23', 'in', 1),
(250, 104, 'Allan Francis Crisostomo', '2018-05-10 08:03:30', 'in', 1),
(251, 139, 'Mar Henria Dimaguila', '2018-05-10 08:09:25', 'in', 1),
(252, 85, 'Jessie Minas', '2018-05-10 08:11:46', 'in', 1),
(253, 475, 'Cecilia Mendoza', '2018-05-10 08:13:51', 'in', 1),
(254, 20, '', '2018-05-10 08:17:07', 'in', 1),
(255, 195, 'Roel P. Jayson', '2018-05-10 08:58:19', 'in', 1),
(256, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-10 12:36:20', 'out', 1),
(257, 777, 'Keith Francis V. Pauso', '2018-05-10 17:30:28', 'out', 1),
(258, 250, '', '2018-05-10 17:31:37', 'out', 1),
(259, 250, '', '2018-05-10 17:31:42', 'out', 1),
(260, 2, 'Annaliza Ramos', '2018-05-10 17:33:40', 'out', 1),
(261, 104, 'Allan Francis Crisostomo', '2018-05-10 17:33:45', 'out', 1),
(262, 217, 'Menard Garcia', '2018-05-10 17:33:49', 'out', 1),
(263, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-10 17:34:11', 'out', 1),
(264, 240, 'Christian Ramos Guarin', '2018-05-10 17:34:53', 'out', 1),
(265, 234, 'Paul John Cruz', '2018-05-10 17:35:09', 'out', 1),
(266, 229, 'Sharra Jane T. Caramat', '2018-05-10 17:35:43', 'out', 1),
(267, 243, 'Gazel James S. Bondoc', '2018-05-10 17:36:14', 'out', 1),
(268, 243, 'Gazel James S. Bondoc', '2018-05-10 17:36:24', 'out', 1),
(269, 233, 'Mark Davis B. Baccay', '2018-05-10 17:36:51', 'out', 1),
(270, 475, 'Cecilia Mendoza', '2018-05-10 17:38:12', 'out', 1),
(271, 23, 'Irene Manalo', '2018-05-10 17:38:37', 'out', 1),
(272, 107, 'Francis Arroyo', '2018-05-10 17:39:12', 'out', 1),
(273, 155, 'Franz Mae Vocal', '2018-05-10 17:39:26', 'out', 1),
(274, 152, 'Maria Carmena Docong', '2018-05-10 17:39:40', 'out', 1),
(275, 2222, 'Claire Antonnete B. Bihasa', '2018-05-10 17:40:34', 'out', 1),
(276, 159, 'Kenneth Abilar', '2018-05-10 17:41:52', 'out', 1),
(277, 815, 'Pia Marie G. Guina', '2018-05-10 17:42:48', 'out', 1),
(278, 4, 'Luis Chumacera', '2018-05-10 17:42:54', 'out', 1),
(279, 23, 'Irene Manalo', '2018-05-10 17:43:01', 'out', 1),
(280, 85, 'Jessie Minas', '2018-05-10 17:43:51', 'out', 1),
(281, 24, 'Warlindo Beldia', '2018-05-10 17:48:13', 'out', 1),
(282, 4, 'Luis Chumacera', '2018-05-10 17:49:26', 'out', 1),
(283, 259, 'Adrian C. Angeles', '2018-05-10 17:55:59', 'out', 1),
(284, 183, 'Marikris Betarmos', '2018-05-10 18:02:26', 'out', 1),
(285, 139, 'Mar Henria Dimaguila', '2018-05-10 18:43:09', 'out', 1),
(286, 248, 'Raynnere B. Panalaigan', '2018-05-10 20:12:13', 'out', 1),
(287, 317, 'Imelda Cuachin Saure', '2018-05-10 20:13:42', 'out', 1),
(288, 248, 'Raynnere B. Panalaigan', '2018-05-10 20:13:47', 'out', 1),
(289, 257, 'Raymart A. Francisco', '2018-05-10 20:13:56', 'out', 1),
(290, 195, 'Roel P. Jayson', '2018-05-10 20:50:32', 'out', 1),
(291, 20, '', '2018-05-10 21:13:14', 'out', 1),
(292, 317, 'Imelda Cuachin Saure', '2018-05-11 07:29:01', 'in', 1),
(293, 250, '', '2018-05-11 07:29:08', 'in', 1),
(294, 2222, 'Claire Antonnete B. Bihasa', '2018-05-11 07:29:15', 'in', 1),
(295, 233, 'Mark Davis B. Baccay', '2018-05-11 07:29:20', 'in', 1),
(296, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-11 07:29:26', 'in', 1),
(297, 153, 'Rholee Fularon', '2018-05-11 07:29:41', 'in', 1),
(298, 152, 'Maria Carmena Docong', '2018-05-11 07:32:26', 'in', 1),
(299, 183, 'Marikris Betarmos', '2018-05-11 07:33:19', 'in', 1),
(300, 107, 'Francis Arroyo', '2018-05-11 07:35:37', 'in', 1),
(301, 85, 'Jessie Minas', '2018-05-11 07:35:56', 'in', 1),
(302, 24, 'Warlindo Beldia', '2018-05-11 07:43:21', 'in', 1),
(303, 4, 'Luis Chumacera', '2018-05-11 07:43:39', 'in', 1),
(304, 243, 'Gazel James S. Bondoc', '2018-05-11 07:46:01', 'in', 1),
(305, 217, 'Menard Garcia', '2018-05-11 07:46:46', 'in', 1),
(306, 141, 'Babelyn Mortiz', '2018-05-11 07:47:37', 'in', 1),
(307, 2, 'Annaliza Ramos', '2018-05-11 07:48:41', 'in', 1),
(308, 159, 'Kenneth Abilar', '2018-05-11 07:50:40', 'in', 1),
(309, 777, 'Keith Francis V. Pauso', '2018-05-11 07:51:56', 'in', 1),
(310, 815, 'Pia Marie G. Guina', '2018-05-11 07:54:39', 'in', 1),
(311, 815, 'Pia Marie G. Guina', '2018-05-11 07:55:16', 'in', 1),
(312, 229, 'Sharra Jane T. Caramat', '2018-05-11 07:55:57', 'in', 1),
(313, 4, 'Luis Chumacera', '2018-05-11 07:56:38', 'in', 1),
(314, 248, 'Raynnere B. Panalaigan', '2018-05-11 07:58:22', 'in', 1),
(315, 234, 'Paul John Cruz', '2018-05-11 08:00:30', 'in', 1),
(316, 240, 'Christian Ramos Guarin', '2018-05-11 08:00:52', 'in', 1),
(317, 23, 'Irene Manalo', '2018-05-11 08:01:07', 'in', 1),
(318, 257, 'Raymart A. Francisco', '2018-05-11 08:01:45', 'in', 1),
(319, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-11 08:09:26', 'in', 1),
(320, 475, 'Cecilia Mendoza', '2018-05-11 08:11:36', 'in', 1),
(321, 259, 'Adrian C. Angeles', '2018-05-11 08:18:54', 'in', 1),
(322, 20, '', '2018-05-11 08:49:04', 'in', 1),
(323, 195, 'Roel P. Jayson', '2018-05-11 10:32:30', 'in', 1),
(324, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-11 12:25:36', 'out', 1),
(325, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-11 12:30:24', 'out', 1),
(326, 259, 'Adrian C. Angeles', '2018-05-11 14:02:00', 'out', 1),
(327, 229, 'Sharra Jane T. Caramat', '2018-05-11 16:32:50', 'out', 1),
(328, 777, 'Keith Francis V. Pauso', '2018-05-11 16:33:38', 'out', 1),
(329, 141, 'Babelyn Mortiz', '2018-05-11 16:33:50', 'out', 1),
(330, 815, 'Pia Marie G. Guina', '2018-05-11 16:33:55', 'out', 1),
(331, 234, 'Paul John Cruz', '2018-05-11 16:34:18', 'out', 1),
(332, 233, 'Mark Davis B. Baccay', '2018-05-11 16:36:39', 'out', 1),
(333, 240, 'Christian Ramos Guarin', '2018-05-11 16:37:19', 'out', 1),
(334, 229, 'Sharra Jane T. Caramat', '2018-05-11 16:37:22', 'out', 1),
(335, 243, 'Gazel James S. Bondoc', '2018-05-11 16:38:17', 'out', 1),
(336, 107, 'Francis Arroyo', '2018-05-11 16:38:23', 'out', 1),
(337, 23, 'Irene Manalo', '2018-05-11 16:39:37', 'out', 1),
(338, 4, 'Luis Chumacera', '2018-05-11 16:41:40', 'out', 1),
(339, 85, 'Jessie Minas', '2018-05-11 16:42:32', 'out', 1),
(340, 153, 'Rholee Fularon', '2018-05-11 16:42:42', 'out', 1),
(341, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-11 16:42:56', 'out', 1),
(342, 159, 'Kenneth Abilar', '2018-05-11 16:43:02', 'out', 1),
(343, 217, 'Menard Garcia', '2018-05-11 16:43:20', 'out', 1),
(344, 183, 'Marikris Betarmos', '2018-05-11 16:43:44', 'out', 1),
(345, 24, 'Warlindo Beldia', '2018-05-11 16:45:05', 'out', 1),
(346, 2222, 'Claire Antonnete B. Bihasa', '2018-05-11 16:46:03', 'out', 1),
(347, 152, 'Maria Carmena Docong', '2018-05-11 16:46:08', 'out', 1),
(348, 23, 'Irene Manalo', '2018-05-11 16:46:43', 'out', 1),
(349, 20, '', '2018-05-11 17:01:41', 'out', 1),
(350, 85, 'Jessie Minas', '2018-05-11 17:01:43', 'out', 1),
(351, 217, 'Menard Garcia', '2018-05-11 17:01:47', 'out', 1),
(352, 24, 'Warlindo Beldia', '2018-05-11 17:03:13', 'out', 1),
(353, 107, 'Francis Arroyo', '2018-05-11 17:29:55', 'out', 1),
(354, 183, 'Marikris Betarmos', '2018-05-11 17:30:28', 'out', 1),
(355, 159, 'Kenneth Abilar', '2018-05-11 17:40:46', 'out', 1),
(356, 248, 'Raynnere B. Panalaigan', '2018-05-11 17:52:43', 'out', 1),
(357, 317, 'Imelda Cuachin Saure', '2018-05-11 20:31:56', 'out', 1),
(358, 250, '', '2018-05-11 20:32:02', 'out', 1),
(359, 257, 'Raymart A. Francisco', '2018-05-11 20:32:06', 'out', 1),
(360, 195, 'Roel P. Jayson', '2018-05-11 21:37:01', 'out', 1),
(361, 153, 'Rholee Fularon', '2018-05-12 06:59:49', 'in', 1),
(362, 4, 'Luis Chumacera', '2018-05-12 07:20:57', 'in', 1),
(363, 85, 'Jessie Minas', '2018-05-12 07:52:10', 'in', 1),
(364, 24, 'Warlindo Beldia', '2018-05-12 09:00:01', 'in', 1),
(365, 139, 'Mar Henria Dimaguila', '2018-05-12 09:01:39', 'in', 1),
(366, 2222, 'Claire Antonnete B. Bihasa', '2018-05-12 09:55:13', 'in', 1),
(367, 139, 'Mar Henria Dimaguila', '2018-05-12 14:50:24', 'out', 1),
(368, 152, 'Maria Carmena Docong', '2018-05-12 15:15:17', 'out', 1),
(369, 24, 'Warlindo Beldia', '2018-05-12 15:16:05', 'out', 1),
(370, 85, 'Jessie Minas', '2018-05-12 15:16:31', 'out', 1),
(371, 153, 'Rholee Fularon', '2018-05-12 15:16:39', 'out', 1),
(372, 153, 'Rholee Fularon', '2018-05-12 15:16:41', 'out', 1),
(373, 2222, 'Claire Antonnete B. Bihasa', '2018-05-12 15:20:01', 'out', 1),
(374, 4, 'Luis Chumacera', '2018-05-12 15:25:01', 'out', 1),
(375, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-15 07:05:47', 'in', 1),
(376, 183, 'Marikris Betarmos', '2018-05-15 07:11:21', 'in', 1),
(377, 155, 'Franz Mae Vocal', '2018-05-15 07:15:01', 'in', 1),
(378, 655, 'Joselito E. Espenido Jr.', '2018-05-15 07:19:08', 'in', 1),
(379, 317, 'Imelda Cuachin Saure', '2018-05-15 07:20:14', 'in', 1),
(380, 153, 'Rholee Fularon', '2018-05-15 07:21:08', 'in', 1),
(381, 23, 'Irene Manalo', '2018-05-15 07:21:40', 'in', 1),
(382, 24, 'Warlindo Beldia', '2018-05-15 07:22:08', 'in', 1),
(383, 152, 'Maria Carmena Docong', '2018-05-15 07:26:14', 'in', 1),
(384, 4, 'Luis Chumacera', '2018-05-15 07:26:28', 'in', 1),
(385, 243, 'Gazel James S. Bondoc', '2018-05-15 07:26:46', 'in', 1),
(386, 85, 'Jessie Minas', '2018-05-15 07:26:49', 'in', 1),
(387, 85, 'Jessie Minas', '2018-05-15 07:26:51', 'in', 1),
(388, 233, 'Mark Davis B. Baccay', '2018-05-15 07:35:08', 'in', 1),
(389, 777, 'Keith Francis V. Pauso', '2018-05-15 07:45:35', 'in', 1),
(390, 107, 'Francis Arroyo', '2018-05-15 07:46:28', 'in', 1),
(391, 104, 'Allan Francis Crisostomo', '2018-05-15 07:47:05', 'in', 1),
(392, 159, 'Kenneth Abilar', '2018-05-15 07:47:13', 'in', 1),
(393, 139, 'Mar Henria Dimaguila', '2018-05-15 07:47:55', 'in', 1),
(394, 141, 'Babelyn Mortiz', '2018-05-15 07:48:59', 'in', 1),
(395, 815, 'Pia Marie G. Guina', '2018-05-15 07:49:05', 'in', 1),
(396, 234, 'Paul John Cruz', '2018-05-15 07:52:23', 'in', 1),
(397, 240, 'Christian Ramos Guarin', '2018-05-15 07:58:55', 'in', 1),
(398, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-15 08:02:27', 'in', 1),
(399, 2222, 'Claire Antonnete B. Bihasa', '2018-05-15 08:07:04', 'in', 1),
(400, 217, 'Menard Garcia', '2018-05-15 08:07:12', 'in', 1),
(401, 475, 'Cecilia Mendoza', '2018-05-15 08:08:38', 'in', 1),
(402, 259, 'Adrian C. Angeles', '2018-05-15 08:09:09', 'in', 1),
(403, 152, 'Maria Carmena Docong', '2018-05-15 08:25:24', 'out', 1),
(404, 655, 'Joselito E. Espenido Jr.', '2018-05-15 08:26:45', 'out', 1),
(405, 195, 'Roel P. Jayson', '2018-05-15 09:19:46', 'out', 1),
(406, 20, '', '2018-05-15 09:37:52', 'out', 1),
(407, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-15 10:25:21', 'out', 1),
(408, 195, 'Roel P. Jayson', '2018-05-15 10:41:35', 'out', 1),
(409, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-15 10:51:00', 'in', 1),
(410, 85, 'Jessie Minas', '2018-05-15 12:02:53', 'out', 1),
(411, 85, 'Jessie Minas', '2018-05-15 12:20:52', 'in', 1),
(412, 2, 'Annaliza Ramos', '2018-05-15 12:49:46', 'out', 1),
(413, 195, 'Roel P. Jayson', '2018-05-15 12:53:49', 'out', 1),
(414, 195, 'Roel P. Jayson', '2018-05-15 12:53:57', 'in', 1),
(415, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-15 12:59:59', 'out', 1),
(416, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-15 15:48:24', 'in', 1),
(417, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-15 17:31:18', 'out', 1),
(418, 141, 'Babelyn Mortiz', '2018-05-15 17:31:38', 'out', 1),
(419, 815, 'Pia Marie G. Guina', '2018-05-15 17:31:44', 'out', 1),
(420, 815, 'Pia Marie G. Guina', '2018-05-15 17:31:49', 'out', 1),
(421, 104, 'Allan Francis Crisostomo', '2018-05-15 17:32:03', 'out', 1),
(422, 777, 'Keith Francis V. Pauso', '2018-05-15 17:32:30', 'out', 1),
(423, 23, 'Irene Manalo', '2018-05-15 17:33:26', 'out', 1),
(424, 155, 'Franz Mae Vocal', '2018-05-15 17:33:32', 'out', 1),
(425, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-15 17:34:29', 'out', 1),
(426, 233, 'Mark Davis B. Baccay', '2018-05-15 17:36:01', 'out', 1),
(427, 475, 'Cecilia Mendoza', '2018-05-15 17:37:16', 'out', 1),
(428, 240, 'Christian Ramos Guarin', '2018-05-15 17:37:42', 'out', 1),
(429, 243, 'Gazel James S. Bondoc', '2018-05-15 17:38:52', 'out', 1),
(430, 234, 'Paul John Cruz', '2018-05-15 17:40:27', 'out', 1),
(431, 20, '', '2018-05-15 17:40:37', 'out', 1),
(432, 217, 'Menard Garcia', '2018-05-15 17:40:54', 'out', 1),
(433, 259, 'Adrian C. Angeles', '2018-05-15 17:41:45', 'out', 1),
(434, 4, 'Luis Chumacera', '2018-05-15 17:42:23', 'out', 1),
(435, 2222, 'Claire Antonnete B. Bihasa', '2018-05-15 17:42:37', 'out', 1),
(436, 24, 'Warlindo Beldia', '2018-05-15 17:42:44', 'out', 1),
(437, 317, 'Imelda Cuachin Saure', '2018-05-15 17:44:20', 'out', 1),
(438, 159, 'Kenneth Abilar', '2018-05-15 17:45:48', 'out', 1),
(439, 107, 'Francis Arroyo', '2018-05-15 17:45:58', 'out', 1),
(440, 85, 'Jessie Minas', '2018-05-15 17:58:08', 'out', 1),
(441, 139, 'Mar Henria Dimaguila', '2018-05-15 18:16:11', 'out', 1),
(442, 153, 'Rholee Fularon', '2018-05-15 19:00:14', 'out', 1),
(443, 195, 'Roel P. Jayson', '2018-05-15 20:33:47', 'out', 1),
(444, 85, 'Jessie Minas', '2018-05-16 07:01:18', 'out', 1),
(445, 85, 'Jessie Minas', '2018-05-16 07:01:25', 'in', 1),
(446, 85, 'Jessie Minas', '2018-05-16 07:01:28', 'in', 1),
(447, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-16 07:02:00', 'in', 1),
(448, 153, 'Rholee Fularon', '2018-05-16 07:11:26', 'in', 1),
(449, 155, 'Franz Mae Vocal', '2018-05-16 07:13:22', 'in', 1),
(450, 2222, 'Claire Antonnete B. Bihasa', '2018-05-16 07:14:15', 'in', 1),
(451, 317, 'Imelda Cuachin Saure', '2018-05-16 07:17:04', 'in', 1),
(452, 107, 'Francis Arroyo', '2018-05-16 07:18:48', 'in', 1),
(453, 233, 'Mark Davis B. Baccay', '2018-05-16 07:18:54', 'in', 1),
(454, 183, 'Marikris Betarmos', '2018-05-16 07:21:00', 'in', 1),
(455, 257, 'Raymart A. Francisco', '2018-05-16 07:22:05', 'in', 1),
(456, 24, 'Warlindo Beldia', '2018-05-16 07:33:12', 'in', 1),
(457, 243, 'Gazel James S. Bondoc', '2018-05-16 07:33:19', 'in', 1),
(458, 4, 'Luis Chumacera', '2018-05-16 07:39:48', 'in', 1),
(459, 159, 'Kenneth Abilar', '2018-05-16 07:40:47', 'in', 1),
(460, 252, 'Melchie Alcazaren', '2018-05-16 07:42:30', 'in', 1),
(461, 815, 'Pia Marie G. Guina', '2018-05-16 07:46:21', 'in', 1),
(462, 217, 'Menard Garcia', '2018-05-16 07:46:54', 'in', 1),
(463, 777, 'Keith Francis V. Pauso', '2018-05-16 07:49:04', 'in', 1),
(464, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-16 07:51:44', 'in', 1),
(465, 141, 'Babelyn Mortiz', '2018-05-16 07:53:16', 'in', 1),
(466, 23, 'Irene Manalo', '2018-05-16 07:53:51', 'in', 1),
(467, 2, 'Annaliza Ramos', '2018-05-16 07:54:04', 'in', 1),
(468, 259, 'Adrian C. Angeles', '2018-05-16 07:55:45', 'in', 1),
(469, 234, 'Paul John Cruz', '2018-05-16 07:58:29', 'in', 1),
(470, 240, 'Christian Ramos Guarin', '2018-05-16 07:59:03', 'in', 1),
(471, 475, 'Cecilia Mendoza', '2018-05-16 07:59:39', 'in', 1),
(472, 104, 'Allan Francis Crisostomo', '2018-05-16 08:00:19', 'in', 1),
(473, 139, 'Mar Henria Dimaguila', '2018-05-16 08:16:30', 'in', 1),
(474, 229, 'Sharra Jane T. Caramat', '2018-05-16 08:27:14', 'in', 1),
(475, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-16 08:55:16', 'out', 1),
(476, 195, 'Roel P. Jayson', '2018-05-16 09:27:57', 'in', 1),
(477, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-16 16:31:57', 'in', 1),
(478, 777, 'Keith Francis V. Pauso', '2018-05-16 17:30:22', 'out', 1),
(479, 141, 'Babelyn Mortiz', '2018-05-16 17:32:37', 'out', 1),
(480, 815, 'Pia Marie G. Guina', '2018-05-16 17:32:41', 'out', 1),
(481, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-16 17:33:01', 'out', 1),
(482, 183, 'Marikris Betarmos', '2018-05-16 17:33:05', 'out', 1),
(483, 252, 'Melchie Alcazaren', '2018-05-16 17:33:25', 'out', 1),
(484, 2222, 'Claire Antonnete B. Bihasa', '2018-05-16 17:33:29', 'out', 1),
(485, 104, 'Allan Francis Crisostomo', '2018-05-16 17:33:43', 'out', 1),
(486, 259, 'Adrian C. Angeles', '2018-05-16 17:34:44', 'out', 1),
(487, 107, 'Francis Arroyo', '2018-05-16 17:35:02', 'out', 1),
(488, 217, 'Menard Garcia', '2018-05-16 17:35:19', 'out', 1),
(489, 155, 'Franz Mae Vocal', '2018-05-16 17:35:25', 'out', 1),
(490, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-16 17:35:29', 'out', 1),
(491, 107, 'Francis Arroyo', '2018-05-16 17:35:32', 'out', 1),
(492, 159, 'Kenneth Abilar', '2018-05-16 17:38:10', 'out', 1),
(493, 139, 'Mar Henria Dimaguila', '2018-05-16 17:38:15', 'out', 1),
(494, 139, 'Mar Henria Dimaguila', '2018-05-16 17:38:40', 'out', 1),
(495, 23, 'Irene Manalo', '2018-05-16 17:38:45', 'out', 1),
(496, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-16 17:39:15', 'out', 1),
(497, 234, 'Paul John Cruz', '2018-05-16 17:39:32', 'out', 1),
(498, 233, 'Mark Davis B. Baccay', '2018-05-16 17:39:38', 'out', 1),
(499, 229, 'Sharra Jane T. Caramat', '2018-05-16 17:39:41', 'out', 1),
(500, 2, 'Annaliza Ramos', '2018-05-16 17:41:48', 'out', 1),
(501, 24, 'Warlindo Beldia', '2018-05-16 17:41:56', 'out', 1),
(502, 243, 'Gazel James S. Bondoc', '2018-05-16 17:42:14', 'out', 1),
(503, 4, 'Luis Chumacera', '2018-05-16 17:42:18', 'out', 1),
(504, 24, 'Warlindo Beldia', '2018-05-16 17:42:53', 'out', 1),
(505, 240, 'Christian Ramos Guarin', '2018-05-16 17:43:13', 'out', 1),
(506, 317, 'Imelda Cuachin Saure', '2018-05-16 17:46:30', 'out', 1),
(507, 257, 'Raymart A. Francisco', '2018-05-16 17:46:41', 'out', 1),
(508, 85, 'Jessie Minas', '2018-05-16 17:46:58', 'out', 1),
(509, 153, 'Rholee Fularon', '2018-05-16 18:04:20', 'out', 1),
(510, 85, 'Jessie Minas', '2018-05-16 18:04:22', 'out', 1),
(511, 195, 'Roel P. Jayson', '2018-05-16 20:22:04', 'out', 1),
(512, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-17 07:07:58', 'in', 1),
(513, 233, 'Mark Davis B. Baccay', '2018-05-17 07:11:14', 'in', 1),
(514, 317, 'Imelda Cuachin Saure', '2018-05-17 07:12:35', 'in', 1),
(515, 155, 'Franz Mae Vocal', '2018-05-17 07:12:40', 'in', 1),
(516, 655, 'Joselito E. Espenido Jr.', '2018-05-17 07:15:59', 'in', 1),
(517, 2222, 'Claire Antonnete B. Bihasa', '2018-05-17 07:21:24', 'in', 1),
(518, 153, 'Rholee Fularon', '2018-05-17 07:21:45', 'in', 1),
(519, 85, 'Jessie Minas', '2018-05-17 07:27:36', 'in', 1),
(520, 85, 'Jessie Minas', '2018-05-17 07:28:15', 'in', 1),
(521, 183, 'Marikris Betarmos', '2018-05-17 07:28:24', 'in', 1),
(522, 24, 'Warlindo Beldia', '2018-05-17 07:32:08', 'in', 1),
(523, 257, 'Raymart A. Francisco', '2018-05-17 07:34:11', 'in', 1),
(524, 4, 'Luis Chumacera', '2018-05-17 07:40:18', 'in', 1),
(525, 152, 'Maria Carmena Docong', '2018-05-17 07:40:42', 'in', 1),
(526, 159, 'Kenneth Abilar', '2018-05-17 07:41:00', 'in', 1),
(527, 2, 'Annaliza Ramos', '2018-05-17 07:44:56', 'in', 1),
(528, 243, 'Gazel James S. Bondoc', '2018-05-17 07:47:34', 'in', 1),
(529, 243, 'Gazel James S. Bondoc', '2018-05-17 07:47:45', 'in', 1),
(530, 229, 'Sharra Jane T. Caramat', '2018-05-17 07:51:22', 'in', 1),
(531, 141, 'Babelyn Mortiz', '2018-05-17 07:51:26', 'in', 1),
(532, 252, 'Melchie Alcazaren', '2018-05-17 07:51:43', 'in', 1),
(533, 23, 'Irene Manalo', '2018-05-17 07:51:48', 'in', 1),
(534, 234, 'Paul John Cruz', '2018-05-17 07:52:54', 'in', 1),
(535, 777, 'Keith Francis V. Pauso', '2018-05-17 07:53:11', 'in', 1),
(536, 139, 'Mar Henria Dimaguila', '2018-05-17 07:53:43', 'in', 1),
(537, 815, 'Pia Marie G. Guina', '2018-05-17 07:54:34', 'in', 1),
(538, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-17 07:58:49', 'in', 1),
(539, 240, 'Christian Ramos Guarin', '2018-05-17 08:00:50', 'in', 1),
(540, 217, 'Menard Garcia', '2018-05-17 08:00:55', 'in', 1),
(541, 104, 'Allan Francis Crisostomo', '2018-05-17 08:02:24', 'in', 1),
(542, 475, 'Cecilia Mendoza', '2018-05-17 08:10:00', 'in', 1),
(543, 259, 'Adrian C. Angeles', '2018-05-17 08:30:52', 'in', 1),
(544, 195, 'Roel P. Jayson', '2018-05-17 08:52:02', 'in', 1),
(545, 195, 'Roel P. Jayson', '2018-05-17 08:52:05', 'in', 1),
(546, 152, 'Maria Carmena Docong', '2018-05-17 09:43:57', 'out', 1),
(547, 152, 'Maria Carmena Docong', '2018-05-17 10:05:57', 'in', 1),
(548, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-17 10:55:47', 'out', 1),
(549, 777, 'Keith Francis V. Pauso', '2018-05-17 12:02:56', 'out', 1),
(550, 152, 'Maria Carmena Docong', '2018-05-17 12:04:38', 'out', 1),
(551, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-17 14:24:32', 'in', 1),
(552, 141, 'Babelyn Mortiz', '2018-05-17 17:32:27', 'out', 1),
(553, 815, 'Pia Marie G. Guina', '2018-05-17 17:32:33', 'out', 1),
(554, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-17 17:33:00', 'out', 1),
(555, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-17 17:33:15', 'out', 1),
(556, 23, 'Irene Manalo', '2018-05-17 17:33:43', 'out', 1),
(557, 2222, 'Claire Antonnete B. Bihasa', '2018-05-17 17:33:49', 'out', 1),
(558, 233, 'Mark Davis B. Baccay', '2018-05-17 17:33:53', 'out', 1),
(559, 104, 'Allan Francis Crisostomo', '2018-05-17 17:33:58', 'out', 1),
(560, 252, 'Melchie Alcazaren', '2018-05-17 17:34:08', 'out', 1),
(561, 24, 'Warlindo Beldia', '2018-05-17 17:35:20', 'out', 1),
(562, 2, 'Annaliza Ramos', '2018-05-17 17:36:12', 'out', 1),
(563, 155, 'Franz Mae Vocal', '2018-05-17 17:36:18', 'out', 1),
(564, 217, 'Menard Garcia', '2018-05-17 17:36:23', 'out', 1),
(565, 85, 'Jessie Minas', '2018-05-17 17:39:16', 'out', 1),
(566, 475, 'Cecilia Mendoza', '2018-05-17 17:39:23', 'out', 1),
(567, 240, 'Christian Ramos Guarin', '2018-05-17 17:39:33', 'out', 1),
(568, 153, 'Rholee Fularon', '2018-05-17 17:40:51', 'out', 1),
(569, 183, 'Marikris Betarmos', '2018-05-17 17:40:58', 'out', 1),
(570, 259, 'Adrian C. Angeles', '2018-05-17 17:41:03', 'out', 1),
(571, 159, 'Kenneth Abilar', '2018-05-17 17:41:26', 'out', 1),
(572, 139, 'Mar Henria Dimaguila', '2018-05-17 17:56:39', 'out', 1),
(573, 4, 'Luis Chumacera', '2018-05-17 17:56:44', 'out', 1),
(574, 85, 'Jessie Minas', '2018-05-17 17:56:47', 'out', 1),
(575, 229, 'Sharra Jane T. Caramat', '2018-05-17 19:35:19', 'out', 1),
(576, 234, 'Paul John Cruz', '2018-05-17 19:35:24', 'out', 1),
(577, 243, 'Gazel James S. Bondoc', '2018-05-17 19:36:17', 'out', 1),
(578, 317, 'Imelda Cuachin Saure', '2018-05-17 20:02:27', 'out', 1),
(579, 257, 'Raymart A. Francisco', '2018-05-17 20:02:40', 'out', 1),
(580, 655, 'Joselito E. Espenido Jr.', '2018-05-17 20:03:17', 'out', 1),
(581, 195, 'Roel P. Jayson', '2018-05-17 20:34:05', 'out', 1),
(582, 317, 'Imelda Cuachin Saure', '2018-05-18 07:07:16', 'in', 1),
(583, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-18 07:07:27', 'in', 1),
(584, 85, 'Jessie Minas', '2018-05-18 07:08:48', 'in', 1),
(585, 233, 'Mark Davis B. Baccay', '2018-05-18 07:15:15', 'in', 1),
(586, 155, 'Franz Mae Vocal', '2018-05-18 07:21:24', 'in', 1),
(587, 2222, 'Claire Antonnete B. Bihasa', '2018-05-18 07:26:10', 'in', 1),
(588, 257, 'Raymart A. Francisco', '2018-05-18 07:27:20', 'in', 1),
(589, 153, 'Rholee Fularon', '2018-05-18 07:27:47', 'in', 1),
(590, 183, 'Marikris Betarmos', '2018-05-18 07:28:24', 'in', 1),
(591, 24, 'Warlindo Beldia', '2018-05-18 07:29:04', 'in', 1),
(592, 159, 'Kenneth Abilar', '2018-05-18 07:41:58', 'in', 1),
(593, 139, 'Mar Henria Dimaguila', '2018-05-18 07:42:35', 'in', 1),
(594, 252, 'Melchie Alcazaren', '2018-05-18 07:43:19', 'in', 1),
(595, 777, 'Keith Francis V. Pauso', '2018-05-18 07:43:43', 'in', 1),
(596, 4, 'Luis Chumacera', '2018-05-18 07:45:58', 'in', 1),
(597, 2, 'Annaliza Ramos', '2018-05-18 07:46:36', 'in', 1),
(598, 243, 'Gazel James S. Bondoc', '2018-05-18 07:46:40', 'in', 1),
(599, 141, 'Babelyn Mortiz', '2018-05-18 07:51:37', 'in', 1),
(600, 107, 'Francis Arroyo', '2018-05-18 07:51:41', 'in', 1),
(601, 815, 'Pia Marie G. Guina', '2018-05-18 07:51:46', 'in', 1),
(602, 240, 'Christian Ramos Guarin', '2018-05-18 07:53:31', 'in', 1),
(603, 234, 'Paul John Cruz', '2018-05-18 07:58:54', 'in', 1),
(604, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-18 08:00:21', 'in', 1),
(605, 229, 'Sharra Jane T. Caramat', '2018-05-18 08:00:46', 'in', 1),
(606, 475, 'Cecilia Mendoza', '2018-05-18 08:02:33', 'in', 1),
(607, 259, 'Adrian C. Angeles', '2018-05-18 08:02:39', 'in', 1),
(608, 217, 'Menard Garcia', '2018-05-18 08:23:22', 'in', 1),
(609, 195, 'Roel P. Jayson', '2018-05-18 08:46:49', 'in', 1),
(610, 23, 'Irene Manalo', '2018-05-18 08:49:50', 'in', 1),
(611, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-18 09:20:57', 'out', 1),
(612, 257, 'Raymart A. Francisco', '2018-05-18 09:44:41', 'out', 1),
(613, 85, 'Jessie Minas', '2018-05-18 09:50:19', 'out', 1),
(614, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-18 09:56:12', 'in', 1),
(615, 257, 'Raymart A. Francisco', '2018-05-18 10:56:09', 'in', 1),
(616, 85, 'Jessie Minas', '2018-05-18 12:03:14', 'in', 1),
(617, 85, 'Jessie Minas', '2018-05-18 12:03:21', 'out', 1),
(618, 85, 'Jessie Minas', '2018-05-18 12:15:54', 'out', 1),
(619, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-18 12:44:56', 'out', 1),
(620, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-18 13:47:42', 'in', 1),
(621, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-18 14:33:52', 'out', 1),
(622, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-18 15:30:41', 'in', 1),
(623, 777, 'Keith Francis V. Pauso', '2018-05-18 16:32:14', 'out', 1),
(624, 141, 'Babelyn Mortiz', '2018-05-18 16:33:02', 'out', 1),
(625, 2, 'Annaliza Ramos', '2018-05-18 16:33:09', 'out', 1),
(626, 815, 'Pia Marie G. Guina', '2018-05-18 16:33:14', 'out', 1),
(627, 23, 'Irene Manalo', '2018-05-18 16:33:22', 'out', 1),
(628, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-18 16:33:51', 'out', 1),
(629, 229, 'Sharra Jane T. Caramat', '2018-05-18 16:33:57', 'out', 1),
(630, 234, 'Paul John Cruz', '2018-05-18 16:34:00', 'out', 1),
(631, 2222, 'Claire Antonnete B. Bihasa', '2018-05-18 16:34:13', 'out', 1),
(632, 252, 'Melchie Alcazaren', '2018-05-18 16:34:18', 'out', 1),
(633, 233, 'Mark Davis B. Baccay', '2018-05-18 16:34:24', 'out', 1),
(634, 155, 'Franz Mae Vocal', '2018-05-18 16:34:30', 'out', 1),
(635, 23, 'Irene Manalo', '2018-05-18 16:35:07', 'out', 1),
(636, 107, 'Francis Arroyo', '2018-05-18 16:35:39', 'out', 1),
(637, 155, 'Franz Mae Vocal', '2018-05-18 16:35:47', 'out', 1),
(638, 153, 'Rholee Fularon', '2018-05-18 16:36:08', 'out', 1),
(639, 243, 'Gazel James S. Bondoc', '2018-05-18 16:36:12', 'out', 1),
(640, 259, 'Adrian C. Angeles', '2018-05-18 16:36:16', 'out', 1),
(641, 85, 'Jessie Minas', '2018-05-18 16:36:29', 'out', 1),
(642, 240, 'Christian Ramos Guarin', '2018-05-18 16:36:49', 'out', 1),
(643, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-18 16:37:07', 'out', 1),
(644, 139, 'Mar Henria Dimaguila', '2018-05-18 16:38:31', 'out', 1),
(645, 217, 'Menard Garcia', '2018-05-18 16:39:29', 'out', 1),
(646, 183, 'Marikris Betarmos', '2018-05-18 16:41:49', 'out', 1),
(647, 85, 'Jessie Minas', '2018-05-18 16:41:58', 'out', 1),
(648, 24, 'Warlindo Beldia', '2018-05-18 16:45:09', 'out', 1),
(649, 24, 'Warlindo Beldia', '2018-05-18 16:45:13', 'out', 1),
(650, 4, 'Luis Chumacera', '2018-05-18 16:45:17', 'out', 1),
(651, 159, 'Kenneth Abilar', '2018-05-18 17:22:34', 'out', 1),
(652, 195, 'Roel P. Jayson', '2018-05-18 18:24:47', 'out', 1),
(653, 317, 'Imelda Cuachin Saure', '2018-05-18 19:38:01', 'out', 1),
(654, 257, 'Raymart A. Francisco', '2018-05-18 19:38:06', 'out', 1),
(655, 153, 'Rholee Fularon', '2018-05-19 07:18:52', 'in', 1),
(656, 4, 'Luis Chumacera', '2018-05-19 07:46:28', 'in', 1),
(657, 85, 'Jessie Minas', '2018-05-19 08:24:08', 'in', 1),
(658, 85, 'Jessie Minas', '2018-05-19 08:24:15', 'in', 1),
(659, 195, 'Roel P. Jayson', '2018-05-19 09:52:29', 'in', 1),
(660, 4, 'Luis Chumacera', '2018-05-19 16:30:51', 'out', 1),
(661, 153, 'Rholee Fularon', '2018-05-19 16:31:48', 'out', 1),
(662, 85, 'Jessie Minas', '2018-05-19 17:01:02', 'out', 1),
(663, 195, 'Roel P. Jayson', '2018-05-19 18:36:03', 'out', 1),
(664, 655, 'Joselito E. Espenido Jr.', '2018-05-21 07:05:54', 'in', 1),
(665, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-21 07:07:00', 'in', 1),
(666, 317, 'Imelda Cuachin Saure', '2018-05-21 07:13:06', 'in', 1),
(667, 155, 'Franz Mae Vocal', '2018-05-21 07:13:41', 'in', 1),
(668, 252, 'Melchie Alcazaren', '2018-05-21 07:15:45', 'in', 1),
(669, 2222, 'Claire Antonnete B. Bihasa', '2018-05-21 07:18:51', 'in', 1),
(670, 23, 'Irene Manalo', '2018-05-21 07:20:18', 'in', 1),
(671, 24, 'Warlindo Beldia', '2018-05-21 07:30:43', 'in', 1),
(672, 4, 'Luis Chumacera', '2018-05-21 07:32:04', 'in', 1),
(673, 183, 'Marikris Betarmos', '2018-05-21 07:32:33', 'in', 1),
(674, 152, 'Maria Carmena Docong', '2018-05-21 07:40:09', 'in', 1),
(675, 85, 'Jessie Minas', '2018-05-21 07:44:22', 'in', 1),
(676, 153, 'Rholee Fularon', '2018-05-21 07:44:59', 'in', 1),
(677, 141, 'Babelyn Mortiz', '2018-05-21 07:46:27', 'in', 1),
(678, 139, 'Mar Henria Dimaguila', '2018-05-21 07:46:41', 'in', 1),
(679, 777, 'Keith Francis V. Pauso', '2018-05-21 07:48:00', 'in', 1),
(680, 257, 'Raymart A. Francisco', '2018-05-21 07:49:03', 'in', 1),
(681, 234, 'Paul John Cruz', '2018-05-21 07:50:08', 'in', 1),
(682, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-21 07:52:32', 'in', 1),
(683, 815, 'Pia Marie G. Guina', '2018-05-21 07:54:48', 'in', 1),
(684, 233, 'Mark Davis B. Baccay', '2018-05-21 07:56:29', 'in', 1),
(685, 217, 'Menard Garcia', '2018-05-21 07:59:53', 'in', 1),
(686, 159, 'Kenneth Abilar', '2018-05-21 08:03:13', 'in', 1),
(687, 2, 'Annaliza Ramos', '2018-05-21 08:07:33', 'in', 1),
(688, 240, 'Christian Ramos Guarin', '2018-05-21 08:13:07', 'in', 1),
(689, 475, 'Cecilia Mendoza', '2018-05-21 08:21:32', 'in', 1),
(690, 243, 'Gazel James S. Bondoc', '2018-05-21 08:22:44', 'in', 1),
(691, 107, 'Francis Arroyo', '2018-05-21 08:26:12', 'in', 1),
(692, 195, 'Roel P. Jayson', '2018-05-21 09:09:39', 'in', 1),
(693, 259, 'Adrian C. Angeles', '2018-05-21 09:12:01', 'in', 1),
(694, 655, 'Joselito E. Espenido Jr.', '2018-05-21 09:20:52', 'out', 1),
(695, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-21 09:23:28', 'out', 1),
(696, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-21 10:10:58', 'in', 1),
(697, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-21 10:23:41', 'out', 1),
(698, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-21 11:01:18', 'in', 1),
(699, 152, 'Maria Carmena Docong', '2018-05-21 11:09:56', 'out', 1),
(700, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-21 11:23:19', 'out', 1),
(701, 152, 'Maria Carmena Docong', '2018-05-21 12:13:24', 'in', 1),
(702, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-21 12:51:53', 'in', 1),
(703, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-21 13:52:01', 'out', 1),
(704, 152, 'Maria Carmena Docong', '2018-05-21 15:13:15', 'out', 1),
(705, 152, 'Maria Carmena Docong', '2018-05-21 15:17:35', 'in', 1),
(706, 152, 'Maria Carmena Docong', '2018-05-21 15:44:13', 'out', 1),
(707, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-21 15:55:23', 'in', 1),
(708, 152, 'Maria Carmena Docong', '2018-05-21 16:15:55', 'in', 1),
(709, 777, 'Keith Francis V. Pauso', '2018-05-21 17:31:02', 'out', 1),
(710, 141, 'Babelyn Mortiz', '2018-05-21 17:32:10', 'out', 1),
(711, 815, 'Pia Marie G. Guina', '2018-05-21 17:32:15', 'out', 1),
(712, 2, 'Annaliza Ramos', '2018-05-21 17:32:22', 'out', 1),
(713, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-21 17:32:27', 'out', 1),
(714, 23, 'Irene Manalo', '2018-05-21 17:33:07', 'out', 1),
(715, 139, 'Mar Henria Dimaguila', '2018-05-21 17:33:18', 'out', 1),
(716, 252, 'Melchie Alcazaren', '2018-05-21 17:33:25', 'out', 1),
(717, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-21 17:33:34', 'out', 1),
(718, 23, 'Irene Manalo', '2018-05-21 17:33:37', 'out', 1),
(719, 152, 'Maria Carmena Docong', '2018-05-21 17:34:53', 'out', 1),
(720, 152, 'Maria Carmena Docong', '2018-05-21 17:34:55', 'out', 1),
(721, 233, 'Mark Davis B. Baccay', '2018-05-21 17:35:00', 'out', 1),
(722, 153, 'Rholee Fularon', '2018-05-21 17:35:22', 'out', 1),
(723, 24, 'Warlindo Beldia', '2018-05-21 17:36:26', 'out', 1),
(724, 2222, 'Claire Antonnete B. Bihasa', '2018-05-21 17:37:03', 'out', 1),
(725, 259, 'Adrian C. Angeles', '2018-05-21 17:37:46', 'out', 1),
(726, 107, 'Francis Arroyo', '2018-05-21 17:38:12', 'out', 1),
(727, 155, 'Franz Mae Vocal', '2018-05-21 17:38:27', 'out', 1),
(728, 234, 'Paul John Cruz', '2018-05-21 17:38:31', 'out', 1),
(729, 475, 'Cecilia Mendoza', '2018-05-21 17:39:21', 'out', 1),
(730, 4, 'Luis Chumacera', '2018-05-21 17:46:05', 'out', 1),
(731, 317, 'Imelda Cuachin Saure', '2018-05-21 17:49:54', 'out', 1),
(732, 257, 'Raymart A. Francisco', '2018-05-21 17:50:37', 'out', 1),
(733, 183, 'Marikris Betarmos', '2018-05-21 17:56:20', 'out', 1),
(734, 217, 'Menard Garcia', '2018-05-21 18:09:15', 'out', 1),
(735, 85, 'Jessie Minas', '2018-05-21 18:11:26', 'out', 1),
(736, 85, 'Jessie Minas', '2018-05-21 19:08:56', 'out', 1),
(737, 240, 'Christian Ramos Guarin', '2018-05-21 19:38:32', 'out', 1),
(738, 243, 'Gazel James S. Bondoc', '2018-05-21 19:38:35', 'out', 1),
(739, 159, 'Kenneth Abilar', '2018-05-21 20:07:35', 'out', 1),
(740, 195, 'Roel P. Jayson', '2018-05-21 20:30:07', 'out', 1),
(741, 317, 'Imelda Cuachin Saure', '2018-05-22 07:21:03', 'in', 1),
(742, 155, 'Franz Mae Vocal', '2018-05-22 07:21:09', 'in', 1),
(743, 233, 'Mark Davis B. Baccay', '2018-05-22 07:23:13', 'in', 1),
(744, 153, 'Rholee Fularon', '2018-05-22 07:26:14', 'in', 1),
(745, 24, 'Warlindo Beldia', '2018-05-22 07:27:21', 'in', 1),
(746, 2222, 'Claire Antonnete B. Bihasa', '2018-05-22 07:33:04', 'in', 1),
(747, 815, 'Pia Marie G. Guina', '2018-05-22 07:36:36', 'in', 1),
(748, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-22 07:37:35', 'in', 1),
(749, 243, 'Gazel James S. Bondoc', '2018-05-22 07:39:15', 'in', 1),
(750, 4, 'Luis Chumacera', '2018-05-22 07:40:48', 'in', 1),
(751, 183, 'Marikris Betarmos', '2018-05-22 07:41:40', 'in', 1),
(752, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-22 07:45:55', 'in', 1),
(753, 152, 'Maria Carmena Docong', '2018-05-22 07:46:48', 'in', 1),
(754, 2, 'Annaliza Ramos', '2018-05-22 07:47:43', 'in', 1),
(755, 85, 'Jessie Minas', '2018-05-22 07:47:46', 'in', 1),
(756, 141, 'Babelyn Mortiz', '2018-05-22 07:47:51', 'in', 1),
(757, 252, 'Melchie Alcazaren', '2018-05-22 07:49:33', 'in', 1),
(758, 229, 'Sharra Jane T. Caramat', '2018-05-22 07:52:07', 'in', 1),
(759, 234, 'Paul John Cruz', '2018-05-22 07:54:21', 'in', 1),
(760, 257, 'Raymart A. Francisco', '2018-05-22 07:55:55', 'in', 1),
(761, 159, 'Kenneth Abilar', '2018-05-22 07:56:34', 'in', 1),
(762, 777, 'Keith Francis V. Pauso', '2018-05-22 07:57:08', 'in', 1),
(763, 23, 'Irene Manalo', '2018-05-22 08:00:01', 'in', 1),
(764, 217, 'Menard Garcia', '2018-05-22 08:00:28', 'in', 1),
(765, 475, 'Cecilia Mendoza', '2018-05-22 08:03:56', 'in', 1),
(766, 240, 'Christian Ramos Guarin', '2018-05-22 08:14:36', 'in', 1),
(767, 259, 'Adrian C. Angeles', '2018-05-22 08:18:36', 'in', 1),
(768, 195, 'Roel P. Jayson', '2018-05-22 08:56:05', 'in', 1),
(769, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-22 11:22:50', 'out', 1),
(770, 152, 'Maria Carmena Docong', '2018-05-22 11:36:28', 'out', 1),
(771, 2222, 'Claire Antonnete B. Bihasa', '2018-05-22 12:57:30', 'out', 1),
(772, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-22 13:36:36', 'in', 1),
(773, 2222, 'Claire Antonnete B. Bihasa', '2018-05-22 13:50:08', 'in', 1),
(774, 152, 'Maria Carmena Docong', '2018-05-22 14:12:04', 'in', 1),
(775, 777, 'Keith Francis V. Pauso', '2018-05-22 17:32:19', 'out', 1),
(776, 233, 'Mark Davis B. Baccay', '2018-05-22 17:32:29', 'out', 1),
(777, 141, 'Babelyn Mortiz', '2018-05-22 17:33:13', 'out', 1),
(778, 815, 'Pia Marie G. Guina', '2018-05-22 17:33:32', 'out', 1),
(779, 252, 'Melchie Alcazaren', '2018-05-22 17:33:38', 'out', 1),
(780, 152, 'Maria Carmena Docong', '2018-05-22 17:35:02', 'out', 1),
(781, 2222, 'Claire Antonnete B. Bihasa', '2018-05-22 17:35:31', 'out', 1),
(782, 28, 'Jose Barcoma Lamsen Jr.', '2018-05-22 17:35:53', 'out', 1),
(783, 155, 'Franz Mae Vocal', '2018-05-22 17:36:21', 'out', 1),
(784, 25, 'Aristeo Mayo Nyo-Fides', '2018-05-22 17:37:22', 'out', 1),
(785, 240, 'Christian Ramos Guarin', '2018-05-22 17:37:49', 'out', 1),
(786, 201, 'Mary Grace Araño', '2018-05-22 17:37:57', 'out', 1);
INSERT INTO `temp_attendance` (`id`, `employee_number`, `name`, `date_time`, `status`, `is_transfer`) VALUES
(787, 229, 'Sharra Jane T. Caramat', '2018-05-22 17:38:01', 'out', 1),
(788, 234, 'Paul John Cruz', '2018-05-22 17:38:04', 'out', 1),
(789, 183, 'Marikris Betarmos', '2018-05-22 17:41:56', 'out', 1),
(790, 217, 'Menard Garcia', '2018-05-22 17:43:16', 'out', 1),
(791, 153, 'Rholee Fularon', '2018-05-22 17:46:14', 'out', 1),
(792, 23, 'Irene Manalo', '2018-05-22 17:55:15', 'out', 1),
(793, 317, 'Imelda Cuachin Saure', '2018-05-22 17:56:43', 'out', 1),
(794, 257, 'Raymart A. Francisco', '2018-05-22 17:57:05', 'out', 1),
(795, 475, 'Cecilia Mendoza', '2018-05-22 18:20:32', 'out', 1),
(796, 24, 'Warlindo Beldia', '2018-05-22 18:47:56', 'out', 1),
(797, 159, 'Kenneth Abilar', '2018-05-22 18:50:41', 'out', 1),
(798, 4, 'Luis Chumacera', '2018-05-22 19:11:45', 'out', 1),
(799, 85, 'Jessie Minas', '2018-05-22 19:11:56', 'out', 1),
(800, 195, 'Roel P. Jayson', '2018-05-22 20:34:05', 'out', 1);

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
-- Indexes for table `tbl_time_keeping`
--
ALTER TABLE `tbl_time_keeping`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_in_attendance`
--
ALTER TABLE `tbl_in_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_in_out_ob`
--
ALTER TABLE `tbl_in_out_ob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_ob`
--
ALTER TABLE `tbl_ob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_ot`
--
ALTER TABLE `tbl_ot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_out_attendance`
--
ALTER TABLE `tbl_out_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_schedules`
--
ALTER TABLE `tbl_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_slvl`
--
ALTER TABLE `tbl_slvl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_time_keeping`
--
ALTER TABLE `tbl_time_keeping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `temp_attendance`
--
ALTER TABLE `temp_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=801;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
