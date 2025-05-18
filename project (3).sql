-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2025 at 08:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `addpackage`
--

CREATE TABLE `addpackage` (
  `pcno` int(11) NOT NULL,
  `pcname` varchar(50) NOT NULL,
  `noofday` int(11) NOT NULL,
  `noofplace` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `vfare` int(11) NOT NULL,
  `gfare` int(11) NOT NULL,
  `breakfast` varchar(11) NOT NULL,
  `lunch` varchar(11) NOT NULL,
  `dinner` varchar(11) NOT NULL,
  `transport` varchar(50) NOT NULL,
  `tname` varchar(20) NOT NULL,
  `pimage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addpackage`
--

INSERT INTO `addpackage` (`pcno`, `pcname`, `noofday`, `noofplace`, `description`, `vfare`, `gfare`, `breakfast`, `lunch`, `dinner`, `transport`, `tname`, `pimage`) VALUES
(1, 'Goa Beach Escape', 3, 1, 'Relax at Goa’s beaches, nightlife, and Portuguese heritage.', 15000, 10000, 'on', 'on', 'on', '	Train, Bike, Boat', 'pacific_main', 'a1.jpg'),
(2, 'Phuket Adventure', 4, 1, 'Explore Thailand’s tropical paradise and islands.', 25000, 15000, 'on', 'on', 'on', 'Flight, Boat, Bike', 'pacific_main', 'thailand1.png'),
(3, 'Bali Cultural Tour', 5, 1, 'Bali Cultural Tour', 28000, 18000, 'on', 'on', 'on', 'Flight, Bike, Boat', 'pacific_main', 'bali1.jpg'),
(4, 'Singapore City Life', 3, 1, 'Visit Singapore’s futuristic skyline and cultural hubs.', 35000, 25000, 'on', 'on', 'on', '	Flight, Metro, Bus', 'pacific_main', 'Singapore1.jpg'),
(5, 'Tokyo Tech & Tradition', 5, 1, 'Discover Japan’s technology, history, and food.', 45000, 35000, 'on', 'on', 'on', 'Flight, Train, Metro', 'pacific_main', 'Tokyo1.jpg'),
(6, 'Swiss Alps Trek', 5, 1, 'Hike the breathtaking Swiss Alps and explore villages.', 45000, 35000, 'on', 'on', 'on', 'Flight, Train, Cable Car', 'pacific_main', 'Seychelles1.jpg'),
(7, 'Rome & Colosseum', 4, 1, 'Walk through the history of the Roman Empire.', 30000, 40000, 'on', 'on', 'on', 'Flight, Train, Bus', 'pacific_main', 'Colosseum1.jpg'),
(8, 'New York Skyline', 5, 1, 'Visit Times Square, Statue of Liberty, and Broadway.', 60000, 50000, 'on', 'on', 'on', '	Flight, Subway, Taxi', 'pacific_main', 'New York City1.jpg'),
(9, 'Aurora Borealis Quest', 5, 1, 'Witness the Northern Lights in the Arctic Circle.', 80000, 60000, 'on', 'on', 'on', 'Flight, Bus, Snowmobile', 'pacific_main', 'Aurora Borealis1.jpg'),
(10, 'Machu Picchu Trek', 5, 1, 'Explore the ancient Incan city of Machu Picchu.', 40000, 50000, 'on', 'on', 'on', '	Flight, Train, Hiking', 'pacific_main', 'Machu Picchu1.jpg'),
(11, 'Maldives Luxury Escape', 4, 1, 'Stay in overwater villas and enjoy the crystal-clear waters.', 40000, 50000, 'on', 'on', 'on', 'Flight, Speedboat, Bike', 'pacific_main', 'm1.jpg'),
(12, 'Santorini Sunset Trip', 4, 1, 'Witness stunning blue-domed churches and sunsets.', 25000, 35000, 'on', 'on', 'on', 'Flight, Ferry, Bike', 'pacific_main', 'santorini1.jpg'),
(13, 'Istanbul Heritage Tour', 3, 1, 'Explore the Grand Bazaar, Hagia Sophia, and Bosphorus cruise.', 20000, 30000, 'on', 'on', 'on', '	Flight, Tram, Ferry', 'pacific_main', 'Istanbul1.jpg'),
(14, 'Bangkok Street Life', 3, 1, 'Enjoy street food, temples, and shopping markets.', 27000, 17000, 'on', 'on', 'on', 'Flight, Tuk-Tuk, Boat', 'pacific_main', 'Bangkok1.jpg'),
(15, 'Barcelona Gaudi Tour', 4, 1, 'Visit the Sagrada Familia and explore Spain’s cultural hub.', 36000, 46000, 'on', 'on', 'on', 'Flight, Bus, Bike', 'pacific_main', 'Barcelona1.jpg'),
(16, 'Dubai Desert Safari', 3, 1, 'Experience luxury shopping, desert safari, and skyscrapers.', 20000, 30000, 'on', 'on', 'on', 'Flight, Jeep, Metro', 'pacific_main', 'Dubai1.jpg'),
(17, 'Victoria Falls Adventure', 5, 1, 'Witness the stunning Victoria Falls on the Zambia-Zimbabwe border.', 45000, 35000, 'on', 'on', 'on', 'Flight, Boat, Hiking', 'pacific_main', 'Victoria Falls1.jpg'),
(18, 'Grand Canyon Hike', 4, 1, 'Explore the vast landscapes of the Grand Canyon in Arizona.', 50000, 60000, 'on', 'on', 'on', 'Flight, Bus, Hiking', 'pacific_main', 'Grand Canyon1.jpg'),
(19, 'Mount Kilimanjaro Trek', 6, 1, 'Climb Africa’s highest peak in Tanzania.', 49000, 59000, 'on', 'on', 'on', 'Flight, Bus, Hiking', 'pacific_main', 'm1.jpg'),
(20, 'Mount Everest Base Camp', 10, 1, 'Embark on a trek to the world’s highest mountain.', 52000, 72000, 'on', 'on', 'on', 'Flight, Bus, Trekking', 'pacific_main', 'Mount Everest1.jpg'),
(21, 'Maldives Luxury Escape', 5, 2, 'Stay in overwater villas and enjoy the crystal-clear waters.', 59000, 49000, 'on', 'on', 'on', 'Flight, Speedboat, Bike', 'travel', 'm2.jpg'),
(22, 'Santorini Sunset Trip', 3, 1, 'Witness stunning blue-domed churches and sunsets.', 37000, 27500, 'on', 'on', 'on', 'Flight, Ferry, Bike', 'travel', 'santorini2.jpg'),
(23, 'Istanbul Heritage Tour', 4, 2, 'Explore the Grand Bazaar, Hagia Sophia, and Bosphorus cruise.', 25500, 35000, 'on', 'on', 'on', 'Flight, Tram, Ferry', 'travel', 'Istanbul2.jpg'),
(24, 'Bangkok Street Life', 2, 1, 'Enjoy street food, temples, and shopping markets.', 14800, 20800, 'on', 'on', 'on', 'Flight, Tuk-Tuk, Boat', 'travel', 'Bangkok2.jpg'),
(25, 'Barcelona Gaudi Tour', 5, 3, 'Visit the Sagrada Familia and explore Spain’s cultural hub.', 42000, 52000, 'on', 'on', 'on', 'Flight, Bus, Bike', 'travel', 'Barcelona2.jpg'),
(26, 'Dubai Desert Safari', 4, 2, 'Experience luxury shopping, desert safari, and skyscrapers.', 40000, 30000, 'on', 'on', 'on', 'Flight, Jeep, Metro', 'travel', 'Dubai2.jpg'),
(27, 'Victoria Falls Adventure', 6, 2, 'Witness the stunning Victoria Falls on the Zambia-Zimbabwe border.', 42000, 52000, 'on', 'on', 'on', 'Flight, Boat, Hiking', 'travel', 'Victoria Falls2.jpg'),
(28, 'Grand Canyon Hike', 5, 2, 'Explore the vast landscapes of the Grand Canyon in Arizona.', 54000, 64000, 'on', 'on', 'on', 'Flight, Bus, Hiking', 'travel', 'Grand Canyon2.jpg'),
(29, 'Mount Kilimanjaro Trek', 7, 2, 'Climb Africa’s highest peak in Tanzania.', 55000, 65000, 'on', 'on', 'on', 'Flight, Bus, Hiking', 'travel', 'm2.jpg'),
(30, 'Yellowstone National Park', 6, 2, 'Discover geysers, wildlife, and natural wonders in the USA.', 74000, 64000, 'on', 'on', 'on', 'Flight, Bus, Camping', 'travel', 'Yellowstone National Park2.jpg'),
(31, 'Blue Ridge Mountains', 5, 2, 'Explore the scenic mountain range in the USA.', 39000, 49000, 'on', 'on', 'on', 'Flight, Car Rental, Hiking', 'travel', 'Blue Ridge Mountains2.jpg'),
(32, 'Ha Long Bay Cruise', 5, 2, 'Sail through limestone karsts and emerald waters in Vietnam.', 35000, 25000, 'on', 'on', 'on', 'Flight, Boat, Bike', 'travel', 'Ha Long Bay2.jpg'),
(33, 'Plitvice Lakes Trip', 4, 1, 'Explore Croatia’s waterfalls and scenic lakes.', 29000, 39000, 'on', 'on', 'on', 'Flight, Bus, Boat', 'travel', 'Plitvice Lakes2.jpg'),
(34, 'Andes Mountain Trek', 7, 3, 'Hike the rugged Andes Mountains in South America.', 55500, 65500, 'on', 'on', 'on', 'Flight, Train, Hiking', 'travel', 'Acropolis of Athens1.jpg'),
(35, 'Mount Everest Base Camp', 12, 1, 'Embark on a trek to the world’s highest mountain.', 77000, 57000, 'on', 'on', 'on', 'Flight, Bus, Trekking', 'travel', 'Mount Everest2.jpg'),
(36, 'Kyoto Cultural Retreat', 5, 2, 'Explore Japan’s temples, gardens, and traditional culture.', 51000, 41000, 'on', 'on', 'on', 'Flight, Bullet Train, Bike', 'travel', 'Japan2.jpg'),
(37, 'Amazon Rainforest Expedition', 7, 2, 'Discover the wildlife and untouched beauty of the Amazon.', 64000, 54000, 'on', 'on', 'on', '	Flight, Boat, Hiking', 'travel', 'Aurora Borealis2.jpg'),
(38, 'Maldives Paradise Retreat', 6, 3, 'Explore luxury resorts, coral reefs, and white-sand beaches.', 63000, 51000, 'on', 'on', 'on', 'Flight, Speedboat, Bike', 'jadoo', 'm3.jpg'),
(39, 'Bora Bora Private Escape', 4, 2, 'Stay in an overwater bungalow and snorkel in clear waters.', 51200, 44200, 'on', 'on', 'on', 'Flight, Boat, Bike', 'jadoo', 'bb3.jpg'),
(40, 'Santorini Greek Romance', 5, 3, 'Experience stunning sunsets, white-washed buildings, and Greek cuisine.', 39500, 31500, 'on', 'on', 'on', 'Flight, Ferry, Bike', 'jadoo', 'santorini3.jpg'),
(41, 'Bali Tropical Escape', 7, 4, 'Explore rice terraces, temples, and exotic beaches.', 38000, 51000, 'on', 'on', 'on', '	Flight, Scooter, Boat', 'jadoo', 'bali3.jpg'),
(44, 'Bora Bora', 5, 3, 'Luxury beach destination with coral reefs and water villas.', 75000, 30000, 'on', 'on', 'on', 'Boat, Bike', 'jadoo', 'bb3.jpg'),
(45, 'Santorini', 4, 3, 'White-washed buildings, beautiful sunsets, and beaches.', 70000, 25000, 'on', 'on', 'on', 'Bike, Boat', 'jadoo', 'santorini3.jpg'),
(46, 'Bali', 6, 5, 'Famous for rice terraces, beaches, and temples.', 85000, 200000, 'on', 'on', 'on', 'Bike, Boat', 'jadoo', 'bali3.jpg'),
(47, 'Phuket', 3, 3, 'Popular island with nightlife, beaches, and adventure.', 50000, 30000, 'on', 'on', 'on', 'Bike, Boat', 'jadoo', 'Petra3.jpg'),
(48, 'Maui', 8, 9, 'Volcanoes, waterfalls, and tropical scenery.', 95000, 40000, 'on', 'on', 'on', 'Bike, Boat', 'jadoo', 'Machu Picchu3.jpg'),
(51, 'Paris', 5, 4, 'City of love, Eiffel Tower, and world-famous museums.', 85000, 40000, 'on', 'on', 'on', 'Bike, Train', 'jadoo', 'ParisFrance3.jpg'),
(52, 'Tokyo', 6, 5, 'High-tech city with vibrant nightlife and ancient shrines.', 88000, 38000, 'on', 'on', 'on', 'Bike, Train', 'jadoo', 'Tokyo3.jpg'),
(53, 'New York City', 7, 6, 'Skyscrapers, Broadway, and diverse culture.', 95000, 50000, 'on', 'on', 'on', '	Bike, Train', 'jadoo', 'New York City3.jpg'),
(54, 'Dubai', 4, 3, 'Luxury shopping, desert safaris, and skyscrapers.', 80000, 32000, 'on', 'on', 'on', 'Bike, Train', 'jadoo', 'Dubai3.jpg'),
(55, 'Rome', 6, 5, 'Colosseum, Vatican City, and ancient history.', 87000, 35000, 'on', 'on', 'on', '	Bike, Train', 'jadoo', 'Rome3.jpg'),
(60, 'Machu Picchu', 5, 3, '	Incan ruins with breathtaking mountain views.', 90000, 45500, 'on', 'on', 'on', 'Bike, Train', 'jadoo', 'Machu Picchu3.jpg'),
(61, 'Amritsar Tour', 3, 5, 'Golden Temple, Wagah Border, Jallianwala Bagh, Partition Museum, Durgiana Temple', 12000, 8000, 'on', 'on', 'on', 'Train/Bus', 'pacific_main', 'amritsar1.jpg'),
(62, 'Hampi Heritage', 3, 6, 'Virupaksha Temple, Lotus Mahal, Elephant Stables, Hampi Bazaar, Matanga Hill, Vittala Temple', 15000, 10000, 'on', 'on', 'on', 'Train/Bus', 'pacific_main', 'hampi1.jpg'),
(63, 'Jaipur Royal Tour', 4, 7, 'Amer Fort, City Palace, Hawa Mahal, Jantar Mantar, Nahargarh Fort, Albert Hall, Jal Mahal', 18000, 12000, 'on', 'on', 'on', 'Train/Bus', 'pacific_main', 'jaipur1.jpg'),
(64, 'Kerala Backwaters', 5, 8, 'Munnar, Alleppey, Thekkady, Kovalam, Kochi, Varkala, Wayanad, Kumarakom', 25000, 18000, 'on', 'on', 'on', 'Flight/Bus', 'pacific_main', 'kerala1.jpg'),
(65, 'Kolkata Cultural Tour', 3, 6, 'Victoria Memorial, Howrah Bridge, Dakshineswar Temple, Eden Gardens, Park Street, Science City', 14000, 9000, 'on', 'on', 'on', 'Train/Bus', 'pacific_main', 'kolkata1.jpg'),
(66, 'Kullu-Manali Adventure', 5, 7, '	Rohtang Pass, Solang Valley, Hidimba Temple, Manikaran, Kasol, Great Himalayan Park, Beas River', 20000, 15000, 'on', 'on', 'on', 'Train/Bus', 'pacific_main', 'kullu1.jpg'),
(67, 'Mahabalipuram Beach & Heritage', 2, 4, 'Shore Temple, Arjuna’s Penance, Five Rathas, Mahabalipuram Beach', 10000, 7000, 'on', 'on', 'on', 'Train/Bus', 'pacific_main', 'mahabalipuram1.jpg'),
(69, 'Tirupati Pilgrimage', 2, 3, 'Tirumala Temple, Kapila Theertham, Sri Venkateswara Zoo', 8000, 5000, 'on', 'on', 'on', 'Train/Bus', 'pacific_main', 'tirupati1.jpg'),
(70, 'Amritsar Spiritual Tour', 4, 6, '	Golden Temple, Wagah Border, Jallianwala Bagh, Durgiana Temple, Gobindgarh Fort, Ram Tirath Temple', 14000, 9500, 'on', 'on', 'on', 'Train/Bus', 'travel', 'amritsar2.jpg'),
(71, 'Hampi Historical Tour', 3, 5, 'Virupaksha Temple, Lotus Mahal, Hampi Bazaar, Matanga Hill, Vittala Temple', 17000, 11000, 'on', 'on', 'on', 'Train/Bus', 'travel', 'hampi2.jpg'),
(72, 'Jaipur Heritage Tour', 5, 8, 'Amer Fort, City Palace, Hawa Mahal, Jantar Mantar, Nahargarh Fort, Albert Hall, Jal Mahal, Birla Temple', 20000, 14000, 'on', 'on', 'on', 'Train/Bus', 'travel', 'jaipur2.jpg'),
(73, 'Kerala Nature & Backwaters', 6, 9, 'Munnar, Alleppey, Thekkady, Kovalam, Kochi, Varkala, Kumarakom, Wayanad, Athirapally Falls', 28000, 20000, 'on', 'on', 'on', 'Flight/Bus', 'travel', 'kerala2.jpg'),
(74, 'Kolkata Cultural Tour', 4, 7, 'Victoria Memorial, Howrah Bridge, Dakshineswar Temple, Eden Gardens, Science City, Indian Museum, Kalighat Temple', 16000, 10500, 'on', 'on', 'on', 'Train/Bus', 'travel', 'kolkata2.jpg'),
(75, 'Kullu-Manali Adventure', 6, 8, 'Rohtang Pass, Solang Valley, Hidimba Temple, Manikaran, Kasol, Great Himalayan Park, Beas River, Jogini Falls', 22000, 16000, 'on', 'on', 'on', 'Train/Bus', 'travel', 'kullu2.jpg'),
(76, 'Mahabalipuram & Pondicherry Tour', 3, 5, 'Shore Temple, Arjuna’s Penance, Five Rathas, Mahabalipuram Beach, Auroville (Pondicherry)', 12000, 8500, 'on', 'on', 'on', 'Train/Bus', 'travel', 'mahabalipuram2.jpg'),
(78, 'Tirupati Pilgrimage', 3, 4, 'Tirumala Temple, Kapila Theertham, Sri Venkateswara Zoo, Sri Padmavathi Temple', 10000, 6500, 'on', 'on', 'on', 'Train/Bus', 'travel', 'tirupati2.jpg'),
(79, 'Amritsar Heritage Tour', 3, 5, 'Golden Temple, Wagah Border, Jallianwala Bagh, Durgiana Temple, Maharaja Ranjit Singh Museum', 13500, 9000, 'on', 'on', 'on', 'Train/Bus', 'jadoo', 'amritsar3.jpg'),
(80, 'Hampi Temple Tour', 4, 6, 'Virupaksha Temple, Lotus Mahal, Hampi Bazaar, Matanga Hill, Vittala Temple, Queen’s Bath', 18000, 12500, 'on', 'on', 'on', 'Train/Bus', 'jadoo', 'hampi3.jpg'),
(81, 'Jaipur Royal Experience', 5, 7, '	Amer Fort, City Palace, Hawa Mahal, Jantar Mantar, Nahargarh Fort, Albert Hall Museum, Jal Mahal', 21000, 15000, 'on', 'on', 'on', 'Train/Bus', 'jadoo', 'jaipur3.jpg'),
(82, 'Kerala Scenic Tour', 7, 10, 'Munnar, Alleppey, Thekkady, Kovalam, Kochi, Wayanad, Varkala, Kumarakom, Periyar National Park, Athirapally Falls', 30000, 22000, 'on', 'on', 'on', 'Flight + Bus', 'jadoo', 'kerala3.jpg'),
(83, 'Kolkata City Tour', 4, 6, 'Victoria Memorial, Howrah Bridge, Dakshineswar Temple, Eden Gardens, Science City, Indian Museum', 17000, 11000, 'on', 'on', 'on', 'Train/Bus', 'jadoo', 'kolkata3.jpg'),
(84, 'Kullu-Manali Getaway', 6, 7, 'Rohtang Pass, Solang Valley, Hidimba Temple, Manikaran, Kasol, Beas River, Great Himalayan National Park', 23000, 17500, 'on', 'on', 'on', 'Train/Bus', 'jadoo', 'kullu3.jpg'),
(85, 'Mahabalipuram & Beach Tour', 3, 5, 'Shore Temple, Arjuna’s Penance, Five Rathas, Mahabalipuram Beach, Krishna’s Butterball', 11500, 8000, 'on', 'on', 'on', 'Train/Bus', 'jadoo', 'mahabalipuram3.jpg'),
(86, 'Tirupati Darshan Package', 3, 4, 'Tirumala Temple, Kapila Theertham, Sri Venkateswara Zoo, Sri Padmavathi Temple', 9500, 6000, 'on', 'on', 'on', 'Train/Bus', 'jadoo', 'tirupati3.jpg'),
(87, 'Rishikesh Adventure Package', 3, 3, 'Experience river rafting, camping, and sightseeing in Rishikesh, including Laxman Jhula.', 8999, 6999, 'on', 'on', 'on', 'Private cab, AC bus', 'pacific_main', 'rishikesh1.jpg'),
(88, 'Tirupati Pilgrimage Tour', 2, 2, 'A sacred journey to Tirumala Tirupati Temple, including darshan and local temple visits.', 7499, 5999, 'on', 'on', 'on', 'AC bus, private car option', 'pacific_main', 'tirupati1.jpg'),
(89, 'Vrindavan Spiritual Retreat', 3, 4, 'Visit the holy temples of Vrindavan and Mathura, including ISKCON Temple and Banke Bihari Temple.', 8499, 6499, 'on', 'on', 'on', 'AC Tempo Traveller, private car', 'pacific_main', 'vrindavan1.jpg'),
(90, 'Vrindavan Spiritual Retreat', 3, 4, 'Visit the holy temples of Vrindavan and Mathura, including ISKCON Temple and Banke Bihari Temple.', 8499, 6499, 'on', 'on', 'on', 'AC Tempo Traveller, private car', 'pacific_main', 'vrindavan1.jpg'),
(91, 'Rishikesh Adventure Package', 4, 5, 'Enjoy river rafting, trekking, and camping in Rishikesh, along with visits to Laxman Jhula and Neelkanth Temple.', 10499, 7999, 'on', 'on', 'on', '	Private cab, AC bus', 'jadoo', 'rishikesh2.jpg'),
(92, 'Tirupati Pilgrimage Tour', 3, 3, 'Visit the sacred Tirumala Tirupati Temple with VIP darshan, along with sightseeing at Kapila Theertham and Sri Kalahasti Temple.', 9499, 6499, 'on', 'on', 'on', 'AC bus, private car option', 'jadoo', 'tirupati2.jpg'),
(93, 'Vrindavan Spiritual Retreat', 2, 3, 'Explore the spiritual charm of Vrindavan, including ISKCON Temple, Prem Mandir, and Banke Bihari Temple.', 7999, 5999, 'on', 'on', 'on', 'AC Tempo Traveller, private car', 'jadoo', 'vrindavan2.jpg'),
(95, 'Rishikesh Adventure Package', 3, 4, '	Enjoy thrilling river rafting, bungee jumping, and sightseeing at Triveni Ghat and Laxman Jhula.', 9999, 6499, 'on', 'on', 'on', 'Private cab, AC bus', 'travel', 'rishikesh3.jpg'),
(96, 'Tirupati Pilgrimage Tour', 2, 2, 'Experience divine darshan at Tirumala Temple with visits to Chandragiri Fort and Sri Kalahasti Temple.', 8999, 6499, 'on', 'on', 'on', 'AC bus, private car option', 'travel', 'tirupati3.jpg'),
(97, 'Vrindavan Spiritual Retreat', 3, 4, 'Explore the divine temples of Vrindavan, including ISKCON Temple, Prem Mandir, and Govardhan Parikrama.', 8999, 6999, 'on', 'on', 'on', 'AC Tempo Traveller, private car', 'travel', 'vrindavan3.jpg'),
(98, 'Goa Adventure', 3, 5, 'Explore the beaches, forts, and nightlife of Goa', 29500, 19500, 'on', 'on', 'on', 'Bus & Walking Tour', 'travel', 'Goa, India3.png'),
(99, 'Rajasthan Heritage', 3, 5, 'Visit Jaipur, Udaipur, Jodhpur, and Jaisalmer forts', 31000, 21000, 'on', 'on', 'on', 'Bike, Train', 'travel', 'Machu Picchu3.jpg'),
(100, 'Himalayan Escape', 3, 5, 'Experience snow-covered mountains and scenic landscapes', 28000, 18500, 'on', 'on', 'on', 'Flight + Bus', 'travel', 'Machu Picchu2.jpg'),
(101, 'Kerala Backwaters', 3, 5, 'Houseboat stay, lush green tea plantations, and waterfalls', 30500, 20000, 'on', 'on', 'on', 'Train/Bus', 'travel', 'Seychelles2.jpg'),
(102, 'Goa Beach Tour', 3, 5, 'Enjoy the sun, sand, and nightlife in Goa', 30000, 20000, 'on', 'on', 'on', 'ship,bus', 'travel', 'a3.jpg'),
(103, 'Manali Adventure', 5, 6, '	Snow-capped peaks and thrilling activities', 35000, 25000, 'on', 'on', 'on', 'Train/Bus', 'travel', 'Banff National Park1.jpg'),
(104, 'Jaipur Heritage', 4, 4, '	Explore forts and palaces in the Pink City', 28000, 18500, 'on', 'on', 'on', 'Bike, Train', 'travel', 'jaipur1.jpg'),
(105, 'Kerala Backwaters', 3, 5, 'Houseboat stays and lush greenery', 32000, 22000, 'on', 'on', 'on', 'Train/Bus', 'travel', 'kerala1.jpg'),
(106, 'Kashmir Paradise', 6, 7, 'Scenic views, Dal Lake, and snow adventures', 40000, 30000, 'on', 'on', 'on', 'Flight + Bus', 'travel', 'Banff National Park3.jpg'),
(107, 'Rishikesh Retreat', 2, 3, 'Yoga, adventure sports, and Ganga Aarti', 25000, 15000, 'on', 'on', 'on', 'ship,bus', 'travel', 'rishikesh3.jpg'),
(108, '2 day full masti', 2, 4, 'all spoot cover', 40000, 30000, 'on', 'on', 'on', 'Train/Bus', 'pacific_main', 'agra1.jpg'),
(109, '2 day full masti', 2, 6, 'greeenery placess covbert', 38000, 32000, 'on', 'on', 'on', 'Train/Bus', 'pacific_main', 'agra2.jpg'),
(110, '2 day full masti', 2, 6, 'Historical place', 35000, 31000, 'on', 'on', 'on', 'Train/Bus', 'travel', 'amritsar1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `usermast`
--

CREATE TABLE `usermast` (
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `upass` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usermast`
--

INSERT INTO `usermast` (`uid`, `uname`, `upass`, `email`, `mobile`) VALUES
(6, 'nikhil', '111', 'nikhil@gmail.com', 929292929),
(45, '', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addpackage`
--
ALTER TABLE `addpackage`
  ADD PRIMARY KEY (`pcno`);

--
-- Indexes for table `usermast`
--
ALTER TABLE `usermast`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addpackage`
--
ALTER TABLE `addpackage`
  MODIFY `pcno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `usermast`
--
ALTER TABLE `usermast`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
