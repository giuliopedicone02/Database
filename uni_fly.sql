-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ago 05, 2023 alle 18:57
-- Versione del server: 10.4.28-MariaDB
-- Versione PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unifly`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `aereo`
--

CREATE TABLE `aereo` (
  `ID_Aereo` int(11) NOT NULL,
  `Numero_Serie` varchar(50) DEFAULT NULL,
  `Modello` varchar(255) DEFAULT NULL,
  `Capacità_Passeggeri` int(11) DEFAULT NULL,
  `Anno_Fabbricazione` int(11) DEFAULT NULL,
  `Compagnia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `aereo`
--

INSERT INTO `aereo` (`ID_Aereo`, `Numero_Serie`, `Modello`, `Capacità_Passeggeri`, `Anno_Fabbricazione`, `Compagnia`) VALUES
(1, 'Airbus', 'Airbus A320', 150, 2010, 3),
(2, 'Boeing', 'Boeing 737', 180, 2012, 6),
(3, 'Airbus', 'Airbus A350', 300, 2018, 4),
(4, 'Boeing', 'Boeing 777', 280, 2015, 2),
(5, 'Embraer', 'Embraer E190', 100, 2013, 5),
(6, 'Airbus', 'Airbus A380', 550, 2010, 1),
(7, 'Boeing', 'Boeing 787', 260, 2016, 6),
(8, 'Airbus', 'Airbus A330', 290, 2014, 3),
(9, 'Embraer', 'Embraer E195', 110, 2011, 2),
(10, 'Boeing', 'Boeing 747', 400, 2012, 4),
(11, 'Airbus', 'Airbus A320', 150, 2009, 1),
(12, 'Boeing', 'Boeing 737', 180, 2011, 5),
(13, 'Airbus', 'Airbus A350', 300, 2017, 3),
(14, 'Boeing', 'Boeing 777', 280, 2014, 6),
(15, 'Embraer', 'Embraer E190', 100, 2012, 1),
(16, 'Airbus', 'Airbus A380', 550, 2009, 5),
(17, 'Boeing', 'Boeing 787', 260, 2015, 2),
(18, 'Airbus', 'Airbus A330', 290, 2013, 4),
(19, 'Embraer', 'Embraer E195', 110, 2010, 3),
(20, 'Boeing', 'Boeing 747', 400, 2011, 6),
(21, 'Airbus', 'Airbus A320', 150, 2010, 2),
(22, 'Boeing', 'Boeing 737', 180, 2012, 5),
(23, 'Airbus', 'Airbus A350', 300, 2018, 1),
(24, 'Boeing', 'Boeing 777', 280, 2015, 4),
(25, 'Embraer', 'Embraer E190', 100, 2013, 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `aeroporto`
--

CREATE TABLE `aeroporto` (
  `ID_Aeroporto` int(11) NOT NULL,
  `Nome_Aeroporto` varchar(255) DEFAULT NULL,
  `Città` varchar(255) DEFAULT NULL,
  `Paese` varchar(255) DEFAULT NULL,
  `Codice_ICAO` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `aeroporto`
--

INSERT INTO `aeroporto` (`ID_Aeroporto`, `Nome_Aeroporto`, `Città`, `Paese`, `Codice_ICAO`) VALUES
(1, 'Heathrow Airport', 'London', 'United Kingdom', 'EGLL'),
(2, 'Charles de Gaulle Airport', 'Paris', 'France', 'LFPG'),
(3, 'Aeroporto di Roma-Fiumicino', 'Roma', 'Italy', 'LIRF'),
(4, 'Frankfurt Airport', 'Frankfurt', 'Germany', 'EDDF'),
(5, 'Aeroporto Adolfo Suárez Madrid-Barajas', 'Madrid', 'Spain', 'LEMD'),
(6, 'Aeroporto di Amsterdam-Schiphol', 'Amsterdam', 'Netherlands', 'EHAM'),
(7, 'Aeroporto di Atatürk', 'Istanbul', 'Turkey', 'LTBA'),
(8, 'Aeroporto di Copenhagen-Kastrup', 'Copenhagen', 'Denmark', 'EKCH'),
(9, 'Aeroporto di Vienna-Schwechat', 'Vienna', 'Austria', 'LOWW'),
(10, 'Gatwick Airport', 'London', 'United Kingdom', 'LGAV');

-- --------------------------------------------------------

--
-- Struttura della tabella `assegnazioneequipaggio`
--

CREATE TABLE `assegnazioneequipaggio` (
  `ID_AssegnazioneEquipaggio` int(11) NOT NULL,
  `ID_Equipaggio` int(11) DEFAULT NULL,
  `ID_Volo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `assegnazioneequipaggio`
--

INSERT INTO `assegnazioneequipaggio` (`ID_AssegnazioneEquipaggio`, `ID_Equipaggio`, `ID_Volo`) VALUES
(1, 1, 1),
(2, 13, 1),
(3, 25, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `compagniaaerea`
--

CREATE TABLE `compagniaaerea` (
  `ID_Compagnia` int(11) NOT NULL,
  `Nome_Compagnia` varchar(255) DEFAULT NULL,
  `Anno_Fondazione` int(11) DEFAULT NULL,
  `Codice_ICAO` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `compagniaaerea`
--

INSERT INTO `compagniaaerea` (`ID_Compagnia`, `Nome_Compagnia`, `Anno_Fondazione`, `Codice_ICAO`) VALUES
(1, 'British Airways', 1974, 'BAW'),
(2, 'Ita Airways', 2021, 'ITA'),
(3, 'Air France', 1933, 'AFR'),
(4, 'Ryanair', 1985, 'RYR'),
(5, 'Wizz Air', 2003, 'WZZ'),
(6, 'EasyJet', 1995, 'EZY');

-- --------------------------------------------------------

--
-- Struttura della tabella `equipaggio`
--

CREATE TABLE `equipaggio` (
  `ID_Equipaggio` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Cognome` varchar(255) DEFAULT NULL,
  `Data_Nascita` date DEFAULT NULL,
  `Ruolo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `equipaggio`
--

INSERT INTO `equipaggio` (`ID_Equipaggio`, `Nome`, `Cognome`, `Data_Nascita`, `Ruolo`) VALUES
(1, 'Marco', 'Rossi', '1990-05-15', 'Pilota'),
(2, 'Laura', 'Bianchi', '1988-11-20', 'Pilota'),
(3, 'Alessio', 'Romano', '1994-08-12', 'Pilota'),
(4, 'Sara', 'Galli', '1991-06-30', 'Pilota'),
(5, 'Giovanna', 'Marini', '1993-03-27', 'Pilota'),
(6, 'Davide', 'Gatti', '1988-11-05', 'Pilota'),
(7, 'Roberto', 'Mazza', '1995-06-15', 'Pilota'),
(8, 'Chiara', 'Romano', '1993-03-08', 'Pilota'),
(9, 'Paola', 'Russo', '1992-10-30', 'Pilota'),
(10, 'Marco', 'Ferrari', '1989-09-22', 'Pilota'),
(11, 'Andrea', 'Bianchi', '1993-08-12', 'Pilota'),
(12, 'Giulia', 'Rossi', '1988-06-30', 'Pilota'),
(13, 'Luca', 'Verdi', '1995-03-10', 'Copilota'),
(14, 'Matteo', 'Cattaneo', '1989-09-22', 'Copilota'),
(15, 'Valentina', 'Barbieri', '1994-09-30', 'Copilota'),
(16, 'Gianluca', 'Monti', '1991-12-10', 'Copilota'),
(17, 'Erika', 'Romano', '1994-08-12', 'Copilota'),
(18, 'Massimo', 'Russo', '1996-04-18', 'Copilota'),
(19, 'Luca', 'Verdi', '1995-03-10', 'Copilota'),
(20, 'Matteo', 'Cattaneo', '1989-09-22', 'Copilota'),
(21, 'Valentina', 'Barbieri', '1994-09-30', 'Copilota'),
(22, 'Gianluca', 'Monti', '1991-12-10', 'Copilota'),
(23, 'Erika', 'Romano', '1994-08-12', 'Copilota'),
(24, 'Massimo', 'Russo', '1996-04-18', 'Copilota'),
(25, 'Simone', 'Russo', '1993-07-25', 'Assistente di bordo'),
(26, 'Francesca', 'Ferrari', '1992-01-05', 'Assistente di bordo'),
(27, 'Martina', 'Lombardi', '1996-04-18', 'Assistente di bordo'),
(28, 'Andrea', 'Conti', '1997-02-08', 'Assistente di bordo'),
(29, 'Riccardo', 'Villa', '1990-02-12', 'Assistente di bordo'),
(30, 'Elisa', 'Leone', '1992-07-20', 'Assistente di bordo'),
(31, 'Elena', 'Bianchi', '1996-05-25', 'Assistente di bordo'),
(32, 'Luigi', 'Rossi', '1997-01-18', 'Assistente di bordo'),
(33, 'Carlo', 'Galli', '1990-06-30', 'Assistente di bordo'),
(34, 'Silvia', 'Verdi', '1991-01-05', 'Assistente di bordo'),
(35, 'Martina', 'Cattaneo', '1992-02-08', 'Assistente di bordo'),
(36, 'Lorenzo', 'Ferrari', '1995-03-25', 'Assistente di bordo');

-- --------------------------------------------------------

--
-- Struttura della tabella `passeggero`
--

CREATE TABLE `passeggero` (
  `ID_Passeggero` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Cognome` varchar(255) DEFAULT NULL,
  `Data_Nascita` date DEFAULT NULL,
  `Numero_Telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `passeggero`
--

INSERT INTO `passeggero` (`ID_Passeggero`, `Nome`, `Cognome`, `Data_Nascita`, `Numero_Telefono`) VALUES
(1, 'Emma', 'Smith', '1985-03-15', '+44 1234567890'),
(2, 'Liam', 'Müller', '1990-06-22', '+49 9876543210'),
(3, 'Sophia', 'García', '1988-11-03', '+34 6543210987'),
(4, 'Noah', 'Rossi', '1982-09-11', '+39 3334445556'),
(5, 'Olivia', 'Jansen', '1977-07-28', '+31 612345678'),
(6, 'William', 'Andersen', '1995-05-12', '+45 12345678'),
(7, 'Ava', 'González', '1989-04-18', '+34 6677889900'),
(8, 'Isabella', 'Wagner', '1983-12-29', '+49 987654321'),
(9, 'James', 'Olsen', '1991-08-07', '+44 7778889999'),
(10, 'Oliver', 'Dubois', '1986-02-25', '+33 612345678'),
(11, 'Mia', 'Ferrari', '1979-10-30', '+39 3478765432'),
(12, 'Benjamin', 'Silva', '1992-07-14', '+351 912345678'),
(13, 'Emma', 'Kowalski', '1984-06-19', '+48 500400300'),
(14, 'Lucas', 'Berg', '1998-03-05', '+46 707123456'),
(15, 'Sophia', 'Hernández', '1993-09-01', '+34 654987321'),
(16, 'Alexander', 'Andersson', '1980-11-22', '+46 721314159'),
(17, 'Amelia', 'López', '1996-01-12', '+34 678901234'),
(18, 'Daniel', 'Gruber', '1997-04-03', '+43 6601234567'),
(19, 'Charlotte', 'Van der Berg', '1987-12-08', '+31 611223344'),
(20, 'Liam', 'Dubois', '1989-08-17', '+33 634567890'),
(21, 'Ava', 'Jensen', '1994-03-09', '+45 44445555'),
(22, 'Sophia', 'Hansen', '1981-05-02', '+45 23456789'),
(23, 'Oliver', 'Smith', '1999-06-10', '+44 7543210987'),
(24, 'Isabella', 'García', '1993-07-21', '+34 699887766'),
(25, 'William', 'Bianchi', '1991-02-06', '+39 3661122334'),
(26, 'James', 'Mueller', '1978-09-28', '+49 9876543210'),
(27, 'Emma', 'Janssen', '1986-11-11', '+31 612345678'),
(28, 'Liam', 'Schmidt', '1995-12-16', '+49 1625345879'),
(29, 'Sophia', 'Rossi', '1997-04-23', '+39 3456789123'),
(30, 'Olivia', 'Fischer', '1983-08-31', '+43 69987654321');

-- --------------------------------------------------------

--
-- Struttura della tabella `posto`
--

CREATE TABLE `posto` (
  `ID_Posto` int(11) NOT NULL,
  `Numero_Posto` varchar(10) DEFAULT NULL,
  `Classe` varchar(50) DEFAULT NULL,
  `ID_Aereo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `posto`
--

INSERT INTO `posto` (`ID_Posto`, `Numero_Posto`, `Classe`, `ID_Aereo`) VALUES
(1, '1A', 'Economy', 1),
(2, '1B', 'Business', 1),
(3, '2A', 'Economy', 2),
(4, '2B', 'First', 2),
(5, '3A', 'Business', 3),
(6, '3B', 'First', 3),
(7, '4A', 'Economy', 4),
(8, '4B', 'Business', 4),
(9, '5A', 'Business', 5),
(10, '5B', 'First', 5),
(11, '6A', 'Economy', 6),
(12, '6B', 'First', 6),
(13, '7A', 'Economy', 7),
(14, '7B', 'Business', 7),
(15, '8A', 'Business', 8),
(16, '8B', 'First', 8),
(17, '9A', 'Economy', 9),
(18, '9B', 'Business', 9),
(19, '10A', 'Business', 10),
(20, '10B', 'First', 10),
(21, '11A', 'Economy', 11),
(22, '11B', 'First', 11),
(23, '12A', 'Economy', 12),
(24, '12B', 'Business', 12),
(25, '13A', 'Business', 13),
(26, '13B', 'First', 13),
(27, '14A', 'Economy', 14),
(28, '14B', 'Business', 14),
(29, '15A', 'Business', 15),
(30, '15B', 'First', 15),
(31, '16A', 'Economy', 16),
(32, '16B', 'Business', 16),
(33, '17A', 'Business', 17),
(34, '17B', 'First', 17),
(35, '18A', 'Economy', 18),
(36, '18B', 'Business', 18),
(37, '19A', 'Business', 19),
(38, '19B', 'First', 19),
(39, '20A', 'Economy', 20),
(40, '20B', 'Business', 20),
(41, '21A', 'Business', 21),
(42, '21B', 'First', 21),
(43, '22A', 'Economy', 22),
(44, '22B', 'Business', 22),
(45, '23A', 'Business', 23),
(46, '23B', 'First', 23),
(47, '24A', 'Economy', 24),
(48, '24B', 'Business', 24),
(49, '25A', 'Business', 25),
(50, '25B', 'First', 25);

-- --------------------------------------------------------

--
-- Struttura della tabella `prenotazione`
--

CREATE TABLE `prenotazione` (
  `ID_Prenotazione` int(11) NOT NULL,
  `Codice_Prenotazione` varchar(50) DEFAULT NULL,
  `Data_Prenotazione` date DEFAULT NULL,
  `ID_Passeggero` int(11) DEFAULT NULL,
  `ID_Volo` int(11) DEFAULT NULL,
  `ID_Posto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `prenotazione`
--

INSERT INTO `prenotazione` (`ID_Prenotazione`, `Codice_Prenotazione`, `Data_Prenotazione`, `ID_Passeggero`, `ID_Volo`, `ID_Posto`) VALUES
(1, 'P0001', '2023-08-05', 1, 2, 3),
(2, 'P0002', '2023-08-06', 2, 5, 10),
(3, 'P0003', '2023-08-07', 3, 7, 25),
(4, 'P0004', '2023-08-08', 4, 12, 7),
(5, 'P0005', '2023-08-09', 5, 18, 16),
(6, 'P0006', '2023-08-10', 6, 25, 32),
(7, 'P0007', '2023-08-11', 7, 30, 18),
(8, 'P0008', '2023-08-12', 8, 1, 40),
(9, 'P0009', '2023-08-13', 9, 4, 2),
(10, 'P0010', '2023-08-14', 10, 9, 5),
(11, 'P0011', '2023-08-15', 11, 15, 22),
(12, 'P0012', '2023-08-16', 12, 20, 12),
(13, 'P0013', '2023-08-17', 13, 27, 29),
(14, 'P0014', '2023-08-18', 14, 3, 45),
(15, 'P0015', '2023-08-19', 15, 8, 9),
(16, 'P0016', '2023-08-20', 16, 10, 11),
(17, 'P0017', '2023-08-21', 17, 17, 13),
(18, 'P0018', '2023-08-22', 18, 22, 27),
(19, 'P0019', '2023-08-23', 19, 28, 6),
(20, 'P0020', '2023-08-24', 20, 14, 30),
(21, 'P0021', '2023-08-25', 21, 21, 36),
(22, 'P0022', '2023-08-26', 22, 26, 14),
(23, 'P0023', '2023-08-27', 23, 11, 19),
(24, 'P0024', '2023-08-28', 24, 19, 4),
(25, 'P0025', '2023-08-29', 25, 24, 24),
(26, 'P0026', '2023-08-30', 26, 13, 8),
(27, 'P0027', '2023-08-31', 27, 6, 31),
(28, 'P0028', '2023-09-01', 28, 23, 17),
(29, 'P0029', '2023-09-02', 29, 16, 20),
(30, 'P0030', '2023-09-03', 30, 29, 1),
(31, 'P0031', '2023-09-04', 11, 3, 21),
(32, 'P0032', '2023-09-05', 12, 7, 28),
(33, 'P0033', '2023-09-06', 13, 10, 37),
(34, 'P0034', '2023-09-07', 14, 12, 15),
(35, 'P0035', '2023-09-08', 15, 18, 41),
(36, 'P0036', '2023-09-09', 16, 25, 26),
(37, 'P0037', '2023-09-10', 17, 30, 23),
(38, 'P0038', '2023-09-11', 18, 1, 47),
(39, 'P0039', '2023-09-12', 19, 4, 33),
(40, 'P0040', '2023-09-13', 20, 9, 38),
(41, 'P0041', '2023-09-14', 21, 15, 39),
(42, 'P0042', '2023-09-15', 22, 20, 48),
(43, 'P0043', '2023-09-16', 23, 27, 34),
(44, 'P0044', '2023-09-17', 24, 3, 44),
(45, 'P0045', '2023-09-18', 25, 8, 46),
(46, 'P0046', '2023-09-19', 26, 10, 35),
(47, 'P0047', '2023-09-20', 27, 17, 49),
(48, 'P0048', '2023-09-21', 28, 22, 42),
(49, 'P0049', '2023-09-22', 29, 28, 43),
(50, 'P0050', '2023-09-23', 30, 14, 50);

--
-- Trigger `prenotazione`
--
DELIMITER $$
CREATE TRIGGER `NO_Overbooking` BEFORE INSERT ON `prenotazione` FOR EACH ROW BEGIN
    DECLARE total_posti_prenotati INT;
    DECLARE capacita_aereo INT;
    
    -- Calcola il numero di posti già prenotati per il volo della nuova prenotazione
    SELECT COUNT(ID_Prenotazione) INTO total_posti_prenotati
    FROM Prenotazione
    WHERE ID_Volo = NEW.ID_Volo;
    
    -- Ottieni la capacità massima dell'aereo del volo della nuova prenotazione
    SELECT Capacità_Passeggeri INTO capacita_aereo
    FROM Aereo
    WHERE ID_Aereo = (
        SELECT ID_Aereo
        FROM Volo
        WHERE ID_Volo = NEW.ID_Volo
    );

    -- Se il numero di posti prenotati supera la capacità dell'aereo, genera un errore
    IF total_posti_prenotati >= capacita_aereo THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Numero massimo di posti prenotati superato per questo volo.';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `prenotazionipervolo`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `prenotazionipervolo` (
`ID_Volo` int(11)
,`NumeroPrenotazioni` bigint(21)
);

-- --------------------------------------------------------

--
-- Struttura della tabella `servizio`
--

CREATE TABLE `servizio` (
  `ID_ServizioVolo` int(11) NOT NULL,
  `Descrizione` varchar(255) DEFAULT NULL,
  `Costo` int(11) DEFAULT NULL,
  `ID_Volo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `servizio`
--

INSERT INTO `servizio` (`ID_ServizioVolo`, `Descrizione`, `Costo`, `ID_Volo`) VALUES
(1, 'Wi-Fi a bordo', 11, 1),
(2, 'Pasto standard', 16, 1),
(3, 'Assistenza per disabili', 5, 1),
(4, 'Spazio extra per le gambe', 8, 4),
(5, 'Pasto vegetariano', 12, 5),
(6, 'Assicurazione di viaggio', 20, 5),
(7, 'Divertimento a bordo', 7, 12),
(8, 'Accesso lounge in aeroporto', 25, 21),
(9, 'Bagaglio extra', 9, 21),
(10, 'Servizio bevande gratuito', 8, 23);

-- --------------------------------------------------------

--
-- Struttura della tabella `volo`
--

CREATE TABLE `volo` (
  `ID_Volo` int(11) NOT NULL,
  `Numero_Volo` varchar(50) DEFAULT NULL,
  `Data_Partenza` date DEFAULT NULL,
  `Ora_Partenza` time DEFAULT NULL,
  `Aeroporto_Partenza` int(11) DEFAULT NULL,
  `Aeroporto_Arrivo` int(11) DEFAULT NULL,
  `ID_Aereo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `volo`
--

INSERT INTO `volo` (`ID_Volo`, `Numero_Volo`, `Data_Partenza`, `Ora_Partenza`, `Aeroporto_Partenza`, `Aeroporto_Arrivo`, `ID_Aereo`) VALUES
(1, 'BA123', '2023-08-10', '08:00:00', 1, 2, 1),
(2, 'LH456', '2023-08-10', '09:30:00', 3, 4, 2),
(3, 'AF789', '2023-08-10', '10:45:00', 5, 6, 3),
(4, 'FR123', '2023-08-11', '11:15:00', 7, 8, 4),
(5, 'W6ABC', '2023-08-11', '12:30:00', 9, 10, 5),
(6, 'EZY987', '2023-08-11', '14:00:00', 1, 3, 6),
(7, 'BA987', '2023-08-12', '08:30:00', 2, 4, 7),
(8, 'LH345', '2023-08-12', '09:45:00', 5, 7, 8),
(9, 'AF678', '2023-08-12', '11:00:00', 8, 10, 9),
(10, 'FR456', '2023-08-13', '12:15:00', 1, 6, 10),
(11, 'W6DEF', '2023-08-13', '14:30:00', 2, 8, 11),
(12, 'EZY234', '2023-08-13', '15:45:00', 3, 10, 12),
(13, 'BA567', '2023-08-14', '16:30:00', 4, 9, 13),
(14, 'LH789', '2023-08-14', '17:45:00', 5, 7, 14),
(15, 'AF456', '2023-08-14', '18:30:00', 6, 10, 15),
(16, 'FR789', '2023-08-15', '19:15:00', 1, 8, 16),
(17, 'W6GHI', '2023-08-15', '20:30:00', 2, 9, 17),
(18, 'EZY345', '2023-08-15', '21:45:00', 3, 10, 18),
(19, 'BA678', '2023-08-16', '22:30:00', 4, 5, 19),
(20, 'LH123', '2023-08-16', '23:45:00', 6, 7, 20),
(21, 'AF234', '2023-08-16', '08:30:00', 8, 9, 21),
(22, 'FR567', '2023-08-17', '09:45:00', 10, 1, 22),
(23, 'W6JKL', '2023-08-17', '10:30:00', 1, 2, 23),
(24, 'EZY456', '2023-08-17', '11:15:00', 3, 4, 24),
(25, 'BA789', '2023-08-18', '12:30:00', 5, 6, 25),
(26, 'LH234', '2023-08-18', '14:00:00', 7, 8, 1),
(27, 'AF567', '2023-08-18', '15:30:00', 9, 10, 2),
(28, 'FR789', '2023-08-19', '16:45:00', 1, 3, 3),
(29, 'W6MNO', '2023-08-19', '18:00:00', 2, 4, 4),
(30, 'EZY567', '2023-08-19', '19:15:00', 3, 5, 5);

-- --------------------------------------------------------

--
-- Struttura per vista `prenotazionipervolo`
--
DROP TABLE IF EXISTS `prenotazionipervolo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `prenotazionipervolo`  AS SELECT `prenotazione`.`ID_Volo` AS `ID_Volo`, count(`prenotazione`.`ID_Prenotazione`) AS `NumeroPrenotazioni` FROM `prenotazione` GROUP BY `prenotazione`.`ID_Volo` ;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `aereo`
--
ALTER TABLE `aereo`
  ADD PRIMARY KEY (`ID_Aereo`),
  ADD KEY `Compagnia` (`Compagnia`);

--
-- Indici per le tabelle `aeroporto`
--
ALTER TABLE `aeroporto`
  ADD PRIMARY KEY (`ID_Aeroporto`);

--
-- Indici per le tabelle `assegnazioneequipaggio`
--
ALTER TABLE `assegnazioneequipaggio`
  ADD PRIMARY KEY (`ID_AssegnazioneEquipaggio`),
  ADD KEY `ID_Equipaggio` (`ID_Equipaggio`),
  ADD KEY `ID_Volo` (`ID_Volo`);

--
-- Indici per le tabelle `compagniaaerea`
--
ALTER TABLE `compagniaaerea`
  ADD PRIMARY KEY (`ID_Compagnia`);

--
-- Indici per le tabelle `equipaggio`
--
ALTER TABLE `equipaggio`
  ADD PRIMARY KEY (`ID_Equipaggio`);

--
-- Indici per le tabelle `passeggero`
--
ALTER TABLE `passeggero`
  ADD PRIMARY KEY (`ID_Passeggero`);

--
-- Indici per le tabelle `posto`
--
ALTER TABLE `posto`
  ADD PRIMARY KEY (`ID_Posto`),
  ADD KEY `ID_Aereo` (`ID_Aereo`);

--
-- Indici per le tabelle `prenotazione`
--
ALTER TABLE `prenotazione`
  ADD PRIMARY KEY (`ID_Prenotazione`),
  ADD UNIQUE KEY `Codice_Prenotazione` (`Codice_Prenotazione`),
  ADD KEY `ID_Passeggero` (`ID_Passeggero`),
  ADD KEY `ID_Volo` (`ID_Volo`),
  ADD KEY `ID_Posto` (`ID_Posto`);

--
-- Indici per le tabelle `servizio`
--
ALTER TABLE `servizio`
  ADD PRIMARY KEY (`ID_ServizioVolo`),
  ADD KEY `ID_Volo` (`ID_Volo`);

--
-- Indici per le tabelle `volo`
--
ALTER TABLE `volo`
  ADD PRIMARY KEY (`ID_Volo`),
  ADD KEY `Aeroporto_Partenza` (`Aeroporto_Partenza`),
  ADD KEY `Aeroporto_Arrivo` (`Aeroporto_Arrivo`),
  ADD KEY `ID_Aereo` (`ID_Aereo`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `aereo`
--
ALTER TABLE `aereo`
  ADD CONSTRAINT `aereo_ibfk_1` FOREIGN KEY (`Compagnia`) REFERENCES `compagniaaerea` (`ID_Compagnia`);

--
-- Limiti per la tabella `assegnazioneequipaggio`
--
ALTER TABLE `assegnazioneequipaggio`
  ADD CONSTRAINT `assegnazioneequipaggio_ibfk_1` FOREIGN KEY (`ID_Equipaggio`) REFERENCES `equipaggio` (`ID_Equipaggio`),
  ADD CONSTRAINT `assegnazioneequipaggio_ibfk_2` FOREIGN KEY (`ID_Volo`) REFERENCES `volo` (`ID_Volo`);

--
-- Limiti per la tabella `posto`
--
ALTER TABLE `posto`
  ADD CONSTRAINT `posto_ibfk_1` FOREIGN KEY (`ID_Aereo`) REFERENCES `aereo` (`ID_Aereo`);

--
-- Limiti per la tabella `prenotazione`
--
ALTER TABLE `prenotazione`
  ADD CONSTRAINT `prenotazione_ibfk_1` FOREIGN KEY (`ID_Passeggero`) REFERENCES `passeggero` (`ID_Passeggero`),
  ADD CONSTRAINT `prenotazione_ibfk_2` FOREIGN KEY (`ID_Volo`) REFERENCES `volo` (`ID_Volo`),
  ADD CONSTRAINT `prenotazione_ibfk_3` FOREIGN KEY (`ID_Posto`) REFERENCES `posto` (`ID_Posto`);

--
-- Limiti per la tabella `servizio`
--
ALTER TABLE `servizio`
  ADD CONSTRAINT `servizio_ibfk_1` FOREIGN KEY (`ID_Volo`) REFERENCES `volo` (`ID_Volo`);

--
-- Limiti per la tabella `volo`
--
ALTER TABLE `volo`
  ADD CONSTRAINT `volo_ibfk_1` FOREIGN KEY (`Aeroporto_Partenza`) REFERENCES `aeroporto` (`ID_Aeroporto`),
  ADD CONSTRAINT `volo_ibfk_2` FOREIGN KEY (`Aeroporto_Arrivo`) REFERENCES `aeroporto` (`ID_Aeroporto`),
  ADD CONSTRAINT `volo_ibfk_3` FOREIGN KEY (`ID_Aereo`) REFERENCES `aereo` (`ID_Aereo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
