create procedure InsertBook
    @Genre varchar(25),
    @IsFiction bit,
    @Title varchar(40),
	@AuthorID int
as
begin
    insert into Books (Genre, IsFiction, Title, AuthorID)
    values (@Genre, @IsFiction, @Title, @AuthorID);
end;

--Example Entry
--EXEC InsertBook @Genre = 'History', @IsFiction = 0, @Title = 'Learning History', @AuthorID = 1;

