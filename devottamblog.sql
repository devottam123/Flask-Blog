-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2024 at 08:19 AM
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
-- Database: `devottamblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(18, 'abc', '123456789', 'Email test', '2024-01-06 15:57:05', 'abc@gmail.com'),
(19, 'Devottam Vaishnav', '6350531937', 'Test Message 2', '2024-01-06 16:13:29', 'devottamvaishnav1@gmail.com'),
(20, 'Hello', '123456789', 'Test message 3', '2024-01-06 16:14:59', 'hello@gmail.com'),
(21, 'message flashing', '123456789', 'message flashes', '2024-01-09 23:32:38', 'message@gmail.com'),
(22, 'Ayush', '123456789', 'test msg', '2024-01-09 23:44:11', 'Ayush@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `subheading` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(30) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `subheading`, `owner`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Flask vs Django', 'A look on Python Backend Frameworks', 'Devottam', 'first-post', 'Flask is lightweight, flexible, and minimalist, suitable for small to medium-sized projects, offering freedom and customization with a simpler learning curve. Django is a comprehensive, all-inclusive framework, ideal for large, complex applications, providing built-in features, scalability, security, and a more structured environment, albeit with a steeper learning curve and less flexibility in choosing components. The choice depends on project size, complexity, and the level of guidance and features needed.', 'Django-vs-Flask-1.jpg', '2024-01-10 01:00:10'),
(3, 'I believe every human has a finite number of heartbeats. I don\'t intend to waste any of mine.', '', 'Devottam', 'third-post', 'In the finite rhythm of our existence, each heartbeat marks a fleeting moment of life\'s precious currency. Recognizing this scarcity, a resolve to cherish every pulse emerges. It\'s a commitment to purposefully navigate this temporal existence, valuing each heartbeat as a currency of experience. With an acute awareness of mortality, there\'s a dedication to infuse each throb with passion, purpose, and significance. This ethos propels a relentless pursuit of meaningful moments, ensuring that no heartbeat echoes in vain, each one resonating with purpose and intention.', 'post-bg.jpg', '2024-01-10 00:52:54'),
(4, 'Science has not yet mastered prophecy', 'We predict too much for the next year and yet far ', 'Devottam', 'fouth-post', '\r\nScience, despite its immense strides, remains humbled by the enigma of prophecy. Its empirical grasp has yet to decipher the intricacies of foreseeing the future. Within its methodical realm, prophecy eludes mastery, lingering beyond the realm of scientific validation. While science illuminates the mysteries of the universe, the elusive nature of prophecy stands as an uncharted territory, resistant to systematic comprehension. The convergence of empirical evidence and the prophetic remains a juncture where the certainties of science yield to the enigmatic whispers of the unknown.', 'home-bg.jpg', '2024-01-06 23:21:57'),
(5, 'testing', 'test heading', 'sss', 'ssss', 'ssssss', 'Django-vs-Flask-1.jpg', '2024-01-10 01:02:59'),
(6, 'sssss', 'ssssss', 'ttt', 'ssd', 'sdfgfds', '3.png', '2024-01-10 02:18:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
