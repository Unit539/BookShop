--Data for the table Themes
--Данные для таблицы Themes
SET IDENTITY_INSERT Themes ON;

INSERT INTO Themes (Id, Name) VALUES (1, 'Horrors');
INSERT INTO Themes (Id, Name) VALUES (2, 'Foreign detectives');
INSERT INTO Themes (Id, Name) VALUES (3, 'Foreign fantasy');
INSERT INTO Themes (Id, Name) VALUES (4, 'Humorous prose');
INSERT INTO Themes (Id, Name) VALUES (5, 'Economy');
INSERT INTO Themes (Id, Name) VALUES (6, 'Foreign classics');
INSERT INTO Themes (Id, Name) VALUES (7, 'Modern Russian literature');
INSERT INTO Themes (Id, Name) VALUES (8, 'Fairy tales');
INSERT INTO Themes (Id, Name) VALUES (9, 'Foreign fiction');
INSERT INTO Themes (Id, Name) VALUES (10, 'Westerns');

SET IDENTITY_INSERT Themes OFF;

---------------------------------------------------------

--Data for the table Countries
--Данные для таблицы Countries

SET IDENTITY_INSERT Countries ON;

INSERT INTO Countries (Id, Name) VALUES (1, 'USA');
INSERT INTO Countries (Id, Name) VALUES (2, 'Great Britain');
INSERT INTO Countries (Id, Name) VALUES (3, 'Israel');
INSERT INTO Countries (Id, Name) VALUES (4, 'France');
INSERT INTO Countries (Id, Name) VALUES (5, 'Germany');
INSERT INTO Countries (Id, Name) VALUES (6, 'Republic of Korea');
INSERT INTO Countries (Id, Name) VALUES (7, 'India');
INSERT INTO Countries (Id, Name) VALUES (8, 'Russia');
INSERT INTO Countries (Id, Name) VALUES (9, 'Sweden');

SET IDENTITY_INSERT Countries OFF;

-----------------------------------------------------------

--Data for the table Authors
--Данные для таблицы Authors

INSERT INTO Authors (Name, Surname, CountryId) VALUES ('Stephen', 'King', 1);
INSERT INTO Authors (Name, Surname, CountryId) VALUES ('Bram', 'Stoker', 2);
INSERT INTO Authors (Name, Surname, CountryId) VALUES ('Mike', 'Omer', 3);
INSERT INTO Authors (Name, Surname, CountryId) VALUES ('Michel', 'Bussy', 4);
INSERT INTO Authors (Name, Surname, CountryId) VALUES ('Naomi', 'Novik', 1);
INSERT INTO Authors (Name, Surname, CountryId) VALUES ('Marah', 'Woolf', 5);
INSERT INTO Authors (Name, Surname, CountryId) VALUES ('Donald', 'Antrim', 1);
INSERT INTO Authors (Name, Surname, CountryId) VALUES ('Richard', 'Osman', 2);
INSERT INTO Authors (Name, Surname, CountryId) VALUES ('Karl', 'Marx', 5);
INSERT INTO Authors (Name, Surname, CountryId) VALUES ('Ha-Joon', 'Chang', 6);
INSERT INTO Authors (Name, Surname, CountryId) VALUES ('Jack', 'London', 1);
INSERT INTO Authors (Name, Surname, CountryId) VALUES ('George', 'Orwell', 7);
INSERT INTO Authors (Name, Surname, CountryId) VALUES ('Alexey', 'Ivanov', 8);
INSERT INTO Authors (Name, Surname, CountryId) VALUES ('Shamil', 'Idiatullin', 8);
INSERT INTO Authors (Name, Surname, CountryId) VALUES ('Denis', 'Makurin', 8);
INSERT INTO Authors (Name, Surname, CountryId) VALUES ('Jon', 'Bauer', 9);
INSERT INTO Authors (Name, Surname, CountryId) VALUES ('Gene', 'Wolfe', 1);
INSERT INTO Authors (Name, Surname, CountryId) VALUES ('John', 'Marrs', 2);
INSERT INTO Authors (Name, Surname, CountryId) VALUES ('Craig', 'Johnson', 1);
INSERT INTO Authors (Name, Surname, CountryId) VALUES ('Cormac', 'McCarthy', 1);

------------------------------------------------------------------------------

--Data for the table Books
--Данные для таблицы Books

