
--
-- Database: `onmyway`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `texto_categoria` varchar(300) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `texto_categoria`) VALUES
(1, 'Paisaje'),
(2, 'Tienda'),
(3, 'Parqueadero'),
(4, 'Turismo'),
(5, 'Deportes'),
(6, 'Accidente'),
(7, 'Animales'),
(8, 'Parques'),
(9, 'Clima'),
(10, 'Famosos');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `id_data` int(11) NOT NULL AUTO_INCREMENT,
  `lat_data` double NOT NULL,
  `lon_data` double NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `fecha_data` datetime NOT NULL,
  `titulo_data` varchar(200) NOT NULL,
  `texto_data` varchar(1000) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  PRIMARY KEY (`id_data`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;


-- --------------------------------------------------------

--
-- Table structure for table `user_fb`
--

CREATE TABLE IF NOT EXISTS `user_fb` (
  `id_user` varchar(200) NOT NULL,
  `firstName` varchar(300) NOT NULL,
  `lastName` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Constraints for dumped tables
--

--
-- Constraints for table `data`
--
ALTER TABLE `data`
  ADD CONSTRAINT `data_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user_fb` (`id_user`),
  ADD CONSTRAINT `data_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);
