-- dodawanie uzytkownika do phpmyadmin - login: user1 haslo: user1
GRANT ALL PRIVILEGES ON *.* TO 'user1'@'localhost' IDENTIFIED BY PASSWORD '*34D3B87A652E7F0D1D371C3DBF28E291705468C4' WITH GRANT OPTION;

GRANT ALL PRIVILEGES ON `pcserv`.* TO 'user1'@'localhost' WITH GRANT OPTION;