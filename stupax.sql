-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 25, 2018 at 08:02 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stupax`
--

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `author` varchar(128) NOT NULL,
  `category` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `title`, `author`, `category`, `timestamp`, `content`) VALUES
(10, 'Three blocks', 'Matthias Barde', 1, 1519582292, '{"guy":{"_posX":1,"_posY":7},"finish":{"_posX":10,"_posY":7,"target":""},"emitters":[],"platforms":[{"_posX":1,"_posY":5,"_width":2,"_height":2},{"_posX":5,"_posY":5,"_width":2,"_height":2},{"_posX":9,"_posY":5,"_width":2,"_height":2}],"movPlatform":{"_posX":3,"_posY":6,"_width":1,"_height":1},"boxes":[{"_posX":5,"_posY":7,"_width":1,"_height":1},{"_posX":5,"_posY":9,"_width":1,"_height":1},{"_posX":9,"_posY":7,"_width":1,"_height":1},{"_posX":9,"_posY":9,"_width":1,"_height":1}]}'),
(11, 'One box', 'Matthias Barde', 1, 1519582361, '{"guy":{"_posX":5,"_posY":8},"finish":{"_posX":13,"_posY":6,"target":""},"emitters":[],"platforms":[{"_posX":8,"_posY":10,"_width":5,"_height":1},{"_posX":8,"_posY":8,"_width":2,"_height":1},{"_posX":12,"_posY":7,"_width":1,"_height":3},{"_posX":9,"_posY":4,"_width":1,"_height":4},{"_posX":12,"_posY":5,"_width":3,"_height":1},{"_posX":13,"_posY":7,"_width":2,"_height":1},{"_posX":14,"_posY":6,"_width":1,"_height":1},{"_posX":10,"_posY":4,"_width":3,"_height":1},{"_posX":4,"_posY":7,"_width":5,"_height":1},{"_posX":-4,"_posY":8,"_width":1,"_height":3}],"movPlatform":{"_posX":0,"_posY":11,"_width":2,"_height":1},"boxes":[{"_posX":4,"_posY":8,"_width":1,"_height":2}]}'),
(12, 'Funny boxes', 'Matthias Barde', 1, 1519582373, '{"guy":{"_posX":7,"_posY":7},"finish":{"_posX":15,"_posY":7,"target":""},"emitters":[],"platforms":[{"_posX":5,"_posY":6,"_width":6,"_height":1},{"_posX":13,"_posY":6,"_width":4,"_height":1},{"_posX":10,"_posY":5,"_width":4,"_height":1}],"movPlatform":{"_posX":11,"_posY":6,"_width":2,"_height":1},"boxes":[{"_posX":12,"_posY":8,"_width":1,"_height":1},{"_posX":11,"_posY":9,"_width":1,"_height":1},{"_posX":12,"_posY":10,"_width":1,"_height":1},{"_posX":11,"_posY":11,"_width":1,"_height":1},{"_posX":12,"_posY":12,"_width":1,"_height":1}]}'),
(13, 'Learn to jump', 'Matthias Barde', 1, 1519583742, '{"guy":{"_posX":-1,"_posY":10},"finish":{"_posX":7,"_posY":8,"target":""},"emitters":[],"platforms":[{"_posX":1,"_posY":5,"_width":3,"_height":2},{"_posX":-1,"_posY":5,"_width":1,"_height":1},{"_posX":6,"_posY":5,"_width":2,"_height":3},{"_posX":8,"_posY":7,"_width":1,"_height":3},{"_posX":6,"_posY":9,"_width":2,"_height":1}],"movPlatform":{"_posX":3,"_posY":4,"_width":4,"_height":1},"boxes":[{"_posX":-2,"_posY":9,"_width":3,"_height":1},{"_posX":4,"_posY":5,"_width":2,"_height":2}]}'),
(14, 'Learn to jump 2', 'Matthias Barde', 1, 1519583846, '{"guy":{"_posX":-1,"_posY":10},"finish":{"_posX":11,"_posY":8,"target":""},"emitters":[],"platforms":[{"_posX":1,"_posY":5,"_width":3,"_height":2},{"_posX":-1,"_posY":5,"_width":1,"_height":1},{"_posX":6,"_posY":5,"_width":2,"_height":3},{"_posX":6,"_posY":9,"_width":2,"_height":1},{"_posX":10,"_posY":5,"_width":2,"_height":3},{"_posX":10,"_posY":9,"_width":3,"_height":1},{"_posX":12,"_posY":7,"_width":1,"_height":2}],"movPlatform":{"_posX":3,"_posY":4,"_width":4,"_height":1},"boxes":[{"_posX":-2,"_posY":9,"_width":3,"_height":1},{"_posX":4,"_posY":5,"_width":2,"_height":2},{"_posX":8,"_posY":9,"_width":2,"_height":2}]}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
