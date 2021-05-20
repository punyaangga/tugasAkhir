-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2021 at 08:33 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evoting`
--

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE `desa` (
  `kodeDesa` int(11) NOT NULL,
  `namaDesa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`kodeDesa`, `namaDesa`) VALUES
(8, 'Padalarang');

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `kodeKabupaten` int(11) NOT NULL,
  `namaKabupaten` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`kodeKabupaten`, `namaKabupaten`) VALUES
(17, 'Bandung Barat');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL,
  `kodeProvinsi` int(11) NOT NULL,
  `kodeDesa` int(11) NOT NULL,
  `kodeKabupaten` int(11) NOT NULL,
  `idPemilih` int(11) NOT NULL,
  `noTps` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id`, `kodeProvinsi`, `kodeDesa`, `kodeKabupaten`, `idPemilih`, `noTps`) VALUES
(2, 32, 8, 17, 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `kodeProvinsi` int(11) NOT NULL,
  `namaProvinsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`kodeProvinsi`, `namaProvinsi`) VALUES
(32, 'Jawa Barat');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_session`
--

CREATE TABLE `tbl_session` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) NOT NULL,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `idToken` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`idToken`, `idUser`, `token`) VALUES
(1, 3, '0d25368e97d53eaab58f5756fd80d6b1f405f73ba45d9d30eceebec57683ea57'),
(2, 3, 'b8784a33c78e79af10811410b506a4cf66efc1a44abe7c667ea86a3f4d73b19a'),
(3, 3, 'c18f6336f77208f5b9b1f0edc850d971775ce281f6feca1bd49663d108e50400'),
(4, 3, '6b6451d7abc08d7d3f74445c5180398adf01a3051ad124d018a30b6805ae62d5'),
(5, 3, '94f594011fb7f2b1bea267bca3dd629ab383468896f6cdaba6d254af2f007284'),
(6, 3, '33468cfc05859e832ac9b7a79602cdb133d9cb28b3c184394ffd96f6bd7049f3'),
(7, 3, '7bf18b69754f11946f7ae27a6fd5cc157cfd39e2874602ae4d1a64544184e7ca'),
(8, 3, 'd621b4762af6732566750862a178f2088cedb1d8f7ae4341c3edf3f8a8e69399'),
(9, 3, 'c775332b15bfc12e80d7980a7b57ac48a6843fa231637007e46f4f8e2f2e52c2'),
(10, 3, 'e0421cf881998b3843d553b3221b47e73f2705127e28d79029b5ea1de7047386'),
(11, 3, 'e4a06d0408b3ee2236220c8575382ac14f0a4b92211f805aebe3a1606b3ef151'),
(12, 3, '3aa7d101f22023e59dfc4e720b8b1918f89109c998625735295ff594f368080a'),
(13, 3, 'f8b75740ba0ed27370f5cbc84df385415d303cb545276485b3affb2c24f7dc05'),
(14, 3, '955fb6d23f1b26cc10e858193232e85df54066fdad47756c0a9346fed7b21023'),
(15, 3, '783a008b6134b1b1036c687bd2e8175ff3bc788f0c696942e3f802110108325a'),
(16, 3, 'fa49db5dfb65e35d52e157e20b9c72402790abf8f869fcc999827c05f63d9126'),
(17, 3, 'd8b84e064232911e0adf60ecc7899aaddd76b72d122838106095a8835582f8b4'),
(18, 3, 'b5d80b5ee44b348bb32980bbcfd3efd30d50a3b16e641e1b792e7b41578d52cf'),
(19, 3, 'b650317f3c0d46d640f9fdf62b74cee3c96626a4a73ec7544661a2d789d9e2c1'),
(20, 3, '50e73ab0a4ed79b8aad69786d1209581812ee7635bf9faac28e72b89821ed710'),
(21, 3, '611876b7f4dbf3119d24d5f0355ed3475ce7d2c0cb9d09be3a0fae71c5a5d766'),
(22, 3, 'ec9e58e099f43f59dc7f46af0a2b46b0e5e00f435028889f20491e1997e416a9'),
(23, 3, '609e4db8f757298989e51f4ea66096b6dac0cc034a31e2fdc07fd0cfbc5d69c7'),
(24, 3, '4a3680eccea0c0ae109d60cbe48e538b3680f8d12eb7e3923440292092758d83'),
(25, 3, '26015529ea334bf0cdfbf21de0dde3fea876d0d678cc3dcf26ff903c1e452a52'),
(26, 3, '65c3fa8297a22e4096f2913c06c43fce2300495427767acdc9ea5338fe9a191e'),
(27, 3, 'fa20e46ac1a3e701486c07a639e9ed7eeb696b91a5dcf57f93626a3e68c7a7e1'),
(28, 3, '4fa52f9233c46fb1715147d4e8c5a174bae326c50af6f4e15214da5a5443557b'),
(29, 3, 'a70421d8fdc68ed0a8af604c33f3bf5bdfc50775cdefbf3ae16aa901b53f0d89'),
(30, 3, 'c869e8462d5b907e69b7908b7c81bcc346e4dbaf2b44370bdfeded55570447fd'),
(31, 3, 'b195af8a6c6e2623fc7548d748ad622dbe51cd717c8b2045a865085b25663f1f'),
(32, 3, '1d86326a441cec5c21a5e783c2dcdd512fbd0545f85d800544f2f14f38ad05c1'),
(33, 3, 'a16c16028dea536dc40a71a4f25b9c01b9277d2d8b61f505a5c9b4c95f7b0ea1'),
(34, 3, '03c2e868c1a4417a53bc8d285d260257f0674c00557bd7d7c9f71ca0c541e1cf'),
(35, 3, 'd3565394068db94534cca405664fd00f2085be5a101948d46250a08d3c771ba3'),
(36, 3, '12784ac8d3d82011a4c682861d2ce347b51b919f62137b3f75e3b9b753e268e1'),
(37, 3, 'e7507bb6a8f856c0d4859b86b65146fe10217ac40da2f10bdf3d3dfc65cb51b0'),
(38, 3, '068856ca04616480adbb5a222b0fcf2d3fed2600105916b8d335cfa1d845e267'),
(39, 3, 'fdf080db0426de34256b84dfa3a7ff2ec2b071df230f5e314d2b0d4e42ffe3fa'),
(40, 3, '63ee4dd3527fccea6cfe473f9f312bde66d1c9abca324e22271a208fb3be74cc'),
(41, 3, 'cf856cca3bbb6938d8efd11f2ff7230aaf29f4f7cfaa30a9024ff75726a4b40f'),
(42, 3, 'a3abf69698c17c8bf36d9d20251015bf25c45c08debb54cbac02c9f4d2e27c17'),
(43, 3, 'a3e455c1fd1e0a9378b25ccfa2f055ff48c09727e55663f71bbbe7fb756a3d62'),
(44, 3, '2970de2a36ba10b0e41c86170106d764ca392dda5b04d010598ac5881d5ba739'),
(45, 3, '8559e521584bae6d29139cf153fd696ca2b0647edff796d3197f2d8774a9ec72'),
(46, 3, '58d458d16b47a44a2334a4356b3d4c16bcf026002eb583f0fe7b40c1f08bbf11'),
(47, 3, 'de4c89727e1c2a3515ffa3a5c77904c0c6ef501987156160d646d5fa25e0131a'),
(48, 3, '03797129b5361617d3e5949708226d63e110e6ef97286125316bba2b8116e7f6'),
(49, 3, '7bd6ddb2b8a3afad3afc0f630448d4a2e58f8c2e56743b49e1efe7be018a25e5'),
(50, 3, 'cfb7b5f9f4378c0932b0fd019a7c46c56747d753812564c1ec2ad10039cde7ee'),
(51, 3, '5af91d9d77908da1622dfd46c64a596e2ddeeb803c32dc894b6a1c7e2d75ba1a'),
(52, 3, 'fad8f179c8dd7e05697c117e607c5375ae5fd645534f0a361dafe0c275c4778d'),
(53, 3, '039258d248001f540fe5e0e443b50bf01f183df9bc106b5d3162768f21057d8e'),
(54, 3, 'c801a5a39cf1731b0cbfa049d24059912a9aa2ea9bf6d52cda08ba31b710fb82'),
(55, 3, 'a6999f949b035482c70c0301abb86d659cb296970a29db961c21c6d2b0c7c739'),
(56, 3, '7cacea2809d2251308624c990084bfca1efcd94338f176c654adeb19b54ae048'),
(57, 3, 'b320074ecf4c1e83eefeca5a9b47c2a6a817e6f86d049f42c02c09b6801bbfba'),
(58, 3, 'e17379899c8c74b3fadd5fe6ece387fa79ff35eed198800ae4ad0888e4349aff'),
(59, 3, 'eeaf8e50a8ab06cd161ef9c78d0ef4755a6ffbe9af05e01be350d303ff9a54a3'),
(60, 3, 'f4df155eb447f460879e5dbef6cba2dc1d3aeb9701da9e396e9a24a1b8cd8f1e'),
(61, 3, 'd8e42ccfdedb5cd5091229a3ba2b13cd7e61de4f94bea1481d131ea1705cf134'),
(62, 3, 'ab0c06e6924ede86489a133919b9a8a32f478584bd42e6acb985802443f188c9'),
(63, 3, '822366b14c618803f0ee73cc77ac4647158aabe5f81365b6937279a25925161b'),
(64, 3, 'cffc37c78ca81814ad0785c20b834b208bb58ddde48697ad19278aed874529b8'),
(65, 3, '6847d323935aeb07bedb8edf1fffeca2bbae5e78af69220850dee7b2a4ba5f47'),
(66, 3, '700bd69d6d950b5e0d2d7691bd3a1378ed4b5dcfd131fa53eb63a2556b8004c9'),
(67, 3, 'e60002d74c795e3e6d5dfe8226f45da4960ce3666c4d9d1ea478c5bb2895e6b0'),
(68, 3, '911c1f26083002d76a26790349e6fc8273b478719475c502f48daa3f22ee8d35'),
(69, 3, '2126974c6e4559cce9eacc6f7f1ff199a1e3da923c6b9e146aa131539f901a23'),
(70, 3, 'd83f00bed28eedcf4f846d6db036ba2c29b1edf8b68c91f497233cb93b221938'),
(71, 3, '86922cf992e7408d31fc7d765973a7523ce6af4440bdf69bbfc0053b279866e2'),
(72, 3, 'f78cfc12b3efe8191f0055755d0697fd9ceb30d358084e6968be40f3462359e8'),
(73, 3, '7b46bdb5c796f03c8b120686d3f4f76446dab6740f6d3dbc9d8be1cfdbdaa19f'),
(74, 3, '4ae071383f44dd1d33f8d4397a64ae7610cfa44d9c2263388b0db27680a4eea6'),
(75, 3, '0f2e33f7edbe74be3c841aa411615807c7082f8e013c594d58578a1b40bb8e37'),
(76, 3, '6f272f2d6a56c09bce4a2741736bbf4739b80b5800e305f1a0bccb54d168624c'),
(77, 3, '927bea759839073826635e74c44d6b15a6ec8691ea2ad53df28d1fd4a0511a15'),
(78, 3, '37faaa44b6460b026fb53b409fdce426b7c4e5eecbab78383b08c55dd4fc5573'),
(79, 3, 'fd0bd2faf85c84dce61cad5ec76c81a1f636f7de7401de1eb7c01be87ff6503f'),
(80, 3, '706943bcf0eee6b52fdfd941f767db95fbf322a3fa91039cd7095bfe0919340b'),
(81, 3, 'a467795ed614fe84423e12640d40fc982af453fcbab6332d52f1b1f18bbe36ce'),
(82, 3, '08d05c8b67f598e6892d0fbc3392b9f4eb4e8c5ce8ba3f9027c1283934f18e65'),
(83, 3, '60e74f6aac83aa5817db294b6bb004af4a7bf6057b9edc4edab842e8ac977900'),
(84, 3, 'e1c2a9d4ec305df4bcbff312029ebc992d3c72bf73909c9b22d1797f0a1afbc3'),
(85, 3, 'fc16ea04d7454a12e526bb98c9e5dbe4bb696ff03dc92954377dce53d4d5784d'),
(86, 3, '802bd09ad8819ac59e610c85e564c6e0dd34d893ff33bdab5f1b62d9d784f334'),
(87, 3, '29a8b14577ec81bdddabb548a1abb7c34d516c1fc6af1c874b2109a9b28cde56'),
(88, 3, '5bf159bc820f18cb7bf7fe5beb18c3902cf632cc87c513b07f11c10c2fe0a9dc'),
(89, 3, '78352da28fe679cb3175a5418a25e4ef416fe5e66efcc70994ccfd21b0a53d78'),
(90, 3, '56c9b4d5c1e53424e30d0d9a49c13a1552d2881f2c5740712019e1891724395c'),
(91, 3, '39a1891655b7c5730a52ffe42f5af657a08e90dc317f8aeda56ec91c129c7714'),
(92, 3, '8b6c9311d9110fd05066c4698e8c19ea9d3a49d800092b328a5ffd4eea6039fc'),
(93, 3, '966dc326b276dfa0d29aaa607d0cd9203cdf2c39411c9954d4cf7a114d3334e2'),
(94, 3, '7db588583f47899beb051d012a40e81b10f6c805dd1c5102ce5d98a2f34b06fa'),
(95, 3, '994e3a0142c53be1c8558db0bb4e4b357873ec63870ee83acf58c54d3ffff19c'),
(96, 3, '5a623b119797e18b11955bd9bd04da9548948c184b732f4a3399adb85243e104'),
(97, 3, '69dead9843f3accf219ea1535013b61701ec35976204fdf3d6bed4768fc8414b'),
(98, 3, '225fff8c17bc92f09a66b4fda31c3e4bfc8ab1b645e284db83a3605e24f301af'),
(99, 3, '298d65b6644af4cb7f32e5c67b5ab1d466de80f696b19b85ef3b365eac018252'),
(100, 3, '7db5dd7b5fc8cd64362ebae0eaac575459dc000e53b1203525dd0af2052ea460'),
(101, 3, '1ea319c95d5d8d1f193b7d42e91f8aff8b9f275869610bcc94a4934a6e5913b1'),
(102, 3, '247ca4bea9390ce2daec4c35eaff0772a0ca17628f078835d13d6ac0bb09fb04'),
(103, 3, 'f29fdb990be75444344c705deb8d9b336b9092c21942290cd8be139f0487c0f3'),
(104, 3, '84638319bab18a832917af714f0bb3b8c52fa25b3eebc0af020733b0187ef9e7'),
(105, 3, '8539873d0a5dd460b5c1d19abf65e0f06488a12bcf4e7729fde1bd98a513c621'),
(106, 3, 'dc47e8b1f5b2b9730935bc44f8697e41489c36f7c2cc702096fecad10b398fa8'),
(107, 3, '5feb9fa1b7c7a52baae24acae9802095054088729859c4b0939009b65bd98e13'),
(108, 3, 'a1a3e80739ea4efef47ebc830aac492b022ea28698dd6184c27627167f2de425'),
(109, 3, 'e93f7ef871171615f95a2e91c1dff6d4b7c2d1a795c3fd8b7f647042f912a9b6'),
(110, 3, 'aa8fdefd262c6934ec05b6ceffdb66ebe5501ef1dfef161ac0aef1cd6562cd9b'),
(111, 3, '12838cdd800255262a3cb572f901367ffd5be938110f4175b40e015339ccc606'),
(112, 3, '900ba2aba57eca1efb3e96bb3cf89b8e2db19152613404d5fde373cd9b4eddce'),
(113, 3, 'ec3f53bbdbede4955c1f6bdc9301a983c3d522e045795f79fea2804b2db5d4be'),
(114, 3, '161cd5f5f7d9e1a01d597fc0649b8db8b061fc0adc37d7e5394d9ff8afca75c3'),
(115, 3, 'baa5d21e224dacffb2cb0b343a8107ab370228a27edfbf6319b14cf4a53acab7'),
(116, 3, 'acff751a420a13435f413fad579113716aa44adcea35893a8f77cd47cb1be5f5'),
(117, 3, '37ff46ddc16d8a74150f9f23a5f9ec5db35b172f1187724c1c1af0b26239a60b'),
(118, 3, '31135822dc408471a3222383935eb88cecc2b44775011f820bed4b35254937e1'),
(119, 3, 'eb76122b1b7b064de593bc2defabb885ecd0cb011b1b0b1f66fc26afec606130'),
(120, 3, 'a9e572605e68d855621a7d45879a3941988911ca4d63072060ba9ffc75605f41'),
(121, 3, 'c8b8784fec6e3069b2b83f38c7795f453998210d460ad3cfd9c333d2b20e03b9'),
(122, 3, '6378d904e988a809c0a2739c9332f44c93cea2e63bdd62f9496f89b4dda0461d'),
(123, 3, 'bba00a33e3412a243bc111779ff076dbba6a72044032e7f1a0a9a95520eab43f'),
(124, 3, '15b5a1c17730aea2c5103046f39616d458e71ccf72a03f1c142cfab4d93f9aec'),
(125, 3, '341d9a24b5cdd369e5fcf0901f23c05796e7ec7573269703f7717969ac6616b9'),
(126, 3, 'c1ed12896c9d6ca0a7a6c49e68aabad66b1bab2b164a097930e7661627e74b4f'),
(127, 3, '04f8815ecab43525fdbd98e7b3615951e86d95feb80ed9be968a01b55165d527'),
(128, 3, '1fa8f4649c5f25568426a4870e6e192bac0dbaacc24fa2e5ad538957f17f94ca'),
(129, 3, '1489e83469af0d5ba9d9b6d082af1c7ae7a8e390cee4fc5211c668bf8539cb71'),
(130, 3, '6324b9b45f66d7909697d5838ac53c40999dc581f758ca582a4c099c9ec68b0c'),
(131, 3, 'aadc9c828b92395c19634fe5d692076b6710720b0c219c8ec8197bede28fa02c');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `tanggalLahir` date NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(55) NOT NULL,
  `telp` varchar(12) NOT NULL,
  `role` text NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `tanggalLahir`, `alamat`, `username`, `password`, `email`, `telp`, `role`, `last_login`) VALUES
(3, 'Angga Fantiya Hermawan', '1999-03-31', 'Padalarang', '3217083103990006', '202cb962ac59075b964b07152d234b70', 'anggafantiya@gmail.com', '089640065487', 'Pemilih', '2021-05-20 06:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `voting`
--

CREATE TABLE `voting` (
  `idVoting` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voting`
