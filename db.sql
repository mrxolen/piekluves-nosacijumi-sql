-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: fdb31.runhosting.com
-- Generation Time: Apr 25, 2024 at 05:44 PM
-- Server version: 5.7.40-log
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4451660_sportalaukumi`
--

-- --------------------------------------------------------

--
-- Table structure for table `mikrorajons`
--

CREATE TABLE `mikrorajons` (
  `ID` int(255) NOT NULL,
  `nosaukums` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mikrorajons`
--

INSERT INTO `mikrorajons` (`ID`, `nosaukums`) VALUES
(1, 'Imanta'),
(2, 'Beberbeķi'),
(3, 'Zolitūde'),
(4, 'Pleskodāle'),
(5, 'Šampēteris'),
(6, 'Mūkupurvs'),
(7, 'Katlakalns'),
(8, 'Dzirciems'),
(9, 'Iļģuciems'),
(10, 'Āgenskalns'),
(11, 'Ķīpsala'),
(12, 'Spilve'),
(13, 'Kleisti'),
(14, 'Bolderāja'),
(15, 'Vakarbuļļi'),
(16, 'Daugavgrīva'),
(17, 'Voleri'),
(18, 'Torņakalns'),
(19, 'Salas'),
(20, 'Bieriņi'),
(21, 'Ziepniekkalns'),
(22, 'Berģi'),
(23, 'Bukulti'),
(24, 'Suži'),
(25, 'Jaunciems'),
(26, 'Trīsciems'),
(27, 'Vecāķi'),
(28, 'Vecdaugava'),
(29, 'Mangaļsala'),
(30, 'Vecmīgrāvis'),
(31, 'Kundziņsala'),
(32, 'Sarkandaugava'),
(33, 'Pētersala-Andrejsala'),
(34, 'Vecpilsēta'),
(35, 'Centrs'),
(36, 'Skanste'),
(37, 'Brasa'),
(38, 'Mīlgrāvis'),
(39, 'Mežaparks'),
(40, 'Čiekurkalns'),
(41, 'Teika'),
(42, 'Purvciems'),
(43, 'Grīziņkalns'),
(44, 'Avoti'),
(45, 'Maskavas forštate'),
(46, 'Ķengarags'),
(47, 'Dārzciems'),
(48, 'Pļavnieki'),
(49, 'Šķirotava'),
(50, 'Rumbula'),
(51, 'Dārziņi'),
(52, 'Dreiliņi'),
(53, 'Mežciems'),
(54, 'Jugla');

-- --------------------------------------------------------

--
-- Table structure for table `sporta_laukums`
--

