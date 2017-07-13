-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 13, 2017 at 03:11 PM
-- Server version: 5.5.49
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rest_server`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(40) NOT NULL DEFAULT '',
  `all_access` tinyint(1) NOT NULL DEFAULT '0',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 0, '4808scookgo4w448gokssw884cos0k0w8ggs0k8k', 2, 1, 0, NULL, 1492180159);

-- --------------------------------------------------------

--
-- Table structure for table `limits`
--

CREATE TABLE `limits` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(268, 'auth/login', 'post', 'a:16:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:2:"41";s:8:"Auth-Key";s:7:"restapi";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:14:"Client-Service";s:15:"frontend-client";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:12:"Content-Type";s:24:"text/plain;charset=UTF-8";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"833151d2-bd21-df7f-d0bc-9a15ad93b1fe";s:9:"x-api-key";s:40:"4808scookgo4w448gokssw884cos0k0w8ggs0k8k";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:26:"en-GB,en-US;q=0.8,en;q=0.6";i:0;s:41:"{\n"username":"admin",\n"password":"user"\n}";i:1;s:41:"{\n"username":"admin",\n"password":"user"\n}";}', '4808scookgo4w448gokssw884cos0k0w8ggs0k8k', '::1', 1499940415, 1.04106, '1', 200),
(269, 'auth/login', 'post', 'a:16:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:2:"46";s:8:"Auth-Key";s:7:"restapi";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:14:"Client-Service";s:15:"frontend-client";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:12:"Content-Type";s:24:"text/plain;charset=UTF-8";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"78961b02-3baa-2f30-8ca4-92ef38f1a0f3";s:9:"x-api-key";s:40:"4808scookgo4w448gokssw884cos0k0w8ggs0k8k";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:26:"en-GB,en-US;q=0.8,en;q=0.6";i:0;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";i:1;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";}', '4808scookgo4w448gokssw884cos0k0w8ggs0k8k', '::1', 1499940829, 1.07, '1', 200),
(270, 'auth/login', 'post', 'a:16:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:2:"46";s:8:"Auth-Key";s:7:"restapi";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:14:"Client-Service";s:15:"frontend-client";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:12:"Content-Type";s:24:"text/plain;charset=UTF-8";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"e28c3fc3-60e0-4b09-0e9a-c1c02d0ac718";s:9:"x-api-key";s:40:"4808scookgo4w448gokssw884cos0k0w8ggs0k8k";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:26:"en-GB,en-US;q=0.8,en;q=0.6";i:0;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";i:1;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";}', '4808scookgo4w448gokssw884cos0k0w8ggs0k8k', '::1', 1499940945, 1.03001, '0', 401),
(271, 'auth/login', 'post', 'a:16:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:2:"46";s:8:"Auth-Key";s:7:"restapi";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:14:"Client-Service";s:15:"frontend-client";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:12:"Content-Type";s:24:"text/plain;charset=UTF-8";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"647c70ef-9f93-c823-53d4-d1c220be7311";s:9:"x-api-key";s:40:"4808scookgo4w448gokssw884cos0k0w8ggs0k8k";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:26:"en-GB,en-US;q=0.8,en;q=0.6";i:0;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";i:1;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";}', '4808scookgo4w448gokssw884cos0k0w8ggs0k8k', '::1', 1499941312, 1.041, '1', 200),
(272, 'auth/login', 'post', 'a:16:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:2:"46";s:8:"Auth-Key";s:7:"restapi";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:14:"Client-Service";s:15:"frontend-client";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:12:"Content-Type";s:24:"text/plain;charset=UTF-8";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"f7fcdabe-18ac-a75a-be60-6040eefa6e97";s:9:"x-api-key";s:40:"4808scookgo4w448gokssw884cos0k0w8ggs0k8k";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:26:"en-GB,en-US;q=0.8,en;q=0.6";i:0;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";i:1;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";}', '4808scookgo4w448gokssw884cos0k0w8ggs0k8k', '::1', 1499941422, 1.08501, '1', 200),
(273, 'auth/login', 'post', 'a:16:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:2:"46";s:8:"Auth-Key";s:7:"restapi";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:14:"Client-Service";s:15:"frontend-client";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:12:"Content-Type";s:24:"text/plain;charset=UTF-8";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"cd1cdb9e-8c15-6ed6-7795-d5de9a530cb9";s:9:"x-api-key";s:40:"4808scookgo4w448gokssw884cos0k0w8ggs0k8k";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:26:"en-GB,en-US;q=0.8,en;q=0.6";i:0;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";i:1;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";}', '4808scookgo4w448gokssw884cos0k0w8ggs0k8k', '::1', 1499941430, 1.09001, '1', 200),
(274, 'auth/login', 'post', 'a:16:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:2:"46";s:8:"Auth-Key";s:7:"restapi";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:14:"Client-Service";s:15:"frontend-client";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:12:"Content-Type";s:24:"text/plain;charset=UTF-8";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"a5dc7d7b-7635-6876-d8b8-ff81453e7328";s:9:"x-api-key";s:40:"4808scookgo4w448gokssw884cos0k0w8ggs0k8k";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:26:"en-GB,en-US;q=0.8,en;q=0.6";i:0;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";i:1;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";}', '4808scookgo4w448gokssw884cos0k0w8ggs0k8k', '::1', 1499941434, 1.07001, '1', 200),
(275, 'auth/login', 'post', 'a:16:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:2:"46";s:8:"Auth-Key";s:7:"restapi";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:14:"Client-Service";s:15:"frontend-client";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:12:"Content-Type";s:24:"text/plain;charset=UTF-8";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"6fdabe52-906a-ce91-01e4-c0286a78390a";s:9:"x-api-key";s:40:"4808scookgo4w448gokssw884cos0k0w8ggs0k8k";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:26:"en-GB,en-US;q=0.8,en;q=0.6";i:0;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";i:1;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";}', '4808scookgo4w448gokssw884cos0k0w8ggs0k8k', '::1', 1499941437, 1.03001, '1', 200),
(276, 'auth/login', 'post', 'a:16:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:2:"46";s:8:"Auth-Key";s:7:"restapi";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:14:"Client-Service";s:15:"frontend-client";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:12:"Content-Type";s:24:"text/plain;charset=UTF-8";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"87a6e31e-4726-1f01-ca40-45db4cdfa776";s:9:"x-api-key";s:40:"4808scookgo4w448gokssw884cos0k0w8ggs0k8k";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:26:"en-GB,en-US;q=0.8,en;q=0.6";i:0;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";i:1;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";}', '4808scookgo4w448gokssw884cos0k0w8ggs0k8k', '::1', 1499941561, 1.05001, '1', 200),
(277, 'auth/login', 'post', 'a:16:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:2:"46";s:8:"Auth-Key";s:7:"restapi";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:14:"Client-Service";s:15:"frontend-client";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:12:"Content-Type";s:24:"text/plain;charset=UTF-8";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"23ade8cd-2830-f186-1440-b9488413b40c";s:9:"x-api-key";s:40:"4808scookgo4w448gokssw884cos0k0w8ggs0k8k";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:26:"en-GB,en-US;q=0.8,en;q=0.6";i:0;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";i:1;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";}', '4808scookgo4w448gokssw884cos0k0w8ggs0k8k', '::1', 1499941565, 1.08, '1', 200),
(278, 'auth/login', 'post', 'a:16:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:2:"46";s:8:"Auth-Key";s:7:"restapi";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:14:"Client-Service";s:15:"frontend-client";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:12:"Content-Type";s:24:"text/plain;charset=UTF-8";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"94eece26-1c73-b0e3-737c-63a352261f87";s:9:"x-api-key";s:40:"4808scookgo4w448gokssw884cos0k0w8ggs0k8k";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:26:"en-GB,en-US;q=0.8,en;q=0.6";i:0;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";i:1;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";}', '4808scookgo4w448gokssw884cos0k0w8ggs0k8k', '::1', 1499941568, 1.05751, '1', 200),
(279, 'auth/login', 'post', 'a:16:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:2:"46";s:8:"Auth-Key";s:7:"restapi";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:14:"Client-Service";s:15:"frontend-client";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:12:"Content-Type";s:24:"text/plain;charset=UTF-8";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"4186e3b5-4d9a-ed7f-e993-c915c71886cf";s:9:"x-api-key";s:40:"4808scookgo4w448gokssw884cos0k0w8ggs0k8k";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:26:"en-GB,en-US;q=0.8,en;q=0.6";i:0;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";i:1;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";}', '4808scookgo4w448gokssw884cos0k0w8ggs0k8k', '::1', 1499942207, 1.05006, '1', 200),
(280, 'auth/login', 'post', 'a:16:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:2:"46";s:8:"Auth-Key";s:7:"restapi";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:14:"Client-Service";s:15:"frontend-client";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:12:"Content-Type";s:24:"text/plain;charset=UTF-8";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"41835c8b-102d-11b4-2598-0b748b166c9c";s:9:"x-api-key";s:40:"4808scookgo4w448gokssw884cos0k0w8ggs0k8k";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:26:"en-GB,en-US;q=0.8,en;q=0.6";i:0;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";i:1;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";}', '4808scookgo4w448gokssw884cos0k0w8ggs0k8k', '::1', 1499942279, 1.04906, '1', 200),
(281, 'auth/login', 'post', 'a:16:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:2:"46";s:8:"Auth-Key";s:7:"restapi";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:14:"Client-Service";s:15:"frontend-client";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:12:"Content-Type";s:24:"text/plain;charset=UTF-8";s:13:"Cache-Control";s:8:"no-cache";s:13:"Postman-Token";s:36:"e49a6488-b24f-650f-7acc-ba9c510a7d6a";s:9:"x-api-key";s:40:"4808scookgo4w448gokssw884cos0k0w8ggs0k8k";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:26:"en-GB,en-US;q=0.8,en;q=0.6";i:0;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";i:1;s:46:"{\n"username":"admin",\n"password":"Admin123$"\n}";}', '4808scookgo4w448gokssw884cos0k0w8ggs0k8k', '::1', 1499942306, 1.03606, '1', 200),
(282, '', 'get', 'a:8:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:26:"en-GB,en-US;q=0.8,en;q=0.6";}', '', '::1', 1499947269, 1.03206, '0', 403);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` varchar(50) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='settings';

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'app_name', 'MY CI REST APP'),
(2, 'app_version', '1.0'),
(3, 'copyright', 'Branie & Kemboi'),
(4, 'year', '2017'),
(5, 'company', 'Company XYZ'),
(6, 'terms_of_service', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur elementum eu metus eget facilisis. Duis egestas molestie molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut accumsan massa dui, eget suscipit tortor convallis ac. Pellentesque iaculis congue metus eget porta. Quisque ultricies justo urna, non posuere est dapibus ut. Vivamus id nibh ut dolor euismod pellentesque. Vestibulum gravida ante quis venenatis commodo. Sed ornare risus eu nisl pellentesque, eget cursus ipsum lobortis. Vestibulum elementum ut diam ut auctor. Aliquam metus neque, cursus sit amet accumsan sed, porta quis velit. Vivamus mollis ullamcorper efficitur. Nunc ornare cursus egestas. In gravida a magna vitae tempor.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `staff_type` varchar(50) DEFAULT NULL,
  `last_login` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `department`, `staff_type`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$1$Dtqyvz7/$wZSaZbfHgn0UbLlVi1HHp0', 'Admin', '', '', '2017-07-13 13:38:26', '2015-12-25 10:35:16', '2015-12-25 10:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `users_authentication`
--

CREATE TABLE `users_authentication` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_authentication`
--

INSERT INTO `users_authentication` (`id`, `users_id`, `token`, `expired_at`, `created_at`, `updated_at`) VALUES
(11, 1, '$1$oL0.R21.$Z8GqpR8JTfSBcZnDZnzkX0', '2017-06-26 02:42:25', NULL, '2017-06-25 14:42:25'),
(12, 1, '$1$/N/.aT5.$78aJ8RwAjAsWkD6ORXH3a.', '2017-06-27 03:01:21', NULL, NULL),
(13, 1, '$1$lf0.KP4.$VD1F7eHflyDe.TU3r92GP.', '2017-07-14 01:13:49', NULL, NULL),
(14, 1, '$1$2/..hI..$3F2qS/lzi9UkeHF2Gi2/k/', '2017-07-14 01:21:52', NULL, NULL),
(15, 1, '$1$nT2.km3.$AuHkTVL7gnvRvinsGs6O.1', '2017-07-14 01:23:42', NULL, NULL),
(16, 1, '$1$ie5.D/5.$u5TH1/VZRQOSbyMPCVb/j.', '2017-07-14 01:23:50', NULL, NULL),
(17, 1, '$1$Zn0.uC/.$2Hvipf6qmfEcIHOwFMPQW.', '2017-07-14 01:23:54', NULL, NULL),
(18, 1, '$1$65/.V71.$y89IhjYUoLGgB5fqH7XRC1', '2017-07-14 01:23:57', NULL, NULL),
(19, 1, '$1$5d/.o7..$IantnOw03XCRJsPxjRYGM.', '2017-07-14 01:26:01', NULL, NULL),
(20, 1, '$1$G.4.XD/.$oBBBcuIm5tKiLt80VKXFG.', '2017-07-14 01:26:05', NULL, NULL),
(21, 1, '$1$Nm2.Sh4.$Bo5TO1r2VuEV2Dwk2r3.O/', '2017-07-14 01:26:08', NULL, NULL),
(22, 1, '$1$Ak0.JZ/.$raDTuwUxad60Iwqbpxell.', '2017-07-14 01:36:48', NULL, NULL),
(23, 1, '$1$Pl/.sn5.$G1yj8CItWGOpIzOOX7i1N0', '2017-07-14 01:37:59', NULL, NULL),
(24, 1, '$1$qU..rA0.$YDYzolg8X/gt2glHIwSyu1', '2017-07-14 01:38:26', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `limits`
--
ALTER TABLE `limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `users_authentication`
--
ALTER TABLE `users_authentication`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `limits`
--
ALTER TABLE `limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_authentication`
--
ALTER TABLE `users_authentication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
