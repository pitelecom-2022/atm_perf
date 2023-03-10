-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 21, 2023 at 11:41 AM
-- Server version: 8.0.31
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gmmm_waypoints`
--

-- --------------------------------------------------------

--
-- Table structure for table `aircrafts`
--

CREATE TABLE `aircrafts` (
  `Type` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `MTOW` decimal(9,2) DEFAULT NULL,
  `MLW` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `TOR` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `LR` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ICAO_category` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `FAA_category` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `aircrafts`
--

INSERT INTO `aircrafts` (`Type`, `MTOW`, `MLW`, `TOR`, `LR`, `ICAO_category`, `FAA_category`) VALUES
('Vickers Viscount 800', '30.40', '', '', '', 'Medium', 'Large'),
('Vickers VC10', '152.00', '151.9', '', '', 'Heavy', 'Heavy'),
('Tupolev Tu-204SM', '104.00', '87.5', '2.25', '', 'Medium', 'Large'),
('Tupolev Tu-154M', '104.00', '80', '', '', 'Medium', 'Large'),
('Scaled Composites Model 351 Stratolaunch', '589.67', '', '3.66', '', 'Heavy', 'Super'),
('Saab 2000', '22.80', '21.5', '1.3', '', 'Medium', 'Large'),
('Saab 340', '13.15', '12.930', '1.3', '1.03', 'Medium', 'Small'),
('Pilatus PC-24[24]', '8.30', '7.665', '893', '724', 'Medium', 'Small'),
('McDonnell-Douglas MD-90-30', '71.00', '64.41', '2.165', '1.52', 'Medium', 'Large'),
('McDonnell-Douglas MD-83', '73.00', '63.28', '', '', 'Medium', 'Large'),
('McDonnell Douglas MD-11', '273.30', '185', '2.99', '1.89', 'Heavy', 'Heavy'),
('McDonnell Douglas DC-10', '256.28', '183', '2.99', '1.89', 'Heavy', 'Heavy'),
('Lockheed L-1011-500', '231.30', '166.92', '2.636', '', 'Heavy', 'Heavy'),
('Lockheed L-1011-200', '211.40', '', '', '', 'Heavy', 'Heavy'),
('Lockheed C-5 Galaxy[4][5][6]', '381.00', '288.417', '2.53', '1.494', 'Heavy', 'Heavy'),
('Learjet 75[23]', '9.75', '8.709', '1.353', '811', 'Medium', 'Small'),
('Ilyushin Il-96M', '270.00', '195.04', '3.115', '2.118', 'Heavy', 'Heavy'),
('Ilyushin IL-96-300', '250.00', '175', '2.6', '1.98', 'Heavy', 'Heavy'),
('Ilyushin IL-86', '208.00', '175', '', '', 'Heavy', 'Heavy'),
('Hawker Siddeley Trident 2E', '65.00', '', '', '', 'Medium', 'Large'),
('Handley Page Hermes', '39.00', '', '', '', 'Medium', 'Large'),
('Fokker 100', '46.00', '39.95', '1.621', '1.35', 'Medium', 'Large'),
('Embraer Phenom 300[25]', '8.15', '7.65', '956', '677', 'Medium', 'Small'),
('Embraer Phenom 100', '4.80', '4.43', '975', '741', 'Light', 'Small'),
('Embraer ERJ 145', '22.00', '19.3', '2.27', '1.38', 'Medium', 'Large'),
('Embraer 190[19]', '48.00', '43', '2.056', '1.323', 'Medium', 'Large'),
('Embraer 175[20]', '37.50', '32.8', '2.244', '1.304', 'Medium', 'Large'),
('Embraer 170[22]', '36.00', '32.8', '1.644', '1.274', 'Medium', 'Large'),
('Embraer 120 Brasilia', '11.50', '11.25', '1.56', '1.38', 'Medium', 'Small'),
('Douglas DC-8-61', '147.00', '', '', '', 'Heavy', 'Heavy'),
('Douglas DC-8-51', '125.00', '', '', '', 'Medium', 'Large'),
('Douglas DC-8-32', '140.00', '', '', '', 'Heavy', 'Heavy'),
('Douglas DC-7', '55.00', '', '', '', 'Medium', 'Large'),
('Douglas DC-6B', '48.50', '', '', '', 'Medium', 'Large'),
('Douglas DC-6A', '48.60', '', '', '', 'Medium', 'Large'),
('Douglas DC-6', '44.00', '', '', '', 'Medium', 'Large'),
('Douglas DC-4', '33.00', '', '', '', 'Medium', 'Large'),
('de Havilland Hercules', '7.00', '', '', '', 'Medium', 'Small'),
('de Havilland Comet 4', '70.70', '', '', '', 'Medium', 'Large'),
('de Havilland Comet 3', '68.00', '', '', '', 'Medium', 'Large'),
('de Havilland Comet 2', '54.00', '', '', '', 'Medium', 'Large'),
('de Havilland Comet 1', '50.00', '', '', '', 'Medium', 'Large'),
('Convair 880', '87.50', '', '', '', 'Medium', 'Large'),
('Concorde', '185.00', '111.1', '3.44', '2.22', 'Heavy', 'Heavy'),
('Cessna Citation CJ4[26]', '7.76', '7.103', '1039', '896', 'Medium', 'Small'),
('Caravelle III', '46.00', '', '', '', 'Medium', 'Large'),
('Bombardier Q400', '28.00', '28.01', '1.219', '1.295', 'Medium', 'Large'),
('Bombardier CRJ900[21]', '36.50', '33.345', '1.778', '1.596', 'Medium', 'Large'),
('Bombardier CRJ700', '33.00', '30.39', '1.564', '1.478', 'Medium', 'Large'),
('Bombardier CRJ200', '23.00', '21.319', '1.918', '1.479', 'Medium', 'Large'),
('Boeing 787-10[10]', '254.00', '201.849', '', '', 'Heavy', 'Heavy'),
('Boeing 787-9[10]', '254.00', '192.777', '2.9', '', 'Heavy', 'Heavy'),
('Boeing 787-8[10]', '228.00', '172.365', '3.3', '1.695', 'Heavy', 'Heavy'),
('Boeing 777F', '347.80', '260.816', '2.83', '', 'Heavy', 'Heavy'),
('Boeing 777-300ER', '351.80', '251.29', '3.1', '', 'Heavy', 'Heavy'),
('Boeing 777-300', '299.37', '237.683', '3.38', '', 'Heavy', 'Heavy'),
('Boeing 777-200LR', '347.45', '223.168', '3', '', 'Heavy', 'Heavy'),
('Boeing 777-200ER', '297.55', '213', '3.38', '1.55', 'Heavy', 'Heavy'),
('Boeing 767-400ER', '204.00', '158.758', '3.414', '', 'Heavy', 'Heavy'),
('Boeing 767-300ER', '187.00', '136.08', '2.713', '1.676', 'Heavy', 'Heavy'),
('Boeing 767-300', '159.00', '136.078', '2.713', '1.676', 'Heavy', 'Heavy'),
('Boeing 757-300', '124.00', '101.6', '2.55', '1.75', 'Medium', 'Large'),
('Boeing 757-200', '116.00', '89.9', '2.347', '1.555', 'Medium', 'Large'),
('Boeing 747-400ER', '412.77', '295.742', '3.09', '', 'Heavy', 'Heavy'),
('Boeing 747-400', '396.90', '295.742', '3.018', '2.179', 'Heavy', 'Heavy'),
('Boeing 747-300[7]', '377.84', '260.32', '3.222', '1.905', 'Heavy', 'Heavy'),
('Boeing 747-200[7]', '377.84', '285.7', '3.338', '2.109', 'Heavy', 'Heavy'),
('Boeing 747-100[7]', '340.20', '265.3', '', '', 'Heavy', 'Heavy'),
('Boeing 747-8F', '447.70', '346.091', '3.1', '1.8', 'Heavy', 'Heavy'),
('Boeing 747-8', '443.61', '306.175', '3.1', '', 'Heavy', 'Heavy'),
('Boeing 737-900ER', '85.00', '71.35', '2.804', '1.829', 'Medium', 'Large'),
('Boeing 737-900', '85.00', '66.36', '2.5', '1.704', 'Medium', 'Large'),
('Boeing 737-800', '79.00', '65.32', '2.308', '1.634', 'Medium', 'Large'),
('Boeing 737-700', '70.00', '58.06', '1.921', '1.415', 'Medium', 'Large'),
('Boeing 737-600', '66.00', '54.66', '1.796', '1.34', 'Medium', 'Large'),
('Boeing 737-500', '60.00', '49.9', '1.832', '1.36', 'Medium', 'Large'),
('Boeing 737-400', '68.00', '54.9', '2.54', '1.54', 'Medium', 'Large'),
('Boeing 737-300', '63.00', '51.7', '1.939', '1.396', 'Medium', 'Large'),
('Boeing 727-200 Advanced[17]', '84.00', '70.1', '', '', 'Medium', 'Large'),
('Boeing 727-200[17]', '78.00', '68.1', '', '', 'Medium', 'Large'),
('Boeing 727-100C[17]', '72.50', '62.4', '', '', 'Medium', 'Large'),
('Boeing 727-100[17]', '72.50', '62.4', '', '', 'Medium', 'Large'),
('Boeing 720B[16]', '106.00', '79.5', '', '', 'Medium', 'Large'),
('Boeing 720[16]', '104.00', '79.5', '', '', 'Medium', 'Large'),
('Boeing 717-200HGW', '55.00', '47.174', '1.95', '', 'Medium', 'Large'),
('Boeing 717-200BGW', '50.00', '46.265', '1.95', '', 'Medium', 'Large'),
('Boeing 707-320C[15]', '151.00', '112.1', '', '', 'Heavy', 'Heavy'),
('Boeing 707-320B[15]', '151.00', '97.5', '', '', 'Heavy', 'Heavy'),
('Boeing 707-120B[15]', '117.00', '86.3', '', '', 'Medium', 'Large'),
('Boeing 377', '67.00', '', '', '', 'Medium', 'Large'),
('Beechcraft 1900D', '7.77', '7.605', '1.036', '853', 'Medium', 'Small'),
('BAe Jetstream 41', '10.89', '10.57', '1.493', '826', 'Medium', 'Small'),
('Avro RJ-85', '42.00', '36.74', '', '', 'Medium', 'Large'),
('ATR 72-600', '22.80', '22.35', '1.333', '914', 'Medium', 'Large'),
('ATR 42-500', '18.60', '18.3', '1.165', '1.126', 'Medium', 'Small'),
('Antonov An-225', '640.00', '591.7', '3.5', '', 'Heavy', 'Super'),
('Antonov An-124-100M', '405.06', '330', '2.52', '900', 'Heavy', 'Heavy'),
('Airbus A400M', '141.00', '122', '980', '770', 'Heavy', 'Heavy'),
('Airbus A380-800[1][2][3]', '575.00', '394', '3.1', '1.93', 'Heavy', 'Super'),
('Airbus A350-1000', '308.00', '233.5', '', '', 'Heavy', 'Heavy'),
('Airbus A350-900', '270.00', '175', '2.67', '1.86', 'Heavy', 'Heavy'),
('Airbus A340-600[8]', '367.40', '256', '3.1', '2.1', 'Heavy', 'Heavy'),
('Airbus A340-500[8]', '371.95', '240', '3.05', '2.01', 'Heavy', 'Heavy'),
('Airbus A340-300[8][9]', '276.70', '190', '3000', '1926', 'Heavy', 'Heavy'),
('Airbus A340-200[8][11]', '253.50', '181', '2990', '', 'Heavy', 'Heavy'),
('Airbus A330-900', '251.00', '191', '3.1', '', 'Heavy', 'Heavy'),
('Airbus A330-300[12][13]', '242.00', '185', '2500', '1750', 'Heavy', 'Heavy'),
('Airbus A330-200[12][13]', '242.00', '180', '2.22', '1.75', 'Heavy', 'Heavy'),
('Airbus A321-100[18]', '83.00', '77.8', '2.2', '1.54', 'Medium', 'Large'),
('Airbus A320-100[18]', '68.00', '66', '1.955', '1.49', 'Medium', 'Large'),
('Airbus A319[18]', '64.00', '62.5', '1.85', '1.47', 'Medium', 'Large'),
('Airbus A318[18]', '59.00', '57.5', '1.375', '1.34', 'Medium', 'Large'),
('Airbus A310-300[14]', '157.00', '124', '2.29', '1.49', 'Heavy', 'Heavy'),
('Airbus A310-200[14]', '142.00', '123', '1.86', '1.48', 'Heavy', 'Heavy'),
('Airbus A300-600R[14]', '192.00', '140', '2.385', '1.555', 'Heavy', 'Heavy'),
('Airbus A300-600[14]', '163.00', '138', '2.324', '1.536', 'Heavy', 'Heavy'),
('Airbus A220-300', '65.00', '57.61', '1.89', '1.494', 'Medium', 'Large'),
('Airbus A220-100', '59.00', '50.8', '1.463', '1.356', 'Medium', 'Large');

