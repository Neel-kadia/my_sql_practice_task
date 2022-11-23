CREATE TABLE book(
	book_id int NOT NULL AUTO_INCREMENT,
	book_name varchar(255) NOT NULL,
	author_name varchar(255) NOT NULL,
	book_price int NOT NULL,
	published_date date NOT NULL DEFAULT (CURRENT_DATE),
	published_city varchar(255) NOT NULL,
	published_country varchar(255),
	PRIMARY KEY (book_id)
);

INSERT INTO book (book_name, author_name, book_price, published_date, published_city, published_country)
		VALUES ('sarasvati gift','kavita kane','399','1998-12-03','Gujarat','India'),
			('40 years with abdul kalam','Dr.A sivathanu','499','1887-05-25','tamilnadu','india'),
            ('guru nanak dev','kripal singh ji','250','1986-06-23','punjab','india'),
            ('fight against covid 19','randeep guleria','489','2021-12-28','delhi','india'),
            ('48 law of power','robert greene','450','1778-05-04','berlin','germany'),
            ('think and grow rich','nepoleon hill','599','1885-09-08','london','U.k'),
            ('power of now','eckhart tolle','650','1868-08-03','madrid','spain');
            
INSERT INTO book VALUES ('8','War and peace','Tolstoy','350','1999-09-03','London','UK');

INSERT INTO book (book_name, author_name, book_price, published_city, published_country)
		VALUES ('sarasvati gift','kavita kane','399','Gujarat','null');
        
SELECT * FROM book;

SELECT * FROM book ORDER BY published_country ASC;

SELECT * FROM book ORDER BY published_country DESC;

SELECT * FROM book ORDER BY published_country DESC, published_city ASC;

SELECT * FROM bookcopy ORDER BY book_name ASC;

CREATE TABLE bookcopy(
	book_id int NOT NULL AUTO_INCREMENT,
	book_name varchar(255) NOT NULL,
	author_name varchar(255) NOT NULL,
	book_price int NOT NULL,
	published_date date NOT NULL DEFAULT (CURRENT_DATE),
	published_city varchar(255) NOT NULL,
	published_country varchar(255),
	PRIMARY KEY (book_id)
);

INSERT INTO bookcopy SELECT * FROM book;