CREATE TABLE `sporta_laukums` (
  `id_laukums` int(11) NOT NULL,
  `id_mikrorajons` int(54) NOT NULL,
  `sp_nosaukums` text COLLATE utf8mb4_unicode_ci,
  `longitude` decimal(10,4) DEFAULT NULL,
  `latitude` decimal(10,4) DEFAULT NULL,
  `dl_vasara` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dl_ziema` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rotallaukums` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skriesana` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `futbols` int(11) DEFAULT NULL,
  `basketbols` int(11) DEFAULT NULL,
  `tr_zona` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pieejams` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adrese` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apraksts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privats` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zona_` int(11) DEFAULT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sporta_laukums`
--

INSERT INTO `sporta_laukums` (`id_laukums`, `id_mikrorajons`, `sp_nosaukums`, `longitude`, `latitude`, `dl_vasara`, `dl_ziema`, `rotallaukums`, `skriesana`, `futbols`, `basketbols`, `tr_zona`, `pieejams`, `adrese`, `apraksts`, `privats`, `zona_`, `foto`) VALUES
(1, 1, 'Rīgas Imantas Vidusskolas Sporta Laukums', 23.9985, 56.9564, '7:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 3, 'Ir', 'Visiem', 'Kurzemes Prospekts 158', 'Plašs sporta komplekss, izbūvēts 2018. gadā. Infrastruktūra ir pārņēmīga un pilnībā atbilst modernajiem standartiem. Tas ir lielākais sporta laukums Imantā.', 'Nē', 2, 'https://cdntest.db.lv/lvold/735/2019/articles/2019/07/488780__5d1dcb83c36a7.jpg'),
(2, 1, '96. Vidusskolas Sporta Laukums', 24.0050, 56.9598, '7:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 1, 'Ir', 'Visiem', 'Auru Iela 6\r\n', 'Imantas otrais lielākais sporta laukums, kas tika uzbūvēts 2018. gadā, ir projekts ar līdzīgu dizainu kā Rīgas Imantas Vidusskolas laukums.', 'Nē', 2, NULL),
(3, 1, 'Anniņmuižas Parks', 24.0157, 56.9557, 'Visu diennakts\r\n', 'Visu diennakts\r\n', 'Ir', 'Piemērots', 0, 0, 'Ir', 'Visiem', 'Dumbrāja Iela 23A\r\n', 'Sporta laukums, kas atrodas Anniņmuižas parkā. Tas nav liels, izņemot rotaļlaukumu, ir tikai spēka treniņu zona. Skriet var pa pašu parku.\n', 'Nē', 2, NULL),
(4, 1, 'Metropolia Namu Sporta Laukums', 24.0179, 56.9606, '8:00-23:00\r\n', '11:00-21:00\r\n', 'Ir', 'Nav piemērots', 0, 1, 'Ir', 'Visiem, izņemot Basketbola laukumu (privāts)\n', 'Anniņmuižas Bulvāris 38\r\n', 'Neliels sporta laukums, kas ir daļēji privāts. Basketbola laukuma izmantošana ir atļauta tikai \"Metropolia\" namu kompleksa iedzīvotājiem. Pārējais ir publisks', 'Daļēji', 2, NULL),
(5, 1, 'Anniņmuižas Vidusskolas Sporta Laukums', 24.0259, 56.9626, '9:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 1, 'Ir', 'Visiem', 'Kleistu iela 14', 'Liels sporta laukums, kas attiecās pie Rīgas Anniņmuižas vidusskolas. Ir viss, kas nepieciešams sportošanai', 'Nē', 2, NULL),
(6, 1, 'Imantas Pērles Namu Sporta Laukums', 24.0201, 56.9632, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots ', 0, 1, 'Ir', 'Visiem', 'Kleistu iela 11', 'Mazs sporta laukums, kas atrodas blakus \"Imantas Pērles\" namu kompleksam. Basketbola laukums ir diezgan sliktā stāvoklī, asfalts daļēji ir saplaisīts.\r\n', 'Nē', 2, NULL),
(7, 1, 'Ostvalda Vidusskolas Sporta Laukums', 24.0141, 56.9660, '9:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 0, 'Ir', 'Visiem', 'Dammes iela 20', 'Sporta laukums, kura lielākā daļa ir liels un kvalitatīvs futbola stadions. Vislabāk ir piemērots futbolam.', 'Nē', 2, NULL),
(8, 1, 'Volvo Stadium', 24.0059, 56.9507, 'Visu diennakts', 'Visu diennakts', 'Nav', 'Nav piemērots', 1, 0, 'Ir', 'Visiem', 'Jūrmalas Gatve 78D', 'Mazs sporta laukums, kas būtiski satur nelielu futbola laukumu un mazu spēka treniņu zonu', 'Nē', 2, NULL),
(9, 3, 'Zolitūdes Ģimnāzijas Sporta Laukums', 24.0076, 56.9456, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 2, 1, 'Ir', 'Visiem', 'Ruses iela 22', 'Lielākais sporta laukums Zolitūdē. Ir diezgan vecs, daudzās vietās ir saplaisīts asfalts', 'Nē', 2, NULL),
(10, 3, 'Ziemeļvalstu Ģimnāzijas Sporta Laukums', 24.0199, 56.9462, '9:00-20:00', '16:00-20:00', 'Ir', 'Nav piemērtots', 0, 0, 'Ir', 'Visiem', 'Paula Lejiņa iela 12', 'Mazs sporta laukums, kas attiecās pie Ziemeļvalstu ģimnāzijas. Ir spēka treniņu zona un rotaļlaukums', 'Nē', 2, NULL),
(11, 3, 'Anniņmuižas Ielas 16-stāvju māju infrastruktūra', 24.0100, 56.9469, 'Visu diennakts', 'Visu diennakts', 'Nav', 'Nav piemērts', 0, 0, 'Ir', 'Visiem', 'Anniņmuižas iela 3-5', 'Nelielas celtnes, domātas spēka treniņiem', 'Nē', 2, NULL),
(12, 4, 'Valdorfskolas Sporta Laukums', 24.0231, 56.9362, '9:00-21:00', '16:00-21:00', 'Nav', 'Piemērots', 1, 0, 'Nav', 'Visiem', 'Šampētera iela 98', 'Sporta laukums, kas būtiski ir stadions ar futbola vārtiem. Laukums pieder Valdorfskolai', 'Nē', 2, NULL),
(13, 4, 'International School Of Riga Laukums', 24.0371, 56.9349, 'Nav', '9:00-18:00', 'Ir', 'Piemērots', 1, 1, 'Ir', 'Skolas mācēkļiem', 'Kalnciema Iela 118', 'Privāts sporta laukums, kas ir ļoti glīts. Piemērots vairākkārt bērniem', 'Jā', 2, NULL),
(14, 4, 'Plūmju Ielas Sporta Infrastruktūra', 24.0172, 56.9425, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Plūmju iela 21', 'Neliels sporta laukums, kas ir blakus pie Plūmju ielas 5-stāvu mājām', 'Nē', 2, NULL),
(15, 5, 'Zasulauka manufaktūras parks', 24.0486, 56.9414, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 0, 1, 'Ir', 'Visiem', 'Šampētera iela 1 k-8', 'Parks, kur atrodās kvalitatīvs un moderns basketbola laukums, kā arī spēka treniņu zona', 'Nē', 2, NULL),
(16, 10, 'Arkādijas Vidusskolas Laukums', 24.0696, 56.9414, '9:00-21:00', '16:00-21:00', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Skolas mācēkļiem', 'Melnsila iela 6', 'Mazs privāts sporta laukums', 'Jā', 2, NULL),
(17, 10, 'Sporta laukums pie \'Z-Towers\'', 24.0812, 56.9465, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', '~Raņķa dambis 30(tuvākā ēka)', 'Faktiski, rotaļlaukums ar spēka treniņu zonu. Moderns un glīts', 'Nē', 2, NULL),
(18, 10, 'Āgenskalna Valsts Ģimnāzijas Sporta Laukums', 24.0745, 56.9415, '9:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 1, 'Ir', 'Visiem', 'Lavīzes iela 2A', 'Labs sporta laukums, kas ir viss nepieciešamais sportošanai. Modernie futbola un basketbola laukumi, skriešanas celiņi', 'Nē', 2, NULL),
(19, 18, 'Arkādijas Parks', 24.0835, 56.9402, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 0, 0, 'Ir', 'Visiem', 'Arkādijas parks', 'Parks, perfekts priekš skriešanai, vai braukšanai ar velosipēdu. Ir rotaļlaukums', 'Nē', 2, NULL),
(20, 8, 'Laukums pie Rīgas 215. Pirmsskolas', 24.0514, 56.9521, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Kurzemes Prospekts', 'Laukums, kas atrodās dienvidu pusē no 215. Pirmsskolas. Ir spēka treniņu zona un rotaļlaukums', 'Nē', 2, NULL),
(21, 8, 'RTU Stadions', 24.0680, 56.9544, '8:00-19:00', 'Slēgts', 'Nav', 'Piemērots', 2, 0, 'Nav', 'Studentiem', 'Daugavgrīvas iela 56A', 'Privāts futbola stadions, kas ir pieejams ar atļauju no RTU administrācijas', 'Jā', 2, NULL),
(22, 8, 'Nordeķu Parks', 24.0576, 56.9636, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 0, 0, 'Ir', 'Visiem', 'Dzirciema iela 56 k-2', 'Parks, kas iekļauj sevī rotaļlaukumu, trenažierus un skriešanas celiņus', 'Nē', 2, NULL),
(23, 8, 'Rīgas 41. Vidusskolas Sporta Laukums', 24.0616, 56.9535, 'Visu diennakts', 'Visu diennakts', 'Nav', 'Nav piemērots', 1, 0, 'Ir', 'Visiem', 'Slokas iela 49A', 'Sporta laukums, kas iekļauj sevī mazo futbola laukumu uz asfalta seguma un nelielu spēka treniņu zonu', 'Nē', 2, NULL),
(24, 9, 'Rīgas 71. Vidusskolas Sporta Laukums', 24.0508, 56.9635, '7:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 1, 'Ir', 'Visiem', 'Iļģuciema iela 6', 'Liels sporta laukums, kurš iekļauj sevī lielo futbola laukumu, basketbola laukumu un vidējo izmēru spēka treniņu zonu. Ir moderns.', 'Nē', 2, NULL),
(25, 9, 'Stūres Ielas Sporta Laukums', 24.0697, 56.9707, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Stūres iela 5', 'Sporta laukums, kas būtiski ir liela spēku treniņu zona. Ir moderns, viss kas nepieciešams.', 'Nē', 2, NULL),
(26, 8, 'Laukums pie Rīgas 215. Pirmsskolas', 24.0514, 56.9521, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Kurzemes Prospekts', 'Laukums, kas atrodās dienvidu pusē no 215. Pirmsskolas. Ir spēka treniņu zona un rotaļlaukums', 'Nē', 2, NULL),
(27, 8, 'RTU Stadions', 24.0680, 56.9544, '8:00-19:00', 'Slēgts', 'Nav', 'Piemērots', 2, 0, 'Nav', 'Studentiem', 'Daugavgrīvas iela 56A', 'Privāts futbola stadions, kas ir pieejams ar atļauju no RTU administrācijas', 'Jā', 2, NULL),
(28, 8, 'Nordeķu Parks', 24.0576, 56.9636, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 0, 0, 'Ir', 'Visiem', 'Dzirciema iela 56 k-2', 'Parks, kas iekļauj sevī rotaļlaukumu, trenažierus un skriešanas celiņus', 'Nē', 2, NULL),
(29, 8, 'Rīgas 41. Vidusskolas Sporta Laukums', 24.0616, 56.9535, 'Visu diennakts', 'Visu diennakts', 'Nav', 'Nav piemērots', 1, 0, 'Ir', 'Visiem', 'Slokas iela 49A', 'Sporta laukums, kas iekļauj sevī mazo futbola laukumu uz asfalta seguma un nelielu spēka treniņu zonu', 'Nē', 2, NULL),
(30, 9, 'Rīgas 71. Vidusskolas Sporta Laukums', 24.0508, 56.9635, '7:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 1, 'Ir', 'Visiem', 'Iļģuciema iela 6', 'Liels sporta laukums, kurš iekļauj sevī lielo futbola laukumu, basketbola laukumu un vidējo izmēru spēka treniņu zonu. Ir moderns', 'Nē', 2, NULL),
(31, 9, 'Stūres Ielas Sporta Laukums', 24.0697, 56.9707, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Stūres iela 5', 'Sporta laukums, kas būtiski ir liela spēku treniņu zona, Ir moderns, viss kas nepieciešams', 'Nē', 2, NULL),
(32, 9, 'Garās Ielas Sporta Laukums', 24.0614, 56.9684, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Garā iela 5', 'Sporta laukums, kas ir spēka treniņu zona, apvienota ar rotaļlaukumu', 'Nē', 2, NULL),
(33, 9, 'Īļģuciema Pamatskolas Sporta Laukums', 24.0558, 56.9712, '7:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 1, 'Ir', 'Visiem', 'Dzirciema iela 109', 'Liels sporta laukums. Ir futbola un basketbola laukumi, moderns.', 'Nē', 2, NULL),
(34, 11, 'Ķīpsalas Pludmales Sporta Laukums', 24.0891, 56.9514, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 2, 0, 'Ir', 'Visiem', 'Balasta dambis 24', 'Nestandarts sporta laukums, kas ir celts uz mākslīgās pludmales. Ir 2 futbola laukumi(smiltī), rotaļlaukums kuģa veidā un trenažieri', 'Nē', 2, NULL),
(35, 13, 'Kleistu Ielas Sporta Laukums', 24.0305, 56.9882, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 1, 'Ir', 'Visiem', 'Kleistu iela 75', 'Liels sporta laukums. Ir basketbola laukums, spēku treniņa zona. Labā stāvoklī', 'Nē', 2, NULL),
(36, 54, 'Juglas Vidusskolas Sporta Laukums', 24.2476, 56.9817, '7:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 2, 'Ir', 'Visiem', 'Skrudalienas iela 1', 'Liels sporta laukums modernā izpildijumā', 'Nē', 1, NULL),
(37, 54, 'Rīgas 63. Pamatskolas Sporta Laukums', 24.2374, 56.9908, 'Visu diennakts', 'Visu diennakts', 'Nav', 'Piemērots', 2, 0, 'Ir', 'Visiem', 'Baltezera iela 6', 'Vecs sporta laukums. Ir liels stadions un mazs futbola laukums. Uz stadiona ir spēka treniņu zona', 'Nē', 1, NULL),
(38, 54, 'Dambjapurva Ezera Aktīvās Atpūtas Laukums', 24.2395, 56.9759, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Palsas iela 32', 'Sporta laukums, kas ir novietots Dambjapurva ezera dienvidu daļā. Ir izpildīts patīkāmā dizainā', 'Nē', 1, NULL),
(39, 54, 'Murjāņu Ielas Sporta Laukums', 24.2477, 56.9779, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', '~Murjāņu iela 36(pie Accescorite veikala)', 'Neliels sēta sporta laukums', 'Nē', 1, NULL),
(40, 54, 'Baltezera Ielas Sporta Laukums', 24.2414, 56.9910, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', '~Baltezera iela 1', 'Rotaļlaukums, pie kura ir uzbūvēta spēka treniņu zona', 'Nē', 1, NULL),
(41, 23, 'Bukultu Pastaigu Taka', 24.2658, 57.0034, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 0, 0, 'Ir', 'Visiem', 'Jaunciema gatve 8F', 'Pastaigu taka, gar guru dažās vietās ir izvietoti rotaļlaukumi. Arī ir spēka treniņu zona', 'Nē', 1, NULL),
(42, 27, 'Vecāķu Pludmales Sporta Laukums', 24.1036, 57.0798, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Selgas iela 20', 'Pludmales sporta laukums, kas ir izvietots uz smiltīm', 'Nē', 1, NULL),
(43, 29, 'Mangaļsalas Pastaigu Taka', 24.0562, 57.0635, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 0, 0, 'Ir', 'Visiem', 'Mangaļsalas iela', 'Pastaigu taka, gar kuru ir spēka treniņu zona un rotaļlaukums', 'Nē', 1, NULL),
(44, 18, 'AB Dambis Sporta Infrastruktūra', 24.0941, 56.9469, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 0, 0, 'Ir', 'Visiem', 'AB Dambis', 'Neliela sporta infrastruktūra uz AB Dambis pussalas', 'Nē', 2, NULL),
(45, 18, 'Rīgas 3. Pamatskolas Sporta Laukums', 24.0918, 56.9196, 'Visu diennakts', 'Visu diennakts', 'Nav', 'Nav piemērots', 0, 1, 'Ir', 'Visiem', 'Telts iela 2A', 'Mazs sporta laukums, kas iekļauj sevī basketbola laukumu un spēka treniņu zonu', 'Nē', 2, NULL),
(46, 14, 'Bolderājas Promenāde', 24.0304, 57.0293, 'Visu diennakts', 'Visu diennakts', 'Nav', 'Piemērots', 0, 0, 'Nav', 'Visiem', 'Gar Lielās ielas', 'Promenāde kur var skriet', 'Nē', 2, NULL),
(47, 14, 'Bolderājas Jaunās Pamatskolas Sporta Laukums', 24.0474, 57.0361, '7:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 0, 'Ir', 'Visiem', 'Miglas iela 9', 'Skolas laukums, kas jau nav tik moderns, tomēr ir liels futbola laukums un spēka treniņu zona', 'Nē', 2, NULL),
(48, 14, 'Rīgas 33. Vidusskolas Sporta Laukums', 24.0524, 57.0340, 'Visu diennakts', '16:00-20:00', 'Nav', 'Piemērots', 1, 0, 'Ir', 'Visiem', 'Stūrmaņu iela 23', 'Sporta laukums vidējā stāvoklī. Ir liels stadions', 'Nē', 2, NULL),
(49, 14, 'Lemešu Ielas Sporta Laukums', 24.0558, 57.0326, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Lemešu iela 7', 'Spēļu laukums, kurā ir spēku treniņu zona. Ir moderns', 'Nē', 2, NULL),
(50, 14, 'Silikātu Ielas Sporta Laukums', 24.0428, 57.0286, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 1, 'Nav', 'Visiem', 'Silikātu iela', 'Basketbola laukums ar spēļu laukumu kopā. Normālā stāvkolī', 'Nē', 2, NULL),
(51, 16, 'Daugavgrīvas Pamatskolas Sporta Laukums', 24.0274, 57.0388, '7:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 1, 'Ir', 'Visiem', 'Parādes iela 5C', 'Moderns sporta laukums, ir lieli futbola un basketbola laukumi', 'Nē', 2, NULL),
(52, 19, 'Lucavsalas Atpūtas Parks', 24.1116, 56.9305, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 1, 0, 'Ir', 'Visiem', 'Lucavsala', 'Liels sporta laukums, kas ir izvietots uz plašas teritorijas', 'Nē', 2, NULL),
(53, 20, 'Akmendārzs', 24.0590, 56.9191, 'Visu diennakts', 'Visu diennakts', 'Nav', 'Piemērots', 0, 0, 'Ir', 'Visiem', 'Amulas iela', 'Skaists parks, kur ir spēku treniņu zona un vieta priekš skriešanas', 'Nē', 2, NULL),
(54, 20, 'Rīgas Angļu Ģimnāzijas Sporta Laukums', 24.0715, 56.9248, '7:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 2, 'Ir', 'Visiem', 'Zvārdes iela 1', 'Liels un moderns sporta laukums. Stadions, kur iekšā ir izvietoti futbola un basketbola laukumi', 'Nē', 2, NULL),
(55, 21, 'Ēbeļmuižas parks', 24.0957, 56.9064, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 0, 0, 'Ir', 'Visiem', 'Zaļenieku iela 21', 'Parks, kur ir rotaļu laukums un spēka treniņu zona', 'Nē', 2, NULL),
(56, 21, 'Bruknas Ielas Sporta Laukums', 24.0890, 56.9003, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Bruknas iela', 'Neliels sēta sporta laukums', 'Nē', 2, NULL),
(57, 21, 'Rīgas Ziepniekkalna Vidusskolas Sporta Laukums', 24.0944, 56.8994, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 1, 1, 'Ir', 'Visiem', 'Ozolciema iela 26', 'Liels sporta laukums normālā stāvoklī', 'Nē', 2, NULL),
(58, 22, 'Berģu Pamatskolas Sporta Laukums', 24.3357, 56.9822, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Skolas iela 8', 'Kompakts sporta laukums. Sadalīts uz rottaļlaukuma zonu un spēka treniņu zonu', 'Nē', 1, NULL),
(59, 30, 'Rīgas 46. Vidusskolas Sporta Laukums', 24.1124, 57.0351, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Skuju iela 28', 'Neliels sporta laukums, kas ir izvietots aiz skolas. Ir spēka treniņu zona un rotaļlaukums', 'Nē', 1, NULL),
(60, 30, 'Ziemēļblāzmas Parks', 24.1025, 57.0371, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Baltās baznīcas iela 1A', 'Sporta laukums, kas atrodās Ziemeļblāzmas parka teritorijā', 'Nē', 1, NULL),
(61, 30, 'Rīgas 31. Vidusskolas Sporta Laukums', 24.1035, 57.0325, '7:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 2, 'Ir', 'Visiem', 'Skuju iela 11', 'Lielākais sporta laukums Vecmīgrāvī. Ir viss, kas nepieciešams sportošanai.', 'Nē', 1, NULL),
(62, 30, 'Melīdas Ielas Sporta Laukums', 24.1059, 57.0287, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Melīdas iela 2', 'Mazs sēta sporta laukums, ir sliktā stāvoklī.', 'Nē', 1, NULL),
(63, 31, 'Kundziņsalas Parks', 24.1066, 57.0013, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 0, 0, 'Ir', 'Visiem', 'Kundziņsalas 6. šķērslīnija 10-12', 'Sporta laukums kas ir izvietots parka centrā, ir pieejama skriešana parkā.', 'Nē', 1, NULL),
(64, 32, 'Ozolaines Parks', 24.1353, 56.9860, 'Visu diennakts', 'Visu diennakts', 'Nav', 'Nav piemērots', 0, 1, 'Ir', 'Visiem', 'Duntes iela 26 k-2', 'Sporta laukumā ir iekļauti basketbola laukums un spēka treniņu zona. Labā stāvoklī.', 'Nē', 1, NULL),
(65, 32, 'Sarkandaugavas Parks', 24.1258, 56.9971, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 0, 0, 'Ir', 'Visiem', 'Ceļinieku iela 12', 'Neliels sporta laukums, skriešana ir iespējama pa visu parku.', 'Nē', 1, NULL),
(66, 32, 'Puškina Licejas Sporta Laukums', 24.1262, 56.9993, '7:00-22:00', '16:00-21:00', 'Nav', 'Piemērots', 1, 1, 'Ir', 'Visiem', 'Sarkandaugavas iela 22', 'Sporta laukums, kas iekļauj sevī modernu stadionu ar futbola laukumu un basketbola laukumu.', 'Nē', 1, NULL),
(67, 33, 'Viesturdārzs', 24.1006, 56.9637, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Rūpniecības iela, k-6 21', 'Parks, kur ir infrastruktūra domāta spēka treniņiem.', 'Nē', 1, NULL),
(68, 35, 'Ēveles Ielas Sporta Laukums', 24.1295, 56.9695, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Ēveles iela 2', 'Neliels rotaļlaukums, kuram blakus ir izvietota neliela sporta infrastruktūra.', 'Nē', 1, NULL),
(69, 35, 'Rīgas 21. Vidusskolas Sporta Laukums', 24.1272, 56.9677, '7:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 1, 'Ir', 'Visiem', 'Tomsona iela 35', 'Liels sporta laukums, ir moderns.', 'Nē', 1, NULL),
(70, 35, 'Rīgas 22. Vidusskolas Sporta Laukums', 24.1264, 56.9583, '7:00-22:00', '16:00-21:00', 'Ir', 'Nav piemērots', 1, 1, 'Ir', 'Visiem', 'Bruņinieku iela 10', 'Liels sporta laukums, ir moderns.', 'Nē', 1, NULL),
(71, 35, 'Ziedoņdārzs', 24.1406, 56.9563, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 0, 2, 'Ir', 'Visiem', 'Aleksandra Čaka iela 84a', 'Parks, kur var nodarboties ar skriešanu, ir 2 basketbola laukumi un spēka treniņu zona.', 'Nē', 1, NULL),
(72, 35, 'Centra Sporta Kvartāls', 24.1436, 56.9614, '7:00-22:00', '9:00-21:00', 'Ir', 'Piemērots', 1, 4, 'Ir', 'Visiem', 'Krišjāņa Barona iela 116A', 'Lielākais sporta laukums Rīgā. Moderns.', 'Nē', 1, NULL),
(73, 36, 'Grostonas Ielas Stieņi', 24.1259, 56.9701, 'Visu diennakts', 'Visu diennakts', 'Nav', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Grostonas iela 12', 'Daži stieņi priekš spēka treniņiem. Labā stāvoklī.', 'Nē', 1, NULL),
(74, 36, 'Rīgas Hanzas Vidusskolas Sporta Laukums', 24.1206, 56.9662, 'Visu diennakts', 'Visu diennakts', 'Nav', 'Nav piemērots', 0, 1, 'Ir', 'Visiem', 'Grostonas iela 5', 'Ir basketbola laukums un spēka treniņu zona.', 'Nē', 1, NULL),
(75, 37, 'Brasas tilta skvērs', 24.1441, 56.9781, 'Visu diennakts', 'Visu diennakts', 'Nav', 'Piemērots', 0, 1, 'Ir', 'Visiem', 'Invalīdu iela 1', 'Normāls sporta laukums.', 'Nē', 1, NULL),
(76, 38, 'Lēdurgas Ielas Sporta Laukums', 24.1322, 57.0172, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Lēdurgas iela 3', 'Vecie stieņi, ir neliels rotaļlaukums', 'Nē', 1, NULL),
(77, 39, 'Mirdzes Ķempas Ielas Sporta Laukums', 24.1681, 56.9943, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Mirdzas Ķempes iela 7', 'Moderns laukums, ir jauna spēku treniņu zona un kompakts rotaļlaukums', 'Nē', 1, NULL),
(78, 39, 'Mežaparks', 24.1442, 57.0126, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 0, 0, 'Ir', 'Visiem', 'Mežaparks', 'Lielākais parks Rīgā, kur ir vairāki sporta laukumi.', 'Nē', 1, NULL),
(79, 40, '4. Līnijas Sporta Laukums', 24.1721, 56.9842, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Čiekurkalna 4. šķērslīnija 9', 'Rotaļlaukums, kuram blakus ir izvietoti daži stieņi', 'Nē', 1, NULL),
(80, 40, 'Ezermalas Ielas Stadions', 24.1793, 56.9966, 'Visu diennakts', 'Visu diennakts', 'Nav', 'Piemērots', 1, 0, 'Nav', 'Visiem', 'Ezermalas iela 12', 'Futbola stadions, ap kuru arī var skriet', 'Nē', 1, NULL),
(81, 41, 'Rīgas 45. Vidusskolas Sporta Laukums', 24.1751, 56.9802, '7:00-22:00', '16:00-21:00', 'Nav', 'Nav piemērots', 1, 0, 'Ir', 'Visiem', 'Ropažu iela 34', 'Laukums, kur ir futbola laukums un spēka treniņu zona', 'Nē', 1, NULL),
(82, 41, 'Rīgas 64. Sākumskolas Sporta Laukums', 24.1836, 56.9671, '7:00-22:00', '16:00-21:00', 'Nav', 'Piemērots', 1, 1, 'Nav', 'Visiem', 'Burtnieku iela 34', 'Laukums, kas sastāv no diviem laukumiem: futbola un basketbola', 'Nē', 1, NULL),
(83, 41, 'Rīgas Teikas Vidusskolas Sporta Laukums', 24.1841, 56.9758, '7:00-22:00', '16:00-21:00', 'Nav', 'Piemērots', 1, 0, 'Nav', 'Visiem', 'Aizkraukles iela 14', 'Laukums, kas sastāv no viena liela futbola laukuma un stadionu ap to', 'Nē', 1, NULL),
(84, 41, 'Jaunās Teikas Sporta Laukums', 24.1682, 56.9760, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Ropažu iela 14 k-1', 'Rotaļlaukums, kuram blakus ir izvietota spēku treniņu zona', 'Nē', 1, NULL),
(85, 42, 'RTK Sporta Laukums', 24.1625, 56.9634, 'Visu diennakts', 'Visu diennakts', 'Nav', 'Piemērots', 1, 0, 'Ir', 'Visiem', 'Braslas iela 16', 'Lielslaukums, kur ir nedaudz spēka treniņu infrastruktūras un futbola laukums', 'Nē', 1, NULL),
(86, 42, 'Rīgas 84. Vidusskolas Sporta Laukums', 24.2059, 56.9501, '7:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 2, 'Ir', 'Visiem', 'Lielvārder iela 141', 'Moderns sporta laukums, ir arī tenisa korts', 'Nē', 1, NULL),
(87, 42, 'Rīgas Tūrisma Tehnikuma Sporta Laukums', 24.1720, 56.9524, '7:00-22:00', '16:00-21:00', 'Nav', 'Piemērots', 1, 1, 'Ir', 'Visiem', 'Nīcgales iela 26', 'Moderns sporta laukums, bez rotaļlaukuma', 'Nē', 1, NULL),
(88, 42, 'Rīgas Klasiskās Ģimnāzijas Sporta Laukums', 24.1801, 56.9531, '7:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 0, 'Ir', 'Visiem', 'Purvciema iela 38', 'Moderns sporta laukums', 'Nē', 1, NULL),
(89, 42, 'Rīgas 64. Vidusskolas Sporta Laukums', 24.1858, 56.9613, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 1, 0, 'Ir', 'Visiem', 'Ūnijas iela 93, k-1', 'Sporta laukums vidējā stāvoklī, ir liels stadions', 'Nē', 1, NULL),
(90, 42, 'Rīgas Purvciema Vidusskolas Sporta Laukus', 24.1919, 56.9519, '7:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 2, 1, 'Ir', 'Visiem', 'Zentas Mauriņas iela 8, Vidzemes priekšpilsēta, Rīga, LV-1082', 'Moderns sporta laukums', 'Nē', 1, NULL),
(91, 43, 'Grīziņkalna Parks', 24.1535, 56.9578, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 0, 2, 'Ir', 'Visiem', 'Pērnavas iela 54', 'Sporta laukums, kas ir integrēts parkā, tajā notiek \"Ghetto Games\" katru gadu', 'Nē', 1, NULL),
(92, 44, 'Rīgas 15. Vidusskolas Sporta Laukums', 24.1318, 56.9475, '7:00-22:00', '16:00-21:00', 'Nav', 'Nav piemērots', 0, 1, 'Ir', 'Visiem', 'Visvalža iela 9', 'Neliels, kompakts sporta laukums, kur ir basketbola laukums un spēka treniņu zona', 'Nē', 1, NULL),
(93, 45, 'Miera Dārzs', 24.1379, 56.9449, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 0, 0, 'Ir', 'Visiem', 'Kalupes iela 4', 'Sporta laukums, kas atrodās parkā', 'Nē', 1, NULL),
(94, 45, 'Latgales Parks', 24.1518, 56.9363, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 0, 0, 'Ir', 'Visiem', 'Maskavas iela 139', 'Sporta laukums, kas atrodās parkā', 'Nē', 1, NULL),
(95, 45, 'Rīgas 75. Vidusskolas Sporta Laukums', 24.1623, 56.9274, '7:00-22:00', '16:00-21:00', 'Nav', 'Piemērots', 1, 2, 'Ir', 'Visiem', 'Ogres iela 9', 'Moderna sporta bāze, ir liela. Viss kas nepieciešams sportošanai', 'Nē', 1, NULL),
(96, 45, 'Lubānas Ielas Sporta Laukums', 24.1635, 56.9333, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', '~Lubānas iela 24', 'Liels vingrošanas laukums', 'Nē', 1, NULL),
(97, 46, 'Ķengaraga parks', 24.1972, 56.9017, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 0, 1, 'Ir', 'Visiem', 'Kvadrāta iela 1', 'Sporta laukums, kas atrodas parkā. Ir basketbola laukums', 'Nē', 1, NULL),
(98, 46, 'Rīgas 72. Vidusskolas Sporta Laukums', 24.2082, 56.9022, '7:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 2, 2, 'Ir', 'Visiem', 'Īkšķiles iela 6', 'Liels un moderns sporta laukums', 'Nē', 1, NULL),
(99, 46, 'Rīgas 25. Vidusskolas Sporta Laukums', 24.1834, 56.9117, '7:00-22:00', '16:00-21:00', 'Nav', 'Piemērots', 1, 2, 'Ir', 'Visiem', 'Rušonu iela 6', 'Liels un moderns sporta laukums', 'Nē', 1, NULL),
(100, 46, 'Stadions \"Daugmale\"', 24.1793, 56.9185, 'Visu diennakts', 'Visu diennakts', 'Nav', 'Piemērots', 1, 1, 'Nav', 'Visiem', 'Salaspils iela 10', 'Stadions, kurā iekšpusē ir futbola laukums, bet ārējā pusē ir 2 basketbola grozi', 'Nē', 1, NULL),
(101, 47, 'Rīgas 93. Vidusskolas Sporta Laukums', 24.1904, 56.9449, 'Visu diennakts', 'Visu diennakts', 'Nav', 'Piemērots', 2, 0, 'Ir', 'Visiem', 'Sesku iela 72', 'Liels sporta laukums, kur arī ir stadions', 'Nē', 1, NULL),
(102, 48, 'Rīgas 86. Vidusskolas Sporta Laukums', 24.1985, 56.9362, '7:00-22:00', '12:00-22:00', 'Nav', 'Piemērots', 1, 1, 'Ir', 'Visiem', 'Pavasara gatve 3', 'Liels sporta laukums', 'Nē', 1, NULL),
(103, 48, 'Rīgas 88. Vidusskolas Sporta Laukums', 24.2011, 56.9444, 'Visu diennakts', 'Visu diennakts', 'Nav', 'Piemērots', 1, 0, 'Ir', 'Visiem', 'Ilūkstes iela 30', 'Sporta laukums sliktā stāvoklī', 'Nē', 1, NULL),
(104, 48, 'Rīgas 92. Vidusskolas Sporta Laukums', 24.2141, 56.9423, 'Visu diennakts', 'Visu diennakts', 'Nav', 'Piemērots', 2, 0, 'Ir', 'Visiem', 'Ulbrokas iela 3', 'Sporta laukums sliktā stāvoklī', 'Nē', 1, NULL),
(105, 48, 'Pļavnieku Pamatskola Sporta Laukums', 24.2115, 56.9344, '7:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 1, 'Ir', 'Visiem', 'Jāņa Grestes iela 14', 'Lielākais sporta laukums Pļavniekos', 'Nē', 1, NULL),
(106, 48, 'Jasmuižas Ielas Sporta Laukums', 24.2078, 56.9377, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 1, 'Ir', 'Visiem', 'Jasmuižas iela 4', 'Mazs sporta laukums, kas ir savienots ar rotaļlaukumu', 'Nē', 1, NULL),
(107, 49, 'Dzirkaļu Ielas Sporta Laukums', 24.2084, 56.9130, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots', 0, 0, 'Ir', 'Visiem', 'Dzirkaļu iela', 'Mazs, vecs sporta laukums', 'Nē', 1, NULL),
(108, 53, 'Rīgas 242. Pirmsskolas Sporta Laukums', 24.2364, 56.9638, '7:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 2, 'Ir', 'Visiem', 'Hipokrāta iela 25A', 'Liels un moderns sporta laukums', 'Nē', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mikrorajons`
--
ALTER TABLE `mikrorajons`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sporta_laukums`
--
ALTER TABLE `sporta_laukums`
  ADD UNIQUE KEY `id_rajons` (`id_laukums`),
  ADD KEY `id_mikrorajons` (`id_mikrorajons`),
  ADD KEY `zona_` (`zona_`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
