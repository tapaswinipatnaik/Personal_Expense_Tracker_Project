SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `tblexpense` (
  `ID` int(10) NOT NULL,
  `UserId` int(10) NOT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `ExpenseItem` varchar(200) DEFAULT NULL,
  `ExpenseCost` varchar(200) DEFAULT NULL,
  `NoteDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `tblexpense` (`ID`, `UserId`, `ExpenseDate`, `ExpenseItem`, `ExpenseCost`, `NoteDate`) VALUES
(1, 1, '2024-08-15', 'Milk', '50', '2024-08-16 04:47:58'),

(4, 2, '2024-07-30', 'Cloths', '1250', '2024-08-16 04:51:43'),
(5, 2, '2024-06-06', 'Mobile', '12500', '2024-08-16 04:52:20'),
(6, 3, '2024-07-01', 'Headphones', '399', '2024-08-16 05:17:50'),



CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(150) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;



INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(1, 'Rahul', 'rahul@test.com', 1414256320, 'f925916e2754e5e03f75dd58a5733251', '2024-08-05 06:37:42'),
(2, 'John Doe', 'johndoe12@gmail.com', 1231231230, 'f925916e2754e5e03f75dd58a5733251', '2024-08-16 04:50:45'),
(3, 'Test User', 'testuser@gmail.com', 1233211230, 'f925916e2754e5e03f75dd58a5733251', '2024-08-16 05:17:22');

ALTER TABLE `tblexpense`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `tblexpense`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;


