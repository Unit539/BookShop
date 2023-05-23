--Show all Themes
Select * From Themes;


--Show all books with more than 500 pages but less than 650
Select Name, Pages
From Books
Where Pages > 500 And Pages < 650;


--Show all books in which the first letter of the title is either "A" or "Z", while displaying them in alphabetical order.
Select *
From Books
Where Name Like 'A%' Or Name Like 'Z%';


--Show all books whose titles consist of 5 letters.
Select * From Books Where Name Like '___________';


--Show all countries in alphabetical order.
Select * From Countries Order By Name;


--Show the number of unique book titles.
Select Count(Distinct Name) As 'Unique Name'
From Books;


--Show all themes for which there is at least one book.
Select Themes.Name
From Themes
Join Books
On Themes.Id = Books.ThemeId
Where Books.Id Is not Null;


--Show all the books with the highest price.
Select Name, Pages, Price 
From Books
Group By Name, Pages, Price
Having Price >= Max(Price)
Order By Price DESC;


--Show all books of the "Detective" genre, the number of books sold is more than 30 copies.
Select Themes.Name as 'Themes Name', Books.Name As 'Books Name', Sales.Quantity
From Themes
Join Books
On Themes.Id = Books.ThemeId
Join Sales
On Books.Id = Sales.BookId
Where Themes.Name = 'Foreign detectives' and Sales.Quantity > 30;


--Show the themes of the books and the sum of the pages of all the books for each of them.
Select Themes.Name, Books.Name, SUM(Books.Pages) as 'Sum of pages'
From Themes
Join Books
On Themes.Id = Books.ThemeId
Group By Themes.Name, Books.Name;


--Show the number of all books and the sum of the pages of these books for each of the authors.
Select Authors.Name, Authors.Surname, Count(Books.Name) As 'Count of books', Sum(Books.Pages) As 'Sum of pages'
From Authors
Join Books
On Authors.Id = Books.AuthorId
Group By Authors.Name, Authors.Surname;


--Create a view showing the books (title) and their corresponding authors (first and last name in one column).
Create View booksauthors_v
As Select Authors.Name + ' ' + Authors.Surname as [Authors Name], Books.Name
From Authors
Join Books
On Authors.Id = Books.AuthorId
Group By Authors.Name, Authors.Surname, Books.Name;

Select * From booksauthors_v;


--Create a stored procedure that shows the top 3 oldest books. The top 3 is determined by the date of publication.
if OBJECT_ID('Top3') is not null
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
