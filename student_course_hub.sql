-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 100.69.22.103:3306
-- Generation Time: Mar 25, 2025 at 08:09 PM
-- Server version: 11.4.4-MariaDB-log
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_course_hub`
--

-- --------------------------------------------------------

--
-- Table structure for table `InterestedStudents`
--

CREATE TABLE `InterestedStudents` (
  `InterestID` int(11) NOT NULL,
  `ProgrammeID` int(11) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `RegisteredAt` timestamp NULL DEFAULT current_timestamp(),
  `active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `InterestedStudents`
--

INSERT INTO `InterestedStudents` (`InterestID`, `ProgrammeID`, `StudentName`, `Email`, `RegisteredAt`, `active`) VALUES
(1, 1, 'John Doe', 'john.doe@example.com', '2025-03-25 13:25:52', 1),
(2, 4, 'Jane Smith', 'jane.smith@example.com', '2025-03-25 13:25:52', 1),
(3, 6, 'Alex Brown', 'alex.brown@example.com', '2025-03-25 13:25:52', 1),
(4, 9, 'Priya Patel', 'priya.patel@example.com', '2025-03-25 13:25:52', 1),
(5, 1, 'name', 'alice@example.com', '2025-03-25 13:32:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Levels`
--

CREATE TABLE `Levels` (
  `LevelID` int(11) NOT NULL,
  `LevelName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Levels`
--

INSERT INTO `Levels` (`LevelID`, `LevelName`) VALUES
(1, 'Undergraduate'),
(2, 'Postgraduate');

-- --------------------------------------------------------

--
-- Table structure for table `Modules`
--

CREATE TABLE `Modules` (
  `ModuleID` int(11) NOT NULL,
  `ModuleName` text NOT NULL,
  `ModuleLeaderID` int(11) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Modules`
--

INSERT INTO `Modules` (`ModuleID`, `ModuleName`, `ModuleLeaderID`, `Description`, `Image`) VALUES
(1, 'Introduction to Programming', 1, 'Covers the fundamentals of programming using Python and Java.', NULL),
(2, 'Mathematics for Computer Science', 2, 'Teaches discrete mathematics, linear algebra, and probability theory.', NULL),
(3, 'Computer Systems & Architecture', 3, 'Explores CPU design, memory management, and assembly language.', NULL),
(4, 'Databases', 4, 'Covers SQL, relational database design, and NoSQL systems.', NULL),
(5, 'Software Engineering', 5, 'Focuses on agile development, design patterns, and project management.', NULL),
(6, 'Algorithms & Data Structures', 6, 'Examines sorting, searching, graphs, and complexity analysis.', NULL),
(7, 'Cyber Security Fundamentals', 7, 'Provides an introduction to network security, cryptography, and vulnerabilities.', NULL),
(8, 'Artificial Intelligence', 8, 'Introduces AI concepts such as neural networks, expert systems, and robotics.', NULL),
(9, 'Machine Learning', 9, 'Explores supervised and unsupervised learning, including decision trees and clustering.', NULL),
(10, 'Ethical Hacking', 10, 'Covers penetration testing, security assessments, and cybersecurity laws.', NULL),
(11, 'Computer Networks', 1, 'Teaches TCP/IP, network layers, and wireless communication.', NULL),
(12, 'Software Testing & Quality Assurance', 2, 'Focuses on automated testing, debugging, and code reliability.', NULL),
(13, 'Embedded Systems', 3, 'Examines microcontrollers, real-time OS, and IoT applications.', NULL),
(14, 'Human-Computer Interaction', 4, 'Studies UI/UX design, usability testing, and accessibility.', NULL),
(15, 'Blockchain Technologies', 5, 'Covers distributed ledgers, consensus mechanisms, and smart contracts.', NULL),
(16, 'Cloud Computing', 6, 'Introduces cloud services, virtualization, and distributed systems.', NULL),
(17, 'Digital Forensics', 7, 'Teaches forensic investigation techniques for cybercrime.', NULL),
(18, 'Final Year Project', 8, 'A major independent project where students develop a software solution.', NULL),
(19, 'Advanced Machine Learning', 11, 'Covers deep learning, reinforcement learning, and cutting-edge AI techniques.', NULL),
(20, 'Cyber Threat Intelligence', 12, 'Focuses on cybersecurity risk analysis, malware detection, and threat mitigation.', NULL),
(21, 'Big Data Analytics', 13, 'Explores data mining, distributed computing, and AI-driven insights.', NULL),
(22, 'Cloud & Edge Computing', 14, 'Examines scalable cloud platforms, serverless computing, and edge networks.', NULL),
(23, 'Blockchain & Cryptography', 15, 'Covers decentralized applications, consensus algorithms, and security measures.', NULL),
(24, 'AI Ethics & Society', 16, 'Analyzes ethical dilemmas in AI, fairness, bias, and regulatory considerations.', NULL),
(25, 'Quantum Computing', 17, 'Introduces quantum algorithms, qubits, and cryptographic applications.', NULL),
(26, 'Cybersecurity Law & Policy', 18, 'Explores digital privacy, GDPR, and international cyber law.', NULL),
(27, 'Neural Networks & Deep Learning', 19, 'Delves into convolutional networks, GANs, and AI advancements.', NULL),
(28, 'Human-AI Interaction', 20, 'Studies AI usability, NLP systems, and social robotics.', NULL),
(29, 'Autonomous Systems', 11, 'Focuses on self-driving technology, robotics, and intelligent agents.', NULL),
(30, 'Digital Forensics & Incident Response', 12, 'Teaches forensic analysis, evidence gathering, and threat mitigation.', NULL),
(31, 'Postgraduate Dissertation', 13, 'A major research project where students explore advanced topics in computing.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ProgrammeModules`
--

CREATE TABLE `ProgrammeModules` (
  `ProgrammeModuleID` int(11) NOT NULL,
  `ProgrammeID` int(11) DEFAULT NULL,
  `ModuleID` int(11) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ProgrammeModules`
--

INSERT INTO `ProgrammeModules` (`ProgrammeModuleID`, `ProgrammeID`, `ModuleID`, `Year`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 2, 1, 1),
(6, 2, 2, 1),
(7, 2, 3, 1),
(8, 2, 4, 1),
(9, 3, 1, 1),
(10, 3, 2, 1),
(11, 3, 3, 1),
(12, 3, 4, 1),
(13, 4, 1, 1),
(14, 4, 2, 1),
(15, 4, 3, 1),
(16, 4, 4, 1),
(17, 5, 1, 1),
(18, 5, 2, 1),
(19, 5, 3, 1),
(20, 5, 4, 1),
(21, 1, 5, 2),
(22, 1, 6, 2),
(23, 1, 7, 2),
(24, 1, 8, 2),
(25, 2, 5, 2),
(26, 2, 6, 2),
(27, 2, 12, 2),
(28, 2, 14, 2),
(29, 3, 5, 2),
(30, 3, 9, 2),
(31, 3, 8, 2),
(32, 3, 10, 2),
(33, 4, 7, 2),
(34, 4, 10, 2),
(35, 4, 11, 2),
(36, 4, 17, 2),
(37, 5, 5, 2),
(38, 5, 6, 2),
(39, 5, 9, 2),
(40, 5, 16, 2),
(41, 1, 11, 3),
(42, 1, 13, 3),
(43, 1, 15, 3),
(44, 1, 18, 3),
(45, 2, 13, 3),
(46, 2, 15, 3),
(47, 2, 16, 3),
(48, 2, 18, 3),
(49, 3, 13, 3),
(50, 3, 15, 3),
(51, 3, 16, 3),
(52, 3, 18, 3),
(53, 4, 15, 3),
(54, 4, 16, 3),
(55, 4, 17, 3),
(56, 4, 18, 3),
(57, 5, 9, 3),
(58, 5, 14, 3),
(59, 5, 16, 3),
(60, 5, 18, 3),
(61, 6, 19, 1),
(62, 6, 24, 1),
(63, 6, 27, 1),
(64, 6, 29, 1),
(65, 6, 31, 1),
(66, 7, 20, 1),
(67, 7, 26, 1),
(68, 7, 30, 1),
(69, 7, 23, 1),
(70, 7, 31, 1),
(71, 8, 21, 1),
(72, 8, 22, 1),
(73, 8, 27, 1),
(74, 8, 28, 1),
(75, 8, 31, 1),
(76, 9, 19, 1),
(77, 9, 24, 1),
(78, 9, 28, 1),
(79, 9, 29, 1),
(80, 9, 31, 1),
(81, 10, 23, 1),
(82, 10, 22, 1),
(83, 10, 25, 1),
(84, 10, 26, 1),
(85, 10, 31, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Programmes`
--

CREATE TABLE `Programmes` (
  `ProgrammeID` int(11) NOT NULL,
  `ProgrammeName` text NOT NULL,
  `LevelID` int(11) DEFAULT NULL,
  `ProgrammeLeaderID` int(11) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Image` text DEFAULT NULL,
  `Highlights` text DEFAULT NULL,
  `EntryRequirements` text DEFAULT NULL,
  `CareerProspects` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Programmes`
--

INSERT INTO `Programmes` (`ProgrammeID`, `ProgrammeName`, `LevelID`, `ProgrammeLeaderID`, `Description`, `Image`, `Highlights`, `EntryRequirements`, `CareerProspects`) VALUES
(1, 'BSc Computer Science', 1, 1, 'A broad computer science degree covering programming, AI, cybersecurity, and software engineering.', NULL, 'Hands-on projects and real-world applications; Access to industry-standard software and labs; Optional placement year with leading companies', 'A-levels: ABB (including a relevant subject); IELTS: 6.0 (with no band below 5.5); Equivalent qualifications accepted', 'Software Engineer; Systems Analyst; Web Developer'),
(2, 'BSc Software Engineering', 1, 2, 'A specialized degree focusing on the development and lifecycle of software applications.', NULL, 'Hands-on projects and real-world applications; Access to industry-standard software and labs; Optional placement year with leading companies', 'A-levels: ABB (including a relevant subject); IELTS: 6.0 (with no band below 5.5); Equivalent qualifications accepted', 'Software Developer; DevOps Engineer; Quality Assurance Engineer'),
(3, 'BSc Artificial Intelligence', 1, 3, 'Focuses on machine learning, deep learning, and AI applications.', NULL, 'Hands-on projects and real-world applications; Access to industry-standard software and labs; Optional placement year with leading companies', 'A-levels: ABB (including a relevant subject); IELTS: 6.0 (with no band below 5.5); Equivalent qualifications accepted', 'AI Engineer; Machine Learning Specialist; Data Scientist'),
(4, 'BSc Cyber Security', 1, 4, 'Explores network security, ethical hacking, and digital forensics.', NULL, 'Hands-on projects and real-world applications; Access to industry-standard software and labs; Optional placement year with leading companies', 'A-levels: ABB (including a relevant subject); IELTS: 6.0 (with no band below 5.5); Equivalent qualifications accepted', 'Cybersecurity Analyst; Ethical Hacker; Security Consultant'),
(5, 'BSc Data Science', 1, 5, 'Covers big data, machine learning, and statistical computing.', NULL, 'Hands-on projects and real-world applications; Access to industry-standard software and labs; Optional placement year with leading companies', 'A-levels: ABB (including a relevant subject); IELTS: 6.0 (with no band below 5.5); Equivalent qualifications accepted', 'Data Scientist; Data Analyst; Business Intelligence Analyst'),
(6, 'MSc Machine Learning', 2, 11, 'A postgraduate degree focusing on deep learning, AI ethics, and neural networks.', NULL, 'Advanced research opportunities; Collaboration with industry experts; Access to cutting-edge technology', '2:1 Honours degree in a related field; IELTS: 6.5 (with no band below 6.0); Relevant work experience (preferred)', 'Machine Learning Engineer; AI Researcher; Data Scientist'),
(7, 'MSc Cyber Security', 2, 12, 'A specialized programme covering digital forensics, cyber threat intelligence, and security policy.', NULL, 'Advanced research opportunities; Collaboration with industry experts; Access to cutting-edge technology', '2:1 Honours degree in a related field; IELTS: 6.5 (with no band below 6.0); Relevant work experience (preferred)', 'Cybersecurity Manager; Information Security Officer; Digital Forensics Expert'),
(8, 'MSc Data Science', 2, 13, 'Focuses on big data analytics, cloud computing, and AI-driven insights.', NULL, 'Advanced research opportunities; Collaboration with industry experts; Access to cutting-edge technology', '2:1 Honours degree in a related field; IELTS: 6.5 (with no band below 6.0); Relevant work experience (preferred)', 'Senior Data Scientist; Big Data Engineer; Analytics Consultant'),
(9, 'MSc Artificial Intelligence', 2, 14, 'Explores autonomous systems, AI ethics, and deep learning technologies.', NULL, 'Advanced research opportunities; Collaboration with industry experts; Access to cutting-edge technology', '2:1 Honours degree in a related field; IELTS: 6.5 (with no band below 6.0); Relevant work experience (preferred)', 'AI Specialist; Robotics Engineer; NLP Expert'),
(10, 'MSc Software Engineering', 2, 15, 'Emphasizes software design, blockchain applications, and cutting-edge methodologies.', NULL, 'Advanced research opportunities; Collaboration with industry experts; Access to cutting-edge technology', '2:1 Honours degree in a related field; IELTS: 6.5 (with no band below 6.0); Relevant work experience (preferred)', 'Senior Software Engineer; Solutions Architect; Technical Lead');

-- --------------------------------------------------------

--
-- Table structure for table `Staff`
--

CREATE TABLE `Staff` (
  `StaffID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `JobTitle` varchar(255) NOT NULL DEFAULT 'Lecturer',
  `Photo` varchar(255) DEFAULT 'default.jpg',
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Biography` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Staff`
--

INSERT INTO `Staff` (`StaffID`, `Name`, `JobTitle`, `Photo`, `Email`, `Phone`, `Biography`) VALUES
(1, 'Dr. Alice Johnson', 'Professor', 'alice.jpg', 'alice.johnson@university.edu', '+44 1234 567890', 'Dr. Alice Johnson is a Professor of Computer Science with 20 years of experience in AI, Data Science, and Machine Learning. She has published over 50 research papers and is a keynote speaker at international AI conferences.'),
(2, 'Dr. Brian Lee', 'Senior Lecturer', 'brian.jpg', 'brian.lee@university.edu', '+44 2234 567891', 'Dr. Brian Lee specializes in Cybersecurity and Ethical Hacking. With 15 years of experience in penetration testing and cyber law, he has worked as a consultant for Fortune 500 companies.'),
(3, 'Dr. Carol White', 'Associate Professor', 'carol.jpg', 'carol.white@university.edu', '+44 3234 567892', 'Dr. Carol White is an Associate Professor in Software Engineering. Her research focuses on agile methodologies, DevOps, and cloud computing. She has supervised over 100 software projects in industry and academia.'),
(4, 'Dr. David Green', 'Assistant Professor', 'david.jpg', 'david.green@university.edu', '+44 4234 567893', 'Dr. David Green is an Assistant Professor with expertise in Cloud Computing and Distributed Systems. He has worked with major cloud providers and is passionate about serverless computing.'),
(5, 'Dr. Emma Scott', 'Professor', 'emma.jpg', 'emma.scott@university.edu', '+44 5234 567894', 'Dr. Emma Scott is a renowned Data Scientist with expertise in Big Data Analytics, AI, and Predictive Modeling. She has developed AI-driven solutions for healthcare and finance industries.'),
(6, 'Dr. Frank Moore', 'Senior Lecturer', 'frank.jpg', 'frank.moore@university.edu', '+44 6234 567895', 'Dr. Frank Moore is a Senior Lecturer specializing in Artificial Intelligence and Robotics. His research includes autonomous systems, reinforcement learning, and robotics in healthcare.'),
(7, 'Dr. Grace Adams', 'Associate Professor', 'grace.jpg', 'grace.adams@university.edu', '+44 7234 567896', 'Dr. Grace Adams is a leading researcher in Quantum Computing. She has contributed to advancements in quantum algorithms and cryptography, collaborating with top research institutes worldwide.'),
(8, 'Dr. Henry Clark', 'Assistant Professor', 'henry.jpg', 'henry.clark@university.edu', '+44 8234 567897', 'Dr. Henry Clark is an expert in Blockchain Technologies and FinTech Security. He has developed decentralized finance (DeFi) solutions and advises startups on blockchain adoption.'),
(9, 'Dr. Irene Hall', 'Professor', 'irene.jpg', 'irene.hall@university.edu', '+44 9234 567898', 'Dr. Irene Hall has extensive experience in Digital Forensics and Cyber Threat Intelligence. She has worked on high-profile cybercrime investigations and is a consultant for law enforcement agencies.'),
(10, 'Dr. James Wright', 'Senior Lecturer', 'james.jpg', 'james.wright@university.edu', '+44 1034 567899', 'Dr. James Wright is a Senior Lecturer in Human-Computer Interaction and UX Design. He has worked with major tech firms on UI/UX projects and researches AI-driven user interfaces.'),
(11, 'Dr. Sophia Miller', 'Associate Professor', 'sophia.jpg', 'sophia.miller@university.edu', '+44 1134 567900', 'Dr. Sophia Miller is an Associate Professor specializing in Neural Networks and Deep Learning. She has contributed to self-learning AI systems and AI-powered medical diagnostics.'),
(12, 'Dr. Benjamin Carter', 'Assistant Professor', 'benjamin.jpg', 'benjamin.carter@university.edu', '+44 1234 567901', 'Dr. Benjamin Carter is a Cybersecurity expert with a background in Threat Intelligence and Security Architecture. He has worked with government agencies on cybersecurity strategy.'),
(13, 'Dr. Chloe Thompson', 'Lecturer', 'chloe.jpg', 'chloe.thompson@university.edu', '+44 1334 567902', 'Dr. Chloe Thompson is a Cloud Computing specialist, focusing on hybrid cloud architectures and distributed systems. She has implemented large-scale cloud solutions for enterprises.'),
(14, 'Dr. Daniel Robinson', 'Lecturer', 'daniel.jpg', 'daniel.robinson@university.edu', '+44 1434 567903', 'Dr. Daniel Robinson is an expert in Embedded Systems and IoT. He designs secure IoT solutions for smart cities, industrial automation, and healthcare.'),
(15, 'Dr. Emily Davis', 'Lecturer', 'emily.jpg', 'emily.davis@university.edu', '+44 1534 567904', 'Dr. Emily Davis is a Software Engineering researcher, known for her contributions to automated testing, software verification, and secure coding practices.'),
(16, 'Dr. Nathan Hughes', 'Lecturer', 'nathan.jpg', 'nathan.hughes@university.edu', '+44 1634 567905', 'Dr. Nathan Hughes specializes in AI Ethics and Fairness in AI. His work focuses on eliminating bias in AI models and promoting responsible AI development.'),
(17, 'Dr. Olivia Martin', 'Lecturer', 'olivia.jpg', 'olivia.martin@university.edu', '+44 1734 567906', 'Dr. Olivia Martin is a leading researcher in Human-AI Interaction and NLP. She works on AI-driven conversational agents and virtual assistants for accessibility applications.'),
(18, 'Dr. Samuel Anderson', 'Lecturer', 'samuel.jpg', 'samuel.anderson@university.edu', '+44 1834 567907', 'Dr. Samuel Anderson is an expert in Autonomous Systems and Robotics. He has worked on self-driving car technologies and industrial robotic automation.'),
(19, 'Dr. Victoria Hall', 'Lecturer', 'victoria.jpg', 'victoria.hall@university.edu', '+44 1934 567908', 'Dr. Victoria Hall is a specialist in Cybersecurity Law and Policy. She advises governments and corporations on digital privacy, GDPR compliance, and cyber regulations.'),
(20, 'Dr. William Scott', 'Lecturer', 'william.jpg', 'william.scott@university.edu', '+44 2034 567909', 'Dr. William Scott is an AI Researcher focusing on Explainable AI and Trustworthy Machine Learning. His work ensures AI models are transparent, fair, and accountable.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` enum('admin','teacher','student') NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `user_type`, `created_at`) VALUES
(4, 'admin', 'admin@gmail.com', '$2y$12$RsgeksU9BL2KELp3ylzbOuVonx4YS5NN5opEMdOpGNt4eB3BZ4wxq', 'admin', '2025-03-25 14:10:37'),
(5, 'student', 'student@gmail.com', '$2y$12$lz2ou83fCgBBVzGa/ew/lu/asXiWwb7BWqebA.GNINo7NiyNrjqLC', 'student', '2025-03-25 14:14:32'),
(6, 'teacher', 'teacher@gmail.com', '$2y$12$YnE/S7sFW9hL5PJTbHOxqOOup5k7etYXoG2cxjNjJ9sIOGoxl45hG', 'teacher', '2025-03-25 14:15:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `InterestedStudents`
--
ALTER TABLE `InterestedStudents`
  ADD PRIMARY KEY (`InterestID`),
  ADD UNIQUE KEY `Email` (`Email`,`ProgrammeID`),
  ADD KEY `ProgrammeID` (`ProgrammeID`);

--
-- Indexes for table `Levels`
--
ALTER TABLE `Levels`
  ADD PRIMARY KEY (`LevelID`);

--
-- Indexes for table `Modules`
--
ALTER TABLE `Modules`
  ADD PRIMARY KEY (`ModuleID`),
  ADD KEY `ModuleLeaderID` (`ModuleLeaderID`);

--
-- Indexes for table `ProgrammeModules`
--
ALTER TABLE `ProgrammeModules`
  ADD PRIMARY KEY (`ProgrammeModuleID`),
  ADD KEY `ProgrammeID` (`ProgrammeID`),
  ADD KEY `ModuleID` (`ModuleID`);

--
-- Indexes for table `Programmes`
--
ALTER TABLE `Programmes`
  ADD PRIMARY KEY (`ProgrammeID`),
  ADD KEY `LevelID` (`LevelID`),
  ADD KEY `ProgrammeLeaderID` (`ProgrammeLeaderID`);

--
-- Indexes for table `Staff`
--
ALTER TABLE `Staff`
  ADD PRIMARY KEY (`StaffID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `InterestedStudents`
--
ALTER TABLE `InterestedStudents`
  MODIFY `InterestID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ProgrammeModules`
--
ALTER TABLE `ProgrammeModules`
  MODIFY `ProgrammeModuleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `Programmes`
--
ALTER TABLE `Programmes`
  MODIFY `ProgrammeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `InterestedStudents`
--
ALTER TABLE `InterestedStudents`
  ADD CONSTRAINT `InterestedStudents_ibfk_1` FOREIGN KEY (`ProgrammeID`) REFERENCES `Programmes` (`ProgrammeID`) ON DELETE CASCADE;

--
-- Constraints for table `Modules`
--
ALTER TABLE `Modules`
  ADD CONSTRAINT `Modules_ibfk_1` FOREIGN KEY (`ModuleLeaderID`) REFERENCES `Staff` (`StaffID`);

--
-- Constraints for table `ProgrammeModules`
--
ALTER TABLE `ProgrammeModules`
  ADD CONSTRAINT `ProgrammeModules_ibfk_1` FOREIGN KEY (`ProgrammeID`) REFERENCES `Programmes` (`ProgrammeID`),
  ADD CONSTRAINT `ProgrammeModules_ibfk_2` FOREIGN KEY (`ModuleID`) REFERENCES `Modules` (`ModuleID`);

--
-- Constraints for table `Programmes`
--
ALTER TABLE `Programmes`
  ADD CONSTRAINT `Programmes_ibfk_1` FOREIGN KEY (`LevelID`) REFERENCES `Levels` (`LevelID`),
  ADD CONSTRAINT `Programmes_ibfk_2` FOREIGN KEY (`ProgrammeLeaderID`) REFERENCES `Staff` (`StaffID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