--

INSERT INTO `voting` (`idVoting`, `idUser`, `pilihan`) VALUES
(1, 3, 'Pilih Paslon 1'),
(2, 3, 'Pilih Paslon 2'),
(3, 3, 'Pilih Paslon 2'),
(4, 3, 'Pilih Paslon 1'),
(5, 3, 'Pilih Paslon 1'),
(6, 3, 'Pilih Paslon 2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`kodeDesa`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`kodeKabupaten`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kodeProvinsi` (`kodeProvinsi`),
  ADD KEY `kodeDesa` (`kodeDesa`),
  ADD KEY `kodeKabupaten` (`kodeKabupaten`),
  ADD KEY `idPemilih` (`idPemilih`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`kodeProvinsi`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`idToken`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voting`
--
ALTER TABLE `voting`
  ADD PRIMARY KEY (`idVoting`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `idToken` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `voting`
--
ALTER TABLE `voting`
  MODIFY `idVoting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD CONSTRAINT `lokasi_ibfk_1` FOREIGN KEY (`kodeProvinsi`) REFERENCES `provinsi` (`kodeProvinsi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lokasi_ibfk_2` FOREIGN KEY (`kodeDesa`) REFERENCES `desa` (`kodeDesa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lokasi_ibfk_3` FOREIGN KEY (`idPemilih`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lokasi_ibfk_4` FOREIGN KEY (`kodeKabupaten`) REFERENCES `kabupaten` (`kodeKabupaten`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
