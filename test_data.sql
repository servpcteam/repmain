-- dodawanie danych do tabeli STATUS (ID_Status, Nazwa (VARCHAR))
INSERT INTO STATUS_Z(Nazwa)
VALUES 
	('Przyjety do naprawy'),
	('W trakcie naprawy'),
	('Towar oddany');

INSERT INTO UZYTKOWNIK(Email, Haslo, Rola)
VALUES
	('admin@admin.pl', '12345', 'admin'),
	('user@user.pl', '12345', 'user');

INSERT INTO RODZAJ(Nazwa)
VALUES 
	('Komputer PC'),
	('Notebook'),
	('Telefon GSM'),
	('Tablet'),
	('Konsola'),
	('Akcesorium PC'),
	('Drukarka'),
	('Monitor'),
	('Inne');

INSERT INTO PRACOWNIK(Imie, Nazwisko, Telefon)
VALUES
	('Jan', 'Nowak', '501234567'),
	('Adam', 'Kowalski', '502345678'),
	('Hanna', 'Maciąg', '503333333'),
	('Danuta', 'Grzywacz', '601234567'),
	('Karol', 'Karupski', '500123123');

INSERT INTO KLIENT(Imie, Nazwisko, Telefon, Email)
VALUES
	('Janusz', 'Tracz', '503503503', 'jtracz@tlen.pl'),
	('Janina', 'Walewska', '500501502', 'janina@janina.org'),
	('Adam', 'Nowak', '500050005', 'adamek@op.com'),
	('Karol', 'Nowak', '500005000', 'nowak@nowak.gov'),
	('Janusz', 'Januszewski', '600678678', 'costam@cos.tam'),
	('Wojciech', 'Marecki', '699600655', 'marecki@wojciech.pl'),
	('Tomasz', 'Tymaszewski', '500600700', 'tomasz@tomasz.to'),
	('Marta', 'Dorszewska', '698697696', 'martusia@kart.ko'),
	('Anna', 'Hanuszewska', '501502503', 'a.hanuszewska@korpo.pl'),
	('Paweł', 'Piotrowiczowski', '504405504', 'p.piotrowicowski@wp.pl'),
	('Michał', 'Gabryjelski', '600599601', 'mg.master@pogo.org'),
	('Karol', 'Pawłowicz', '512341212', 'karol_p@kp.pk'),
	('Karolina', 'Pawłowa', '515456433', 'karolinka@buziaczek.br'),
	('Sławomira', 'Iksamowicz', '555666755', 's.iksa@wp.pl');

-- RODZAJ_ID_Rodzaj, SerialNumber, Producent,
INSERT INTO SPRZET(RODZAJ_ID_Rodzaj, SerialNumber, Producent)
VALUES
	(1, 'ABCABC123', 'Asus'),
	(1, 'ABAB1231', 'Asus'),
	(2, '1290987', 'Acer'),
	(7, 'A1290911B', 'HP'),
	(8, '89812121A', 'Samsung'),
	(5, 'AXX0999', 'Sony'),
	(3, 'IMP503ADH', 'Huawei'),
	(4, '890PPP09', 'Lenovo'),
	(4, '6232FFF212', 'Modecom'),
	(9, '6472648GHG', 'Nikon'),
	(1, '878273HHH212', 'Komputronk'),
	(2, '137174981748917', 'Dell'),
	(2, '8781797827348RTE', 'Dell'),
	(2, '27498275892JKJAA', 'Apple'),
	(7, '42A82A748DFA', 'Brother'),
	(8, '12389719FASD', 'Asus'),
	(3, '90923ASPAS', 'Samsung'),
	(4, '87242984FFA', 'XiaoXin'),
	(1, '789274924', 'Inspiron');

-- SPRZET_ID_Sprzet, KLIENT_ID_Klient,
-- STATUS_Z_ID_Status, PRACOWNIK_ID_Pracownik_Przyjmujacy,
-- PRACOWNIK_ID_Pracownik_Wydajacy, Data_Przyjecia,
-- Data_Wydania, Opis VARCHAR,
INSERT INTO ZGLOSZENIE(SPRZET_ID_Sprzet, KLIENT_ID_Klient, STATUS_Z_ID_Status, 
	PRACOWNIK_ID_Pracownik_Przyjmujacy, PRACOWNIK_ID_Pracownik_Wydajacy,
	Data_Przyjecia, Data_Wydania, Opis)
VALUES
	(1, 1, 3, 1, 2, '2017-12-12', '2018-01-05', 'Wirusy'),
	(2, 2, 1, 3, 3, '2017-12-22', NULL, 'Nie wykrywa połączenia internetowego'),
	(1, 1, 1, 4, NULL, '2018-01-31', NULL, 'Wciąż są wirusy'),
	(3, 2, 3, 1, 4, '2018-01-31', '2018-02-03', 'Zalana prawa strona klawiatury'),
	(4, 3, 1, 4, NULL, '2018-02-01', NULL, 'Zacina sie papier'),
	(5, 4, 2, 2, NULL, '2018-02-01', NULL, 'Nie działa podświetlenie'),
	(6, 5, 2, 4, NULL, '2018-02-02', NULL, 'Nie czyta płyt'),
	(3, 3, 1, 2, NULL, '2018-02-02', NULL, 'Wciąż nie działa klawisz spacji'),
	(7, 3, 1, 2, NULL, '2018-02-02', NULL, 'Nie widzi karty SIM'),
	(8, 6, 3, 2, 4, '2018-02-02', '2018-02-04', 'Tablet nie włącza się');