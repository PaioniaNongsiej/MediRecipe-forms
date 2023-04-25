use ProjectDB;

create table UserRegLogin
(
	Userid int NOT NULL IDENTITY(1,1)  Primary key,
    UserName varchar(50) not null,
    EmailID varchar(50) not null,
    Password varchar(50) not null
);

select * from UserReglogin;
create procedure spregistration
(    
    @UserName varchar(50),    
    @EmailID varchar(20),  
    @Password varchar(20)    
)    
as    
insert into UserRegLogin values(@UserName,@EmailID, @Password)

create PROCEDURE splogin    
(    
   @emailid as varchar(50),    
   @password as varchar(50)    
)    
AS    
SELECT * FROM UserRegLogin WHERE EmailID=@emailid AND Password=@password

/* admin registration and login */

create table AdminReglogin
(
	AdminId int NOT NULL IDENTITY(1,1)  Primary key,
    EmailID varchar(50) not null,
    Password varchar(50) not null
);

select * from AdminReglogin;
create procedure Adregistration
(      
    @EmailID varchar(20),  
    @Password varchar(20)    
)    
as    
insert into AdminReglogin values(@EmailID, @Password)

create PROCEDURE Adlogin    
(    
   @emailid as varchar(50),    
   @password as varchar(50)    
)    
AS    
SELECT * FROM AdminRegLogin WHERE EmailID=@emailid AND Password=@password

drop procedure Adregistration