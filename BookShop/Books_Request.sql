--1. Показать все Themes
--Show all Themes
Select * From Themes;

--2. Показать все книги, количество страниц в которых больше 500, но меньше 650
--Show all books with more than 500 pages but less than 650
Select Name, Pages
From Books
Where Pages > 500 And Pages < 650;


--3. Показать все книги, в которых первая буква названия либо «А», либо «З», при этом вывести их в алфавитном порядке.--Show all books in which the first letter of the title is either "A" or "Z", while displaying them in alphabetical order.Select *From BooksWhere Name Like 'A%' Or Name Like 'Z%';--4. Показать все книги, названия которых состоит из 5 букв.--Show all books whose titles consist of 5 letters.Select * From Books Where Name Like '___________';--5. Показать все страны в алфавитном порядке.--Show all countries in alphabetical order.Select * From Countries Order By Name;--6. Показать количество уникальных названий книг.--Show the number of unique book titles.Select Count(Distinct Name) As 'Unique Name'From Books;--7. Показать все тематики, для которых есть хотя бы одна книга.--Show all themes for which there is at least one book.Select Themes.NameFrom ThemesJoin BooksOn Themes.Id = Books.ThemeIdWhere Books.Id Is not Null;--8. Показать все книги с самой большой ценой.--Show all the books with the highest price.Select Name, Pages, Price From BooksGroup By Name, Pages, PriceHaving Price >= Max(Price)Order By Price DESC;--9. Показать все книги жанра «Детектив», количество проданных книг более 30 экземпляров.--Show all books of the "Detective" genre, the number of books sold is more than 30 copies.Select Themes.Name as 'Themes Name', Books.Name As 'Books Name', Sales.QuantityFrom ThemesJoin BooksOn Themes.Id = Books.ThemeIdJoin SalesOn Books.Id = Sales.BookIdWhere Themes.Name = 'Foreign detectives' and Sales.Quantity > 30;--10. Показать тематики книг и сумму страниц всех книг по каждой из них.--Show the themes of the books and the sum of the pages of all the books for each of them.Select Themes.Name, Books.Name, SUM(Books.Pages) as 'Sum of pages'From ThemesJoin BooksOn Themes.Id = Books.ThemeIdGroup By Themes.Name, Books.Name;--11. Показать количество всех книг и сумму страниц этих книг по каждому из авторов.--Show the number of all books and the sum of the pages of these books for each of the authors.Select Authors.Name, Authors.Surname, Count(Books.Name) As 'Count of books', Sum(Books.Pages) As 'Sum of pages'From AuthorsJoin BooksOn Authors.Id = Books.AuthorIdGroup By Authors.Name, Authors.Surname;--12. Создать представление, показывающее книги (название) и соответствующих им авторов (имя и фамилия в одной колонке).--Create a view showing the books (title) and their corresponding authors (first and last name in one column).Create View booksauthors_vAs Select Authors.Name + ' ' + Authors.Surname as [Authors Name], Books.NameFrom AuthorsJoin BooksOn Authors.Id = Books.AuthorIdGroup By Authors.Name, Authors.Surname, Books.Name;Select * From booksauthors_v;--13. Создать хранимую процедуру, которая показывает топ-3 самых старых книг. Топ-3 определяется по дате публикации. --Create a stored procedure that shows the top 3 oldest books. The top 3 is determined by the date of publication.if OBJECT_ID('Top3') is not null
  Drop Procedure Top3;
go

Create Procedure Top3
As
Begin 
    Select Name, PublishDate 
	From Books
	Where PublishDate < '2023.01.01';
End

Exec Top3;