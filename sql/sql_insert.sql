CREATE TABLE persons (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(200));
    
CREATE TABLE items (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(200),
    price VARCHAR(10));


CREATE TABLE transactions (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    person_id INT,
    item_id INT,
    total INT,
    date TIMESTAMP,
    FOREIGN KEY (person_id)
		REFERENCES persons(id),
	FOREIGN KEY (item_id)
		REFERENCES items(id));

INSERT INTO persons(name)
	VALUES
		('user1'),
        ('user2'),
        ('user3'),
        ('user4'),
        ('user5'),
        ('user6'),
        ('user7'),
        ('user8'),
        ('user9'),
        ('user10');

INSERT INTO items(name, price) 
	VALUES
		('item1', 1000),
        ('item2', 2000),
        ('item3', 3000),
        ('item4', 4000),
        ('item5', 5000),
        ('item6', 6000),
        ('item7', 7000),
        ('item8', 8000),
        ('item9', 9000),
        ('item10', 10000);
        

INSERT INTO transactions(person_id, item_id, total, date)
	VALUES
		(FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200101'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200102'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200103'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200104'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200105'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200106'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200107'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200108'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200109'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200110'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200201'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200202'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200203'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200204'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200205'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200206'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200207'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200209'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200210'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200301'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200302'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200303'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200304'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200305'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200306'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200307'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200309'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200310'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200401'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200402'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200403'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200404'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200405'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200406'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200407'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200409'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200410'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200501'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200502'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200503'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200504'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200505'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200506'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200507'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200509'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200510'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200601'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200602'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200603'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200604'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200605'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200606'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200607'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200609'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200610'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200701'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200702'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200703'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200704'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200705'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200706'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200707'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200709'),
        (FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*(10-1+1)+1),FLOOR(RAND()*10 + 1), '20200710');