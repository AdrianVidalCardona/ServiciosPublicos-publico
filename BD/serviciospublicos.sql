-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-10-2022 a las 21:39:52
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `serviciospublicos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `Id_perso` int(2) NOT NULL,
  `Num_perso` int(2) DEFAULT NULL,
  `Cargo_perso` varchar(40) NOT NULL,
  `Nombre_perso` varchar(40) NOT NULL,
  `Celular_perso` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`Id_perso`, `Num_perso`, `Cargo_perso`, `Nombre_perso`, `Celular_perso`) VALUES
(1, 1, 'Supervisor', 'ADRIANA MENDOZA ALARCON', '3158707102'),
(2, 2, 'Supervisor', 'AUGUSTO ENRIQUE RIPOLL MORALES', '3168682950'),
(3, 3, 'Supervisor', 'DARWIN GALVAN ORTIZ', '3005031604'),
(4, 4, 'Supervisor', 'EDGARDO JOSÉ MERCADO URUETA', '3016813327'),
(5, 5, 'Supervisor', 'EMIRO DE JESUS GONZALEZ TORREGLOZA', '3113705621'),
(6, 6, 'Supervisor', 'IRIBETH FAMA PALOMINO', '3135239225'),
(7, 7, 'Supervisor', 'JAIRO CALDERON PUERTA', '3134773593'),
(8, 8, 'Supervisor', 'JESUS DAVID GALVAN URUETA', '3006902306'),
(9, 9, 'Supervisor', 'JOEL RIVERA REYES', '3122969216'),
(10, 10, 'Supervisor', 'JUAN BAENA MEJIA', '3205389526'),
(11, 11, 'Supervisor', 'KAROL SOLANO', '3006051416'),
(12, 12, 'Supervisor', 'LUIS MARIANO BLANCO RODRIGUEZ', '3218015696'),
(13, 13, 'Supervisor', 'OSCAR IVAN ALVAREZ PEREZ', '3108365005'),
(14, 14, 'Supervisor', 'RANIER JR MILANO DE LA PARRA', '3017009492'),
(15, 15, 'Supervisor', 'RODRIGO ALFONSO FIGUEROA DE LA ROSA', '3177634095'),
(16, 16, 'Supervisor', 'ROSSE MARIE CABALLERO HINCAPIE', '3105379512'),
(17, 17, 'Supervisor', 'RUBÉN DARIO MORA RODRÍGUEZ', '3216761731'),
(18, 18, 'Supervisor', 'WILFRIDO MENDOZA DIAZ', '3006045115'),
(19, 1, 'Oficina', 'ADRIAN MANUEL VIDAL CARDONA', '3004360289'),
(20, 2, 'Oficina', 'ALEX ALFREDO LOPEZ MORANTE', '3106542966'),
(21, 3, 'Oficina', 'CLAUDIA PATRICIA BOTELLO RODRIGUEZ', '3205257614'),
(22, 4, 'Oficina', 'DEISY JULIANA VELEZ OCHOA', '3008868433'),
(23, 5, 'Oficina', 'ENITH VALENCIA LARA', '3043911138'),
(24, 6, 'Oficina', 'FABIAN ANTONIO GAMERO SOLARTE', '3135860287'),
(25, 7, 'Oficina', 'HEIDY PAOLA VILLARROYA SALGADO', '3017884966'),
(26, 8, 'Oficina', 'JAIR ALBERTO CARRILLO MANCERA', '3108648230'),
(27, 9, 'Oficina', 'LUISA BEATRIZ GALEANO CABRERA', '3044322459'),
(28, 10, 'Oficina', 'MARIA ISABEL MASTRASCUSA VILLALOBOS', '3017132270'),
(29, 11, 'Oficina', 'OSCAR GIOVANNY GOMEZ PARGA', '3135028761'),
(30, 12, 'Oficina', 'RAUL ENRIQUE ZAMORA CORTES', '3014761782'),
(31, 13, 'Oficina', 'SANDRA MILENA ARNEDO ALVAREZ', '3008596290'),
(32, 14, 'Oficina', 'YEIMY SARELA MANOSALVA ORDOÑEZ', '3045460792'),
(33, 15, 'Oficina', 'DIEGO ARMANDO OROZCO AGAMEZ', '3014764403'),
(34, 16, 'Oficina', 'JOSE RAMON OROZCO ZAMMATA', '3013523540'),
(35, 17, 'Oficina', 'HILDA KARINA CALVO RODRIGUEZ', '3015513054'),
(36, 18, 'Oficina', 'JESUS ANTONIO NEGRETE', '3016885652'),
(37, 19, 'Oficina', 'JOYLIS LLINETH ALDANA CANTILLO', '3043836473'),
(38, 20, 'Trabajadora Social', 'ELCY ROCIO BELEÑO MORA', '3016563553'),
(39, 21, 'Trabajadora Social', 'MARÍA MAGDALENA GÓMEZ ACOSTA', '3043651899'),
(40, 22, 'Trabajadora Social', 'YOMARIS EMILCE RIPOLL PÉREZ', '3004526022');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `id_ruta` int(2) NOT NULL,
  `Empresa_ruta` varchar(50) NOT NULL,
  `Nombre_ruta` varchar(20) NOT NULL,
  `Horario_ruta` varchar(40) NOT NULL,
  `Descripcion_ruta` varchar(1600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`id_ruta`, `Empresa_ruta`, `Nombre_ruta`, `Horario_ruta`, `Descripcion_ruta`) VALUES
(1, 'PACARIBE S.A E.S.P', '1', 'DIARIO', 'Empieza el recorrido en la India catalina. Puerto duro – sigue Av Daniel Lemaitre - Cra 8 (parque centenario) sigue Cra9 y regresa a la Av D. Lemaitre y sigue Av Pedegral Getsemaní- Cll larga – Cll Arsenal- Av Cll Real (Centro de convenciones) sigue Av Blas de Lezo – Av Santander – gira en la cll 40 hasta la entrada de la serrezuela (éxito san diego) RECORRIDO OBLIGATORIO. Igualmente, el supervisor de ruta debe realizar recorridos alternos dentro de las calles y carreras de la zona. '),
(2, 'PACARIBE S.A E.S.P', '2', 'DIARIO', 'Bocagrande, Laguito, CastilloGrande.'),
(3, 'PACARIBE S.A E.S.P', '3', 'L - M - V - 6PM-2AM', 'Recorrido por las vías principales – Av Miramar - Av Jiménez – Calle Real – 4ta Av de Manga. Sigue al barrio pie de la popa calle 29D hasta la Cra 22. Limite Caribe plaza. Sigue al Barrio Lo Amador por sus vías principales Calle 34 -35- 36. Sigue al Barrio Nariño Cll 36 y Cra 19B. Sigue al Barrio el espinal Calle 35 – 34 hasta la Cra 18. Limite estación de gasolina Cerro san Felipe. Sigue al Barrio Paseo de Bolívar desde el cruce de la calle 30 (AV pedro de Heredia) hasta la estación de Gasolina Petromil. Cra 20c. Sube al Barrio San Pedro y libertad por la Cra 20 - seguimos al Barrio Torices Cra 14 – Cra 13. Calles de la 41 hasta la 53. Seguimos por el sector de Santa Rita por la Cra 17 giramos por la calle 65 del Barrio Canapote - Cra 16B – Cra 15. Entramos al marginal de sur (Av caño Juan Angola) hasta llegar al puente Benjamín herrera – seguimos al Barrio el Cabrero. Av Soledad Román – Av Cra 2da con calle 41ª hasta la Calle 41 límite del parque Apolo. Nos desplazamos por la Av Santander hasta el barrio Crespo. Av Carrera 1era – Cra 2da – Cra 3era hasta la Cra 8ta. Desde la calle 63 hasta la calle 70B. Sigue al Barrio Cielo Mar Calle 70ª con Cra 10 y diagonal 72.'),
(4, 'PACARIBE S.A E.S.P', '4', 'M - J - S - 6PM-2AM', 'Barrio D. Lemaitre Cra 17 – 16 – 15 – 14 – 13 desde la calle 64 hasta la calle 71B – se sube al Barrio la Paz y calle 20 de julio por la Cll 68. Después se sigue al Barrio Santa María entre las Cra 16ª – Cra 13 y Cll 71 y Cll 70D sigue el Barrio 7 de agosto Cra 17 – Cra 13 y Cll 71 hasta la Cll 79 callejones de la pista – los Corales – se sigue al Barrio san Francisco por calle 70 por esta avenida se supervisan los sectores La Paz – Primavera – San Vicente de Paul – se sigue al Barrio la María por la Av principal de la María (Cra 30) y el Barrio la Esperanza por la Cra 34. Hasta el retorno del mercado de Bazurto. Se sigue con el Barrio la Quinta – calle las flores- Barrio el Toril – Barrio lo Amador desde la Av Calle 32 entre Carreras 20D con Carrera 28. Después sigue al Barrio la Candelaria desde la Cra 36ª hasta la Cra 44c y las calles 32 hasta calle 41. Seguimos por la misma Av Calle 32 hacia el Barrio Alcibia - Camino del Medio. Seguimos a el Barrio Boston por la misma vía al Barrio Líbano y Tesca y la Urbanización Castillete. '),
(5, 'PACARIBE S.A E.S.P', '5', 'L - M - V - 6AM-2PM', 'Barrio Olaya Herrera – Sectores Foco Rojo, Ricaute, 11 de noviembre, 11 de Noviembre, el progreso, Central, la puntilla y Playa Blanca. Magdalena y Zarabanda.Sigue el Barrio Chiquinquirá – República de Venezuela. La india, Jardín de Junio, barrio Chapacua sigue la Barrio Los Cerezos las Margaritas, Urbanización el Gallo Sigue al Barrio Chipre Contadora las Gaviotas y los Alpes.'),
(6, 'PACARIBE S.A E.S.P', '6', 'M - J - S - 6AM-2PM', 'Barrio Santa Lucia – Paraíso Real seguimos al barrio la concepción barrio el Recreo, Barrio Ternera, Urb. Villa del Sol, Urb. Beirut, Urb. Siboney. Éxito Cartagena, Ronda Real, la Calle del Biffi, Clínica Madre Bernarda, Centro Betania, Colegio Biffi, Clínica del Rosario, los Bomberos, Cicon, Sector Terminalito, Terminal de Transporte, Barrio el pozón, Ciudadela La India, Flor del Campo, Colombiaton, Bicentenario y Villas de Aranjuez.'),
(7, 'PACARIBE S.A E.S.P', '7', 'L - M - V - 2PM-10PM', 'Barrio 13 junio seguimos al barrio Olaya Herrera - Sector Estela, José Obrero, El porvenir, Las Palmeritas, Las Palmeras, Fredonia, Las Américas, Ucupin, La Sevilla y Nuevo Paraíso'),
(8, 'PACARIBE S.A E.S.P', '8', 'M - J - S - 2PM-10PM', 'Barrio La princesa, Barrio la providencia, Villa Rosita, Barrio Tbernera, San José de los campanos, revivir, Villa estrella, barrio la Carolina, Juan Pablo II, Huellas de Alberto Uribe.'),
(9, 'PACARIBE S.A E.S.P', 'RURAL1', 'L - M - V - 6AM-2PM', 'La Boquilla – Manzanillo'),
(10, 'PACARIBE S.A E.S.P', 'RURAL2', 'L - M - V - 6PM-2AM', 'Bayunca – Pontezuela.'),
(11, 'PACARIBE S.A E.S.P', 'RURAL3', 'M - J - S - 6AM-2PM', 'Tierra baja – Puerto rey – Punta canoca.'),
(12, 'PACARIBE S.A E.S.P', 'RURAL4', 'J - S - 6AM-2PM', 'Arroyo canoa – Arroyo grande – Arroyo las Canoas.'),
(13, 'VEOLIA S.A E.S.P', '1', 'L – M – V 6AM–2PM', 'Barrio el Socorro entre la avenida electrificadora y la calle 29 de Santa Mónica con carreras 71 hasta la 78.'),
(14, 'VEOLIA S.A E.S.P', '2', 'L – M – V 6AM–2PM', 'San Pedro, Santa Mónica, Villas de la Victoria, La Plazuela, Alameda La Victoria, Los Nogales, Villas Del Cielo, Urb. San Fernando, Villa Alejandra, Cartagena de Indias, Callejones de San Fernando que comunican Alameda la victoria con Av. principal de San Fernando hasta llegar a la carrera 80E.Portales de San Fernando.'),
(15, 'VEOLIA S.A E.S.P', '3', 'L – M – V 2PM–10PM', 'Villa rubia, Cesar Flórez, Florida, San Fernando desde la carrera 80 avenida el ministerio hasta la carrera 83 entre la avenida electrificadora hasta la calle 5 límite de prestación hacia camilo torres.'),
(16, 'VEOLIA S.A E.S.P', '4', 'L - M - V 6AM-2PM', 'Camilo Torres, los Santanderes, Altos del Educador, Nueva Venecia, Sectores Unidos hasta llegar al Mega Colegio, comprende desde la carrera78 hasta la carrera 81C del barrio Simón Bolívar entre calle 5 hasta finalizar los barrios la Sierrita y Nueva Venecia, Parte baja de Nueva Venecia, La Esmeralda 1 y 2, Manuela Vergara Curí. 3 de junio.'),
(17, 'VEOLIA S.A E.S.P', '5', 'L - M - V 2PM-10PM', 'A partir de la carrera 81A hasta Ciudadela 2000 incluye Nueva Jerusalén, villa Fanny, Simón bolívar (barrio)carrera 81B , 81C,81D ,82, Nueva Delhi, Sectores Unidos , Ciudadela 2000'),
(18, 'VEOLIA S.A E.S.P', '6', 'L - M -V 2PM-10PM', 'Villa Corelca, La Primavera Principal hasta el Colegio los Robles.'),
(19, 'VEOLIA S.A E.S.P', '7', 'M - J - S 6AM-2PM', 'Nelson Mandela (sector Las Colinas, Las Vegas, Trupillo, Villa Gloria, Francisco de Paula I y II, Los Olivo, Las Torres, El Edén, La Conquista, Virgen del Carmen, 7deDiciembre, Andrés Pastrana, El Millo, Belén, Las Colinas, Las Brisas, Los Pinos, Nueva Colombia, 18 de Enero.'),
(20, 'VEOLIA S.A E.S.P', '8', 'L - M - V 6PM-2AM', 'Pie de la Popa, desde la Crr 22 al Barrio Chino, Barrio Chino, Martínez Martelo, El Prado, Bosque, desde el parque de los Borrachos en la Transv 33 a la Transv 44 (Caño de la Coca Cola), entre la Crisanto Luque y La Bahía, Carrera 35 desde la diagonal 28 hasta la Pedro Heredía.'),
(21, 'VEOLIA S.A E.S.P', '9', 'L - M - V 6PM-2AM', 'Bruselas, Calle Laureano Gómez, desde la diagonal 22 hasta la diagonal 26C entre la transversal 38 y la transversal 45A, Sector Juan XXIII, Sector el refugio a partir de la transversal 45A hasta la 51B, entre la diagonal 21 y avenida Crisanto Luque.'),
(22, 'VEOLIA S.A E.S.P', '10', 'L - M - V 6PM-2AM', 'A partir de la carrera 38, calle principal del Paraguay HL Román hasta la avenida principal de Bruselas diagonal 26C, calle Sotomayor, Amberes, España, Monserrate, Armenia.'),
(23, 'VEOLIA S.A E.S.P', '11', 'L - M - V 6PM-2AM', 'Nueva Granada, 9 de Abril, Las Brisas, La Gloria, Andalucía, Piedra de Bolívar, El Conquistador.'),
(24, 'VEOLIA S.A E.S.P', '12', 'L - M - V 6PM-2AM', 'Chile, Sector Canal de Acuacar de Nuevo Chile, Barrio San Isidro, Los Cerros y Alto de San Isidro. Avenida principal Chile, urbanización Buena Vista y Las Chupa Dedos, la principal de Uninariño hasta la trasv 21 frente al Refugio, Bosquecito, Sector el Olivo, Sector Loma del Marión.'),
(25, 'VEOLIA S.A E.S.P', '13', 'L - M - V 6PM-2AM', 'Escuela Naval, Bosque desde la transversal 51B hasta la transversal 54, Alto Bosque. '),
(26, 'VEOLIA S.A E.S.P', '14', 'L – M – V 6PM–2AM', 'Nuevo Bosque entre la Transv. 53 a la 54 hasta el Box culvert. Bosquecito. Nuevo bosque 7 etapa, Nuevo Bosque II Etapa entre la diagonal 23 la diagonal 29B frente al progreso y la transversal 54.'),
(27, 'VEOLIA S.A E.S.P', '15', 'M – J – S 6PM–2AM', 'Barrio 20 de Julio, Sucre, Bellavista, Río Elba, Villa Barraza, Las Colinas, Emmanuel, Albornoz, Barrido y Domiciliaria del corredor vial Mamonal.'),
(28, 'VEOLIA S.A E.S.P', '16', 'M – J – S 6PM–2AM', 'Desde la Carrera 57E Incluye El Campestre (excepto 1 y 2 etapa), Nuevo Campestre, Altos del Campestre, Santa Clara, Villa Lorena, la Urb. La Fragata. '),
(29, 'VEOLIA S.A E.S.P', '17', 'M – J – S 6PM–2AM', 'Barrio El Carmelo, Plan 400, Blas de Lezo, parte de 3ra y 4ta etapa.'),
(30, 'VEOLIA S.A E.S.P', '18', 'M - J - S 6PM-2AM', 'Desde la calle José A Galán hasta la carrera 57E, Incluye Vista Hermosa, San Pedro Mártir, Luis Carlos Galán, Navas Meisel, Los Olivos, La Coquera, El Quindío, Cooperativo.'),
(31, 'VEOLIA S.A E.S.P', '19', 'M - J - S 6AM-2PM', 'Dese la Calle José A Galán (Carrera 68A), hasta la carrera 71 entre calle 15 hasta calle 3. Incluye; La Reina, San Pedro Mártir, Altos de San Pedro Mártir, La Victoria, El Reposo, India Catalina.'),
(32, 'VEOLIA S.A E.S.P', '20', 'M - J - S 6AM-2PM', 'Desde la calle 5 hasta calle 3 límite con Barrio La Gaitana entre carrera 71 y carrera 80, incluye Maparapa, Puerta de Hierro, Arroz Barato, Policarpa y Membrillal.'),
(33, 'VEOLIA S.A E.S.P', '21', 'L - M - V 6AM-2PM', 'Altos Jardines, Nuevos Jardines, Los Jardines, La Consolata, El Educador'),
(34, 'VEOLIA S.A E.S.P', '22', 'M - J - S 6AM-2PM', 'Pasacaballos.'),
(35, 'VEOLIA S.A E.S.P', '23', 'L – M – V 6AM–2PM', 'Sanatana, baru'),
(36, 'VEOLIA S.A E.S.P', '23', 'M - J - S 6AM–2PM', 'El libertador , villa Carmen ,2 de noviembre, barrio nuevo, El progreso, henequén, sucre, rio Elba, villa rosa, colinas villa Barraza.'),
(37, 'VEOLIA S.A E.S.P', '24', 'M – J – S 6PM–2AM', 'Desde la Transversal 50 hasta la carrera 60 entre la Avenida del Consulado y la Avenida Pedro de Heredía, Incluye; El Cairo, Escallón Villa, Los Ejecutivos I y II'),
(38, 'VEOLIA S.A E.S.P', '25', 'M – J – S 6PM–2AM', 'Calamares (No Incluye las Mzs 19 a la 23 x la Iglesia), Sector el bajo, incluye la principal hasta llegar a la Iglesia de Los Calamares rodeando el Country.'),
(39, 'VEOLIA S.A E.S.P', '26', 'M – J – S 6PM–2AM', 'Camagüey, Los Ángeles, Villa Sandra, Tacarigua , Cavipetrol, El Rubí, El Carmen, Las Delicias, Buenos Aires, La Troncal, Incluye la Diagonal 44, Los Almendros'),
(40, 'VEOLIA S.A E.S.P', '30', 'M - J - S 6PM-2AM', 'Desde la calle 15 hasta la calle 22 entre carrera 65 y central de los Caracoles Pasando por el jardín infantil la Gaviota, Incluye; Urbanización El Golf, La Fragata, La Central, El Milagro, Etapa 1 y 2 del Campestre, Pasando por la parte trasera de la  estación de Policía los Caracoles. '),
(41, 'VEOLIA S.A E.S.P', '31', 'M - J - S 6PM-2AM', 'Blas de Lezo (No Incluye la 3A y 4 Etapa). '),
(42, 'VEOLIA S.A E.S.P', '34', 'L - M - V 6PM-2AM', 'Desde carrera 51 hasta la Carrera 55 entre la Avenida del Consulado y la transversal 51 Incluye; La Campiña Transversal 51, 50, 49A, 49, Sector Libertador y Zaragocilla desde la carrera 51 hasta 55.'),
(43, 'VEOLIA S.A E.S.P', 'AV. PRINCIPALES', 'DIARIO 6PM-2AM', 'Compactables Avenidas Principales. Inicia en Avenida del lago, Principal de Martínez Martelo, Avenida el Bosque, Avenida Crisanto Luque, Avenida el Consulado, Pedro Heredía, Transversal 54 y la Troncal de Occidente'),
(44, 'VEOLIA S.A E.S.P', 'INSULAR', '', 'Bocachica, tierra bomba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supervisores`
--

