use [master];
go

if db_id('BookShop') is not null
begin
	drop database [BookShop];
end
go

create database [BookShop];
go

use [BookShop];
go


Create table [Countries]
(
   [Id] int not null identity(1, 1) primary key,
   [Name] nvarchar(50) not null check([Name] <> N'')
);
go

Create table [Themes]
( 
   [Id] int not null identity(1, 1) primary key,
   [Name] nvarchar(100) not null check([Name] <> N'')
);
go

Create table [Shops]
(
   [Id] int not null identity(1, 1) primary key,
   [Name] nvarchar(max) not null check([Name] <> N''),
   [CountryId] int not null foreign key references [Countries]([Id])
);
go

Create table [Authors]
(
    [Id] int not null identity(1, 1) primary key,
	[Name] nvarchar(max) not null check([Name] <> N''),
	[Surname] nvarchar(max) not null check([Surname] <> N''),
	[CountryId] int not null foreign key references [Countries]([Id])
);
go

Create table [Books]
(
   [Id] int not null identity(1, 1) primary key,
   [Name] nvarchar(max) not null check([Name] <> N''),
   [Pages] int not null check([Pages] >= 0),
   [Price] money not null check([Price] >= 0),
   [PublishDate] date not null,
   [AuthorId] int not null foreign key references [Authors]([Id]),
   [ThemeId] int not null foreign key references [Themes]([Id])
);
go

Create table [Sales]
(
    [Id] int not null identity(1, 1) primary key,
	[Price] money not null check([Price] >= 0),
	[Quantity] int not null check([Quantity] >= 0),
	[SaleDate] date not null default '2023.02.10',
	[BookId] int not null foreign key references [Books]([Id]),
	[ShopId] int not null foreign key references [Shops]([Id])
);
go



