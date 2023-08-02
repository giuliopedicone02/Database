-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ago 02, 2023 alle 08:52
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

DROP DATABASE IF EXISTS `uni_fly`;
CREATE DATABASE IF NOT EXISTS `uni_fly`;
USE `uni_fly`;

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

-- --------------------------------------------------------

--
-- Struttura della tabella `assegnazioneequipaggio`
--

CREATE TABLE `assegnazioneequipaggio` (
  `ID_AssegnazioneEquipaggio` int(11) NOT NULL,
  `ID_Equipaggio` int(11) DEFAULT NULL,
  `ID_Volo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