CREATE TABLE `supervisores` (
  `Id_super` int(2) NOT NULL,
  `Nombre_super` varchar(40) NOT NULL,
  `Celular_super` varchar(12) NOT NULL,
  `FechaNacimiento_super` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `supervisores`
--

INSERT INTO `supervisores` (`Id_super`, `Nombre_super`, `Celular_super`, `FechaNacimiento_super`) VALUES
(1, 'ADRIANA MENDOZA ALARCON', '3158707102', '1981-04-19'),
(2, 'AUGUSTO ENRIQUE RIPOLL MORALES', '3168682950', '1974-09-10'),
(3, 'DARWIN GALVAN ORTIZ', '3005031604', '1988-06-28'),
(4, 'EDGARDO JOSÉ MERCADO URUETA', '3016813327', '1995-11-11'),
(5, 'EMIRO DE JESUS GONZALEZ TORREGLOZA', '3113705621', '1988-09-05'),
(6, 'IRIBETH FAMA PALOMINO', '3135239225', '1963-01-15'),
(7, 'JAIRO CALDERON PUERTA', '3134773593', '1979-04-04'),
(8, 'JESUS DAVID GALVAN URUETA', '3006902306', '1984-09-29'),
(9, 'JOEL RIVERA REYES', '3122969216', '1987-04-28'),
(10, 'JUAN BAENA MEJIA', '3205389526', '1986-02-10'),
(11, 'KAROL SOLANO', '3006051416', '1986-11-22'),
(12, 'LUIS MARIANO BLANCO RODRIGUEZ', '3218015696', '1977-08-19'),
(13, 'OSCAR IVAN ALVAREZ PEREZ', '3108365005', '1986-09-22'),
(14, 'RANIER JR MILANO DE LA PARRA', '3017009492', '1992-08-10'),
(15, 'RODRIGO ALFONSO FIGUEROA DE LA ROSA', '3177634095', '1964-03-14'),
(16, 'ROSSE MARIE CABALLERO HINCAPIE', '3105379512', '1984-01-06'),
(17, 'RUBÉN DARIO MORA RODRÍGUEZ', '3216761731', '1992-08-14'),
(18, 'WILFRIDO MENDOZA DIAZ', '3006045115', '1991-04-11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`Id_perso`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`id_ruta`);

--
-- Indices de la tabla `supervisores`
--
ALTER TABLE `supervisores`
  ADD PRIMARY KEY (`Id_super`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `rutas`
--
ALTER TABLE `rutas`
  MODIFY `id_ruta` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `supervisores`
--
ALTER TABLE `supervisores`
  MODIFY `Id_super` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