INSERT INTO Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) VALUES ('Shop of bad dreams', 544, 2000, '2023-01-10', 1, 1);
INSERT INTO Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) VALUES ('Dracula', 640, 2500, '2010-06-07', 2, 1);
INSERT INTO Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) VALUES ('The Network of Death', 320, 1500, '2023-02-20', 3, 2);
INSERT INTO Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) VALUES ('Footprints in the sand', 290, 1350, '2020-10-25', 4, 2);
INSERT INTO Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) VALUES ('The Golden Enclaves', 400, 1750, '2022-12-19', 5, 3);
INSERT INTO Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) VALUES ('The Crown of Ashes', 640, 2500, '2023-03-09', 6, 3);
INSERT INTO Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) VALUES ('One Hundred Brothers', 288, 1200, '2023-01-04', 7, 4);
INSERT INTO Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) VALUES ('Shot past the target', 416, 1840, '2023-04-23', 8, 4);
INSERT INTO Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) VALUES ('Economic and philosophical manuscripts of 1844', 244, 1100, '2023-01-13', 9, 5);
INSERT INTO Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) VALUES ('Edible economy. A simple explanation using examples of world cuisine', 400, 1750, '2023-01-03', 10, 5);
INSERT INTO Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) VALUES ('Martin Eden', 496, 1940, '2023-05-01', 11, 6);
INSERT INTO Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) VALUES ('1984', 352, 1500, '2023-01-10', 12, 6);
INSERT INTO Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) VALUES ('Armored steamers', 688, 2500, '2023-01-25', 13, 7);
INSERT INTO Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) VALUES ('Until February', 512, 2000, '2023-03-10', 14, 7);
INSERT INTO Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) VALUES ('Moon fairy tales. Archangel Miracles', 190, 1300, '2023-04-15', 15, 8);
INSERT INTO Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) VALUES ('Swedish Fairy tales', 168, 1000, '2020-07-16', 16, 8);
INSERT INTO Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) VALUES ('Rest', 384, 1630, '2023-05-17', 17, 9);
INSERT INTO Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) VALUES ('Code. Media', 352, 1500, '2023-02-18', 18, 9);
INSERT INTO Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) VALUES ('Cold dish', 512, 2000, '2023-03-19', 19, 10);
INSERT INTO Books (Name, Pages, Price, PublishDate, AuthorId, ThemeId) VALUES ('The Bloody Meridian, or Sunset crimson in the west', 284, 1200, '2013-11-20', 20, 10);

-----------------------------------------------------------------------

--Data for the table Shops
--Данные для таблицы Shops

INSERT INTO Shops (Name, CountryId) VALUES ('BookShop 1', 1);
INSERT INTO Shops (Name, CountryId) VALUES ('BookShop 2', 2);
INSERT INTO Shops (Name, CountryId) VALUES ('BookShop 3', 3);
INSERT INTO Shops (Name, CountryId) VALUES ('BookShop 4', 4);
INSERT INTO Shops (Name, CountryId) VALUES ('BookShop 5', 5);
INSERT INTO Shops (Name, CountryId) VALUES ('BookShop 6', 6);
INSERT INTO Shops (Name, CountryId) VALUES ('BookShop 7', 7);
INSERT INTO Shops (Name, CountryId) VALUES ('BookShop 8', 8);
INSERT INTO Shops (Name, CountryId) VALUES ('BookShop 9', 9);

-------------------------------------------------------------------------

--Data for the table Sales
--Данные для таблицы Sales

INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (2000, 130, '2023-05-23', 1, 1);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (2500, 180, '2023-05-23', 2, 1);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (1500, 150, '2023-05-23', 3, 1);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (1350, 100, '2023-05-23', 4, 2);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (1750, 200, '2023-05-23', 5, 2);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (2500, 125, '2023-05-23', 6, 3);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (1200, 210, '2023-05-23', 7, 3);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (1840, 130, '2023-05-23', 8, 4);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (1100, 250, '2023-05-23', 9, 4);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (1750, 115, '2023-05-23', 10, 5);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (1940, 100, '2023-05-23', 11, 5);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (1500, 173, '2023-05-23', 12, 6);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (2500, 237, '2023-05-23', 13, 6);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (2000, 120, '2023-05-23', 14, 7);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (1300, 200, '2023-05-23', 15, 7);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (1000, 320, '2023-05-23', 16, 8);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (1630, 189, '2023-05-23', 17, 8);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (1500, 150, '2023-05-23', 18, 9);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (2000, 90, '2023-05-23', 19, 9);
INSERT INTO Sales (Price, Quantity, SaleDate, BookId, ShopId) VALUES (1200, 30, '2023-05-23',20, 9);

-----------------------------------------------------------------