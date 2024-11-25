SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
CREATE TABLE IF NOT EXISTS admin (
id int(11) NOT NULL,
UserName varchar(100) NOT NULL,
Password varchar(100) NOT NULL,
updationDate timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE
CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
-- Dumping data for table admin
INSERT INTO admin (id, UserName, Password, updationDate) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');
-- Table structure for table tblbooking
CREATE TABLE IF NOT EXISTS tblbooking (
id int(11) NOT NULL,
userEmail varchar(100) DEFAULT NULL,
VehicleId int(11) DEFAULT NULL,
FromDate varchar(20) DEFAULT NULL,
ToDate varchar(20) DEFAULT NULL,
message varchar(255) DEFAULT NULL,
Status int(11) DEFAULT NULL,
PostingDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
-- Dumping data for table tblbooking
INSERT INTO tblbooking (id, userEmail, VehicleId, FromDate, ToDate, message,
Status, PostingDate) VALUES
-- Table structure for table tblbrands
CREATE TABLE IF NOT EXISTS tblbrands (
id int(11) NOT NULL,
BrandName varchar(120) NOT NULL,
CreationDate timestamp NULL DEFAULT CURRENT_TIMESTAMP,
UpdationDate timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
-- Dumping data for table tblbrands
INSERT INTO tblbrands (id, BrandName, CreationDate, UpdationDate) VALUES
-- Table structure for table tblcontactusinfo
CREATE TABLE IF NOT EXISTS tblcontactusinfo (
id int(11) NOT NULL,
Address tinytext,
EmailId varchar(255) DEFAULT NULL,
ContactNo char(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
-- Dumping data for table tblcontactusinfo
INSERT INTO tblcontactusinfo (id, Address, EmailId, ContactNo) VALUES
(1, 'Test Demo test demo ',
'test@test.com', '8585233222');
-- Table structure for table tblcontactusquery
CREATE TABLE IF NOT EXISTS tblcontactusquery (
id int(11) NOT NULL,
name varchar(100) DEFAULT NULL,
EmailId varchar(120) DEFAULT NULL,
ContactNumber char(11) DEFAULT NULL,
Message longtext,
PostingDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
status int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
-- Dumping data for table tblcontactusquery
INSERT INTO tblcontactusquery (id, name, EmailId, ContactNumber, Message,
PostingDate, status) VALUES
-- Table structure for table tblpages
--
CREATE TABLE IF NOT EXISTS tblpages (
id int(11) NOT NULL,
PageName varchar(255) DEFAULT NULL,
type varchar(255) NOT NULL DEFAULT '',
detail longtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
-- Dumping data for table tblpages
INSERT INTO tblpages (id, PageName, type, detail) VALUES
-- Table structure for table tblsubscribers
CREATE TABLE IF NOT EXISTS tblsubscribers (
id int(11) NOT NULL,
SubscriberEmail varchar(120) DEFAULT NULL,
PostingDate timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
-- Dumping data for table tblsubscribers
INSERT INTO tblsubscribers (id, SubscriberEmail, PostingDate) VALUES
-- Table structure for table tbltestimonial
CREATE TABLE IF NOT EXISTS tbltestimonial (
id int(11) NOT NULL,
UserEmail varchar(100) NOT NULL,
Testimonial mediumtext NOT NULL,
PostingDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
status int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
-- Dumping data for table tbltestimonial
INSERT INTO tbltestimonial (id, UserEmail, Testimonial, PostingDate, status)
VALUES
-- Table structure for table tblusers
CREATE TABLE IF NOT EXISTS tblusers (
id int(11) NOT NULL,
FullName varchar(120) DEFAULT NULL,
EmailId varchar(100) DEFAULT NULL,
Password varchar(100) DEFAULT NULL,
ContactNo char(11) DEFAULT NULL,
dob varchar(100) DEFAULT NULL,
Address varchar(255) DEFAULT NULL,
City varchar(100) DEFAULT NULL,
Country varchar(100) DEFAULT NULL,
RegDate timestamp NULL DEFAULT CURRENT_TIMESTAMP,
UpdationDate timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
-- Dumping data for table tblusers
INSERT INTO tblusers (id, FullName, EmailId, Password, ContactNo, dob,
Address, City, Country, RegDate, UpdationDate) VALUES
-- Table structure for table tblvehicles
CREATE TABLE IF NOT EXISTS tblvehicles (
id int(11) NOT NULL,
VehiclesTitle varchar(150) DEFAULT NULL,
VehiclesBrand int(11) DEFAULT NULL,
VehiclesOverview longtext,
PricePerDay int(11) DEFAULT NULL,
FuelType varchar(100) DEFAULT NULL,
ModelYear int(6) DEFAULT NULL,
SeatingCapacity int(11) DEFAULT NULL,
Vimage1 varchar(120) DEFAULT NULL,
Vimage2 varchar(120) DEFAULT NULL,
Vimage3 varchar(120) DEFAULT NULL,
Vimage4 varchar(120) DEFAULT NULL,
Vimage5 varchar(120) DEFAULT NULL,
AirConditioner int(11) DEFAULT NULL,
PowerDoorLocks int(11) DEFAULT NULL,
AntiLockBrakingSystem int(11) DEFAULT NULL,
BrakeAssist int(11) DEFAULT NULL,
PowerSteering int(11) DEFAULT NULL,
DriverAirbag int(11) DEFAULT NULL,
PassengerAirbag int(11) DEFAULT NULL,
PowerWindows int(11) DEFAULT NULL,
CDPlayer int(11) DEFAULT NULL,
CentralLocking int(11) DEFAULT NULL,
CrashSensor int(11) DEFAULT NULL,
LeatherSeats int(11) DEFAULT NULL,
RegDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
UpdationDate timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
-- Dumping data for table tblvehicles
INSERT INTO tblvehicles (id, VehiclesTitle, VehiclesBrand, VehiclesOverview,
PricePerDay, FuelType, ModelYear, SeatingCapacity, Vimage1, Vimage2, Vimage3,
Vimage4, Vimage5, AirConditioner, PowerDoorLocks, AntiLockBrakingSystem,
BrakeAssist, PowerSteering, DriverAirbag, PassengerAirbag, PowerWindows,
CDPlayer, CentralLocking, CrashSensor, LeatherSeats, RegDate, UpdationDate)
-- Indexes for table admin
ALTER TABLE admin
ADD PRIMARY KEY (id);
-- Indexes for table tblbooking
ALTER TABLE tblbooking
ADD PRIMARY KEY (id);
-- Indexes for table tblbrands
ALTER TABLE tblbrands
ADD PRIMARY KEY (id);
-- Indexes for table tblcontactusinfo
ALTER TABLE tblcontactusinfo
ADD PRIMARY KEY (id);
-- Indexes for table tblcontactusquery
ALTER TABLE tblcontactusquery
ADD PRIMARY KEY (id);
-- Indexes for table tblpages
ALTER TABLE tblpages
ADD PRIMARY KEY (id);
-- Indexes for table tblsubscribers
ALTER TABLE tblsubscribers
ADD PRIMARY KEY (id);
--
-- Indexes for table tbltestimonial
--
ALTER TABLE tbltestimonial
ADD PRIMARY KEY (id);
-- Indexes for table tblusers
ALTER TABLE tblusers
ADD PRIMARY KEY (id);
-- Indexes for table tblvehicles
ALTER TABLE tblvehicles
ADD PRIMARY KEY (id);
ALTER TABLE admin
MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table tblbooking
--
ALTER TABLE tblbooking
MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table tblbrands
--
ALTER TABLE tblbrands
MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table tblcontactusinfo
--
ALTER TABLE tblcontactusinfo
MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table tblcontactusquery
--
ALTER TABLE tblcontactusquery
MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table tblpages
--
ALTER TABLE tblpages
MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table tblsubscribers
--
ALTER TABLE tblsubscribers
MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table tbltestimonial
--
ALTER TABLE tbltestimonial
MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table tblusers
--
ALTER TABLE tblusers
MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
ALTER TABLE tblvehicles
MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;