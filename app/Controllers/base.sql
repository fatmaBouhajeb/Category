CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_parent_id` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_parent_id`, `category_name`, `category_created`) VALUES
(1, '0', 'asia', '2018-10-29 12:08:16'),
(2, '1', 'india', '2018-10-29 12:08:49'),
(3, '0', 'europe', '2018-10-29 12:10:16'),
(4, '0', 'africa', '2018-10-29 12:12:38'),
(5, '1', 'shri lanka', '2018-10-29 12:13:34'),
(6, '1', 'singapore', '2018-10-29 12:14:01'),
(7, '1', 'pakistan', '2018-10-29 12:14:41'),
(8, '1', 'bangladesh', '2018-10-29 12:15:08'),
(9, '4', 'Nigeria', '2018-10-29 12:15:40'),
(10, '4', 'Kenya', '2018-10-29 12:15:54'),
(11, '3', 'France', '2018-10-29 12:16:42'),
(12, '3', 'Germany', '2018-10-29 12:44:28'),
(13, '3', 'Iceland', '2018-10-29 12:17:26'),
(14, '2', 'gujarat', '2018-10-29 12:54:23'),
(15, '14', 'surat', '2018-10-29 01:03:14'),
(16, '15', 'katargam', '2018-12-08 05:55:44'),
(19, '12', 'berlin', '2018-12-08 06:06:18'),
(21, '11', 'paris', '2018-12-08 06:20:58'),
(22, '13', 'selfoss', '2018-12-08 06:22:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;