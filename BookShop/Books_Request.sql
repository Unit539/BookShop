--1. �������� ��� Themes
--Show all Themes
Select * From Themes;

--2. �������� ��� �����, ���������� ������� � ������� ������ 500, �� ������ 650
--Show all books with more than 500 pages but less than 650
Select Name, Pages
From Books
Where Pages > 500 And Pages < 650;


--3. �������� ��� �����, � ������� ������ ����� �������� ���� ���, ���� �ǻ, ��� ���� ������� �� � ���������� �������.
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