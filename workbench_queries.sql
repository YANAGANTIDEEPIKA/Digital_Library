drop database library;
drop table issuebook;

create database library;

use library;

CREATE TABLE IF NOT EXISTS admin (
  id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(50) NOT NULL,
  pass VARCHAR(255) NOT NULL
);

INSERT INTO admin (email, pass) VALUES
('123', '123');

CREATE TABLE book (
  id INT AUTO_INCREMENT PRIMARY KEY,
  bookpic VARCHAR(255) NOT NULL,
  bookname VARCHAR(255) NOT NULL,
  bookdetail VARCHAR(255) NOT NULL,
  bookauthor VARCHAR(255) NOT NULL,
  bookpub VARCHAR(255) NOT NULL,
  branch VARCHAR(255) NOT NULL,
  bookprice VARCHAR(25) NOT NULL,
  bookquantity INT NOT NULL,
  bookava INT NOT NULL,
  bookrent INT NOT NULL
);


INSERT INTO book (bookpic, bookname, bookdetail, bookauthor, bookpub, branch, bookprice, bookquantity, bookava, bookrent) VALUES
('arrow.jpg', 'Scott Gallagher', '1st edition', 'Unknown', 'Suscipit', 'IT', '756', 20, 16, 4),
('logo.png', 'Ferris Mclaughlin', 'Qui ex dolor fugiat', 'Est voluptates offi', 'Dolorem earum accusa', 'Electrical', '264', 157, 157, 0),
('arrow.png', 'Harry', 'Ea quas nulla ration', 'Ut dolorem culpa ex', 'Eum proident quidem', 'IT', '76', 3, 2, 1);

CREATE TABLE IF NOT EXISTS userdata (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) UNIQUE NOT NULL,
  pass VARCHAR(255) NOT NULL,
  type ENUM('student', 'teacher', 'admin') NOT NULL
);



INSERT INTO userdata (name, email, pass, type) VALUES
('salman', 'idno28gh2@gmail.com', '12jkn3', 'student'),
('Randall Burch', 'voq@mailinator.com', 'Ratione lbnulla dolore', 'teacher'),
('Daugherty', 'bipaikcr@mailinator.com', 'Voluptam jns explicabo', 'student'),
('salman', '123j4@gmail.com', '12bn3', 'student'),
('Gabriel ', 'bipacer@mailinator.com', 'Voluptas explicabo', 'teacher'),
('sal', '1t234@gmail.com', '12ik3', 'student');





DROP TABLE IF EXISTS `issuebook`;

CREATE TABLE `issuebook` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `userid` INT NOT NULL,
  `issuename` VARCHAR(50) NOT NULL,
  `issuebook` VARCHAR(50) NOT NULL,
  `issuetype` ENUM('student', 'teacher') NOT NULL,
  `issuedays` INT NOT NULL,
  `issuedate` DATE NOT NULL,
  `issuereturn` DATE NOT NULL,
  `fine` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
]

INSERT INTO `issuebook` (`id`, `userid`, `issuename`, `issuebook`, `issuetype`, `issuedays`, `issuedate`, `issuereturn`, `fine`) VALUES
(2, 1, 'salman', 'Rich daddy poor dady', 'student', 3, '2021-03-30', '2021-04-02', 1800.00),
(3, 2, 'Randall Burch', 'Scott Gallagher', 'teacher', 4, '2021-03-30', '2021-04-03', 0.00),
(6, 1, 'salman', 'Scott Gallagher', 'student', 7, '2021-03-30', '2021-04-06', 1800.00),
(9, 5, 'salmannew', 'Scott Gallagher', 'teacher', 21, '2021-03-30', '2021-04-20', 0.00),
(10, 1, 'salman', 'Scott Gallagher', 'student', 7, '2021-04-01', '2021-04-08', 0.00),
(11, 1, 'salman', 'harry', 'student', 7, '2021-04-01', '2021-04-08', 0.00);



CREATE TABLE `requestbook` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `userid` INT NOT NULL,
  `bookid` INT NOT NULL,
  `username` VARCHAR(50) NOT NULL,
  `usertype` ENUM('student', 'teacher') NOT NULL,
  `bookname` VARCHAR(50) NOT NULL,
  `issuedays` INT NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`userid`) REFERENCES `userdata`(`id`) ON DELETE CASCADE,
  FOREIGN KEY (`bookid`) REFERENCES `book`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

COMMIT;