-- --------------------------------------------------------

--
-- Table structure for table `fir_casa_waypoints`
--

CREATE TABLE `fir_casa_waypoints` (
  `WAYPOINT` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `COORDINATES` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `OBSERVATIONS` varchar(38) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `fir_casa_waypoints`
--

INSERT INTO `fir_casa_waypoints` (`WAYPOINT`, `COORDINATES`, `OBSERVATIONS`) VALUES
('ABATO', '303214N0083311W', 'Hespress.com'),
('ABDOR', '315311N0072955W', ''),
('ABGIS', '352646N0034447W', ''),
('ABIRO', '354817N0061723W', ''),
('ABISA', '302321N0093044W', ''),
('ABKAN', '342656N0021405W', ''),
('ABMIL', '335400N0075000W', ''),
('ABODA', '352450N0075000W', ''),
('ABTIR', '325056N0124806W', ''),
('ADILI', '355800N0093422W', ''),
('ADKIM', '355000N0060142W', ''),
('ADM', '301919N0092300W', 'VOR DME AGADIR'),
('ADRER', '345026N0021704W', ''),
('ADUBI', '355000N0061837W', 'LECM/GMMM'),
('AGALI', '304340N0092948W', ''),
('AGAMU', '301852N0090541W', ''),
('AGDAL', '340700N0071852W', ''),
('AGOVA', '320113N0071158W', ''),
('AK', '333651N0073354W', 'NDB OUKACHA'),
('AKUDA', '355800N0085700W', ''),
('ALKIX', '341311N0044447W', ''),
('ALM', '351128N0035030W', 'VOR/DME AL HOCEIMA'),
('ALS', '301913N0091910W', ''),
('ALU', '351052N0035040W', ''),
('AMKAS', '335540N0051534W', ''),
('AML', '301925N0092717W', ''),
('AMLOK', '294900N0100121W', ''),
('AMSEL', '355800N0075300W', 'LPPC/GMMM'),
('ANIBI', '341200N0062718W', ''),
('ARENA', '254341N0142131W', ''),
('ARGAB', '302058N0094638W', ''),
('ARI', '345912N0030145W', 'DVOR/DME NADOR'),
('ARIAM', '335322N0013737W', 'GMMM/DAAA'),
('ARSOL', '295551N0093312W', ''),
('KEKIV', '340823N0050653W', ''),
('ASGAM', '350000N0124242W', ''),
('ATVAR', '341932N0051214W', ''),
('AZR', '302209N0092708W', 'AGDIR NDB'),
('BABNA', '300043N0101015W', ''),
('BAGBO', '301902N0053911W', 'GMMM/DAAA'),
('BAKIM', '350232N0065630W', ''),
('BAKRA', '333421N0065339W', 'VFR Flights only - SIDI BATTACHE'),
('BALAM', '301121N0093829W', 'VFR Flights only - TIFNIT'),
('BAMBA', '355000N0062703W', ''),
('BARAM', '321449N0085400W', ''),
('BARIS', '345411N0055550W', ''),
('BAROK', '355800N0100124W', 'LPPC/GMMM'),
('BARPA', '355000N0054000W', ''),
('BASMA', '331351N0083054W', 'VFR Flights only - El JADIDA'),
('BENOV', '320539N0082717W', ''),
('BENTU', '343742N0111437W', ''),
('BERUM', '355000N0031409W', 'GMME/LECM'),
('BEXAL', '355800N0112654W', ''),
('BGR', '320928N0075251W', 'VOR/DME BENGUERIR'),
('BIDLA', '305344N0084922W', ''),
('BIRVO', '331711N0081130W', ''),
('BISMI', '333850N0065337W', ''),
('BML', '322500N0061752W', 'DVOR/DME BENI MELLAL'),
('BNS', '333831N0071229W', ''),
('BODNI', '332054N0075015W', ''),
('BOKPA', '342332N0043515W', ''),
('BRC', '331643N0073326W', ''),
('BRF', '323051N0020150W', 'VOR/DME BOUARFA'),
('BULIS', '274000N0090830W', ''),
('BULOK', '301051N0095018W', ''),
('CABEL', '250000N0145628W', ''),
('CAE', '333657N0070649W', ''),
('CBA', '333117N0074038W', 'DME'),
('CNL', '341714N0063714W', 'NDB KENITRA'),
('CNZ', '313602N0075752W', 'LOCATOR MARRAKECH'),
('CSD', '325601N0080354W', 'DAOURAT LOCATOR'),
('DEMUM', '335646N0051523W', ''),
('DENOB', '310306N0093522W', ''),
('DESUM', '302323N0131906W', ''),
('DETAD', '340257N0043551W', ''),
('DEVLA', '291453N0124306W', 'GMMM/GCCC'),
('DEVNO', '330237N0074341W', ''),
('DEXAD', '265542N0131218W', ''),
('DIDAN', '293710N0094120W', ''),
('DIDOV', '324430N0060133W', ''),
('DIGEX', '350749N0022238W', ''),
('DIMSA', '315816N0122356W', ''),
('DIRAD', '335812N0063058W', ''),
('DISMA', '240855N0153628W', ''),
('DIVUX', '290000N0084759W', ''),
('DKH', '234441N0155511W', 'DVOR/DME DAKHLA'),
('DOGAN', '301354N0101434W', ''),
('DOITV', '342145N0032829W', ''),
('DOMOG', '330056N0093446W', ''),
('DONAS', '334151N0063430W', ''),
('DOTIV', '342145N0032829W', ''),
('ECHED', '274000N0103100W', 'GMMM/GCCC'),
('EKTAL', '304209N0091112W', ''),
('EMKOK', '340714N0042104W', ''),
('ENNAV', '340749N0063014W', ''),
('ERA', '315527N0042138W', 'VOR/DME ERRACHIDIA'),
('ERLAM', '325509N0062324W', ''),
('ERMED', '330055N0100811W', ''),
('ESALA', '340224N0071023W', ''),
('ESAMI', '355000N0024111W', 'GMMM/LECM'),
('ESS', '312404N0094113W', 'VOR/DME ESSAOUIRA'),
('ETAVO', '265220N0131915W', ''),
('EVDOL', '333352N0072514W', ''),
('EVOXO', '341344N0022535W', ''),
('FACAS', '324050N0074841W', ''),
('FAHIM', '341504N0065038W', ''),
('FES', '335539N0050049W', 'VOR/DME FES'),
('FEZ', '335337N0045327W', 'LOCATOR FES'),
('FJA', '301557N0055100W', 'NDB ZAGORA'),
('FOBAC', '324309N0080600W', ''),
('GALTO', '355000N0050837W', ''),
('GIPUD', '334503N0043738W', ''),
('GIRAL', '264426N0133247W', ''),
('GITEM', '241422N0155319W', ''),
('GLM', '290038N0100409W', 'VOR/DME GUELMIM'),
('GODPO', '331058N0070436W', ''),
('GOSNO', '311905N0083432W', ''),
('GOSPI', '300851N0094918W', ''),
('GOVAS', '331151N0065854W', ''),
('HK', '333651N0073954W', 'NDB EL HANK'),
('IBALU', '342640N0084721W', ''),
('IBDIR', '343120N0061854W', 'VFR Flights only - SIDI ALLAL TAZI'),
('IBEVO', '333846N0042400W', ''),
('IBLIV', '331026N0012422W', ''),
('IBLIV)', '331026N0112422W', ''),
('IDMEB', '352830N0035311W', ''),
('IFN', '333000N0050938W', 'NDB IFRANE'),
('IPLOS', '335854N0054417W', ''),
('IVDAK', '333424N0045345W', ''),
('IXIRI', '352951N0024923W', ''),
('IXOBA', '344134N0020614W', ''),
('IXODA', '345732N0053254W', ''),
('KEGAG', '302628N0085518W', ''),
('KEMEX', '310052N0094312W', ''),
('KONBA', '311803N0151806W', ''),
('KOPAB', '313957N0094807W', ''),
('KOPIR', '303851N0095324W', 'VFR Flights only - CAP GHIR'),
('KORAL', '294353N0123442W', 'GMMM/GCCC'),
('KORIS', '355000N0061421W', 'LECM/GMMM'),
('KORNO', '355000N0072500W', ''),
('KOSAD', '332951N0071954W', 'VFR Flights only - BARRAGE OULED MALEH'),
('KOTAG', '330909N0071619W', ''),
('KSR', '315531N0042144W', 'LOCATOR AL HOCEIMA'),
('KUBIL', '341540N0125442W', ''),
('KUDAX', '314830N0074018W', ''),
('KUVEL', '290000N0091539W', ''),
('LABOK', '302451N0090054W', 'VFR Flights only - KANAFIT'),
('LACAJ', '330809N0065059W', ''),
('LAKAM', '341114N0074418W', ''),
('LAMAD', '354709N0052914W', ''),
('LANBA', '315009N0082337W', ''),
('LAPNO', '341008N0082712W', ''),
('LARAP', '310655N0042754W', ''),
('LARMO', '233450N0160757W', ''),
('LASAB', '231650N0160619W', ''),
('LAY', '270834N0131305W', 'VOR/DME LAAYOUNE'),
('LEGTI', '332151N0044936W', ''),
('LEMDI', '330411N0071454W', ''),
('LEPRU', '320000N0144804W', ''),
('LINTO', '355000N0055716W', 'LECM/GMMM'),
('LINVA', '304944N0072215W', ''),
('LISRA', '311400N0082904W', ''),
('LOBMI', '323927N0073012W', ''),
('MABAP', '320727N0081150W', ''),
('MABOG', '323818N0073011W', ''),
('MADOV', '352453N0054508W', ''),
('MAGAV', '313131N0084640W', ''),
('MAK', '313646N0080611W', 'VOR/DME MARRAKECH'),
('MAPIT', '334033N0051042W', ''),
('MARJA', '344432N0074637W', ''),
('MAXOR', '311010N0071833W', ''),
('MBA', '264431N0114128W', 'VOR/DME SMARA'),
('MIA', '351828N0025719W', ''),
('MILTA', '311830N0140456W', ''),
('MIMRO', '310059N0090309W', ''),
('MITLA', '311830N0140456W', ''),
('MKS', '335251N0053101W', 'VOR MEKNES'),
('MOGBA', '303347N0094533W', ''),
('MOGBI', '323710N0072158W', ''),
('MOGVA', '312047N0070052W', ''),
('MOKDA', '333504N0075348W', ''),
('MOKIB', '342529N0065225W', ''),
('MOKIR', '312025N0073646W', ''),
('MOKRI', '330939N0091027W', ''),
('MOROX', '290000N0095721W', ''),
('NAMIR', '310036N0090204W', ''),
('NAPOV', '312400N0075722W', ''),
('NAREG', '330351N0070354W', ''),
('NARMI', '353811N0052951W', ''),
('NASRO', '335815N0074306W', ''),
('NEKTI', '322808N0073538W', 'VFR Flights only - BARRAGE AL MASSIRA'),
('NEMVA', '344019N0022008W', ''),
('NEVEK', '331946N0055013W', ''),
('NEVTU', '325843N0131441W', ''),
('NIDEB', '325748N0115932W', ''),
('NIKZO', '324338N0080941W', ''),
('NIPRI', '330000N0140724W', ''),
('NIRAL', '331141N0082200W', ''),
('NISBA', '334046N0090112W', ''),
('NISUR', '311044N0100500W', ''),
('NOLRO', '354653N0060210W', ''),
('NONVI', '332441N0052102W', ''),
('NSR', '331624N0073319W', 'NDB'),
('NUA', '332548N0073633W', 'NDB'),
('OBOGA', '315016N0074851W', ''),
('ODALO', '313847N0082929W', ''),
('ODAXA', '335938N0081432W', ''),
('ODROS', '354029N0050045W', ''),
('OGDOR', '340000N0132538W', ''),
('OJD', '344624N0015701W', 'VOR/DME OUJDA'),
('OLMAG', '330848N0032012W', ''),
('OLOMA', '303827N0090418W', ''),
('ORSUP', '345055N0015026W', 'DAAA/GMMM'),
('ORZ', '305538N0065257W', 'LOCATOR OUARZAZATE'),
('OSDAM', '352045N0064204W', ''),
('OSDIV', '330858N0135010W', ''),
('OSLAD', '355800N0081851W', 'LPPC/GMMM'),
('OZT', '305624N0065416W', 'VOR/DME OUARZAZATE'),
('PEKOP', '355000N0032627W', ''),
('PELAX', '325113N0074126W', ''),
('PIXEB', '321630N0030000W', ''),
('PIXOV', '325301N0072625W', ''),
('POBUB', '334914N0054512W', ''),
('PODES', '355000N0040252W', ''),
('POGIK', '313511N0095303W', ''),
('RABCA', '354415N0060506W', ''),
('RADAF', '324124N0061355W', ''),
('RALEK', '330013N0081046W', ''),
('RAMIM', '314011N0074807W', ''),
('RANUL', '335537N0041845W', ''),
('RATNI', '293423N0091850W', ''),
('RATVA', '312002N0064441W', ''),
('RAVMA', '321129N0064848W', ''),
('RAVOL', '333108N0082829W', ''),
('RBT', '340300N0064447W', 'VOR/DME RABAT'),
('REVMI', '335026N0072203W', ''),
('RILAT', '300451N0093954W', 'VFR Flights only - R\'BAT'),
('RINPA', '313512N0074842W', ''),
('RIPOV', '334202N0051235W', ''),
('ROLGO', '265834N0132301W', ''),
('ROLRO', '314009N0105801W', ''),
('ROMOR', '343606N0023600W', ''),
('ROMSO', '352643N0062933W', ''),
('RUBAB', '320007N0062814W', ''),
('RUNAX', '355000N0063756W', 'GMME/LECM'),
('RUSIK', '285422N0124859W', 'GMMM/GCCC'),
('SADIC', '334402N0062000W', ''),
('SAK', '333117N0074038W', 'NDB'),
('SAKOF', '332225N0065425W', ''),
('SALCA', '341913N0081634W', ''),
('SAMAR', '305359N0142456W', 'GMMC/GCCC'),
('SBI', '341035N0063951W', 'LOCATOR RABAT'),
('SIVSO', '312755N0082023W', ''),
('SLK', '330656N0073022W', 'VOR/DME SIDI KHEDIM'),
('SMA', '264431N0114116W', 'LOCATOR SMARA'),
('SMN', '341357N0060302W', ''),
('SOBGO', '345326N0030017W', ''),
('SOBMA', '352400N0055500W', ''),
('SODSA', '332730N0052506W', ''),
('SOLNA', '274000N0123543W', ''),
('SOMOM', '300421N0101157W', ''),
('SONSO', '300044N0120607W', ''),
('SOPAB', '300913N0093550W', ''),
('SOVAL', '341022N0041008W', ''),
('SP', '354700N0055524W', 'NDB CAP SPARTEL'),
('SUBAL', '353247N0121845W', ''),
('SULAM', '305457N0131454W', ''),
('SUNID', '343711N0100924W', ''),
('TABIM', '334442N0051559W', ''),
('TAGOG', '301619N0095143W', ''),
('TAKAG', '235649N0155755W', ''),
('TAKAV', '355800N0092219W', ''),
('TALOK', '304949N0064113W', ''),
('TAN', '354316N0054817W', 'LOCATOR TANGER'),
('TEKNA', '300221N0094418W', ''),
('TERTO', '300615N0124302W', 'GMMM/GCCC'),
('TERTO', '300615N0124302W', ''),
('TIDLO', '315941N0061347W', ''),
('TIDMO', '305431N0063227W', ''),
('TIGGI', '355800N0105608W', ''),
('TIKVO', '295420N0092040W', ''),
('TIXAL', '321532N0071556W', ''),
('TNA', '282552N0111017W', 'LOCATOR TAN-TAN'),
('TNG', '354344N0055327W', 'VOR/DME TANGER'),
('TNN', '282542N0111023W', 'VOR/DME TAN-TAN'),
('TNR', '354403N0055509W', 'DVOR/DME TANGER'),
('TOBZA', '323851N0054954W', ''),
('TODBA', '313643N0093735W', ''),
('TOGMA', '311830N0064037W', ''),
('TOGMATMA', '311830N0064037W', ''),
('TOLSI', '343602N0070054W', ''),
('TOPMA', '303451N0082254W', ''),
('TOVRA', '314514N0111639W', ''),
('TTN', '353542N0051929W', 'DVOR/DME TETOUAN'),
('TUSOR', '342950N0061954W', ''),
('UBITA', '313912N0094043W', ''),
('ULMAM', '340000N0015843W', ''),
('UROLU', '333240N0053235W', ''),
('UVMOL', '352543N0040420W', ''),
('VABANA', '325209N0073012W', ''),
('VABNA', '325209N0073016W', ''),
('VABOL', '312244N0082913W', ''),
('VABSI', '345411N0023600W', ''),
('VAGNO', '354424N0061800W', ''),
('VALBA', '320450N0072957W', ''),
('VANOP', '315000N0034500W', ''),
('VARAS', '340132N0062054W', ''),
('VASIR', '301051N0093224W', 'VFR Flights only - INCHADEN'),
('VASTO', '303034N0133422W', ''),
('VAXAM', '335329N0051556W', ''),
('VDO', '344857N0015738W', 'VOR/DME OUJDA'),
('VEDOD', '303021N0122224W', ''),
('VONCI', '324537N0082446W', ''),
('XAVOV', '343336N0024509W', ''),
('XELER', '330723N0105912W', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
