CREATE TABLE IF NOT EXISTS `tabla_parqueo` (
  `id` int(11) NOT NULL auto_increment,
  `visitante` varchar(25) NOT NULL,
  `marca` varchar(25) NOT NULL,
  `placa` varchar(25) NOT NULL,
  `torre` int(11) NOT NULL,
  `apartamento` int(11) NOT NULL,
  `persona` varchar(25) NOT NULL,
  `numparqueo` int(11) NOT NULL,
  `fechaentrada` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `fechasalida` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `valor` numeric(9.0),
  PRIMARY KEY  (`id`)
  FOREIGN KEY (`parqueo_id`) REFERENCES parqueadero(`parqueo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

SELECT * FROM  tabla_parqueo ORDER BY 'id' DESC

--
-- Volcar la base de datos para la tabla `tabla_parqueo`
--



