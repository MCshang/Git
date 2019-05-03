USE UNIQLOb8
GO

CREATE PROCEDURE  [dbo].[SearchStaffID]--查询员工工号
@UserID CHAR(4)
AS
BEGIN
SELECT StaffID FROM [User]
WHERE UserID = @UserID
END
GO

CREATE PROCEDURE [dbo].[SearchUserInfo]--查询用户信息
@UserID CHAR(4),
@PWD NVARCHAR(20)
AS
BEGIN
SELECT UserID FROM  [User]
WHERE  UserID=@UserID and PWD=@PWD
END
GO

CREATE PROCEDURE [dbo].[SearchRoleInfo]--查询用户角色信息
@UserID CHAR(4)
AS
BEGIN
SELECT a.RoleName,b.RoleID FROM [Role] a,[User] b
WHERE a.RoleID=b.RoleID and b.UserID=@UserID
END
GO

CREATE PROCEDURE [dbo].[ModifyPWD]--修改密码
@UserID CHAR(4),
@PWD NVARCHAR(20)
AS
BEGIN
 UPDATE [User] SET PWD = @PWD
 WHERE  UserID=@UserID
END
GO

CREATE PROCEDURE [dbo].[SearchGood]--查询商品
@GoodID NVARCHAR(50)
AS
BEGIN
SELECT *
FROM Good
WHERE GoodID = @GoodID;
END
GO

CREATE PROCEDURE [dbo].[AddGood]--添加商品
@GoodID NVARCHAR(50),
@GoodName NVARCHAR(255),
@GoodColor NVARCHAR(20),
@GoodSize NVARCHAR(3),
@GoodPrice NUMERIC(4,2),
@GoodNum INT,
@Operator CHAR(4)
AS
BEGIN
INSERT INTO Good
VALUES(@GoodID,@GoodName,@GoodColor,@GoodSize,@GoodPrice,@GoodNum,@Operator)
END
GO

CREATE PROCEDURE [dbo].[AddGoodNum]--添加商品数量
@GoodID NVARCHAR(50),
@GoodNum INT
AS
BEGIN
UPDATE Good SET GoodNum = GoodNum + @GoodNum WHERE GoodID = @GoodID
END
GO

CREATE PROCEDURE [dbo].[ShowGood]--显示所有商品
AS
BEGIN
SELECT * FROM Good
END		
GO

CREATE PROCEDURE [dbo].[AddBill]--添加账单
@BillID NVARCHAR(50),
@SaleTime DATETIME,
@GoodID NVARCHAR(50),
@GoodName NVARCHAR(255),
@GoodColor NVARCHAR(10),
@GoodSize NVARCHAR(3),
@BuyGoodNum INT,
@GoodPrice NUMERIC(4,2),
@GoodTotalPrice NUMERIC(6,2),
@BillSatuts NVARCHAR(4),
@Operator CHAR(4)
AS
BEGIN
INSERT INTO Bill
VALUES(@BillID,@SaleTime,@GoodID,@GoodName,@GoodColor,@GoodSize,@BuyGoodNum,@GoodPrice,@GoodTotalPrice,@BillSatuts,@Operator)
UPDATE Good SET GoodNum = GoodNum - @BuyGoodNum
WHERE GoodID = @GoodID
END
GO

CREATE PROCEDURE [dbo].[SearchBill]--查询账单
@BillID NVARCHAR(50)
AS
BEGIN
SELECT *
FROM Bill
WHERE BillID = @BillID
END
GO

CREATE PROCEDURE [dbo].[AftersaleGood]--添加售后记录
@ReID NVARCHAR(50),
@BillID NVARCHAR(50),
@SaleTime DATETIME,
@ReTime DATETIME,
@ReType NVARCHAR(4),
@ReGoodID NVARCHAR(50),
@ReGoodName NVARCHAR(255),
@ReGoodNum INT,
@ReMoney NUMERIC(6,2),
@Operator CHAR(4)
AS
BEGIN
INSERT INTO Aftersale
VALUES (@ReID,@BillID,@SaleTime,@ReTime,@ReType,@ReGoodID,@ReGoodName,@ReGoodNum,@ReMoney,@Operator)
UPDATE Good SET GoodNum = GoodNum + @ReGoodNum
WHERE GoodID = @ReGoodID
UPDATE Bill SET BillSatuts = @ReType
WHERE BillID = @BillID
END
GO

CREATE PROCEDURE [dbo].[ShowAftersales]--查看售后记录
AS
BEGIN
SELECT *
FROM Aftersale
END
GO

----CREATE PROCEDURE [dbo].[AddExgGood]--添加换货
----@ExgID NVARCHAR(50),
----@BillID NVARCHAR(50),
----@SaleTime DATETIME,
----@ExgTime DATETIME,
----@ExgGoodID NVARCHAR(50),
----@ExgGoodName NVARCHAR(255),
----@ExgGoodNum int,
----@Operator NVARCHAR(4)
----AS
----BEGIN
----INSERT INTO ExgGood
----VALUES (@ExgID,@BillID,@SaleTime,@ExgTime,@ExgGoodID,@ExgGoodName,@ExgGoodNum,@Operator)
----UPDATE Good SET GoodNum = GoodNum + @ExgGoodNum
----WHERE GoodID = @ExgGoodID
----END
----GO

--CREATE PROCEDURE [dbo].[AddReGood]--添加退货
--@ReID NVARCHAR(50),
--@BillID NVARCHAR(50),
--@SaleTime DATETIME,
--@ReTime DATETIME,
--@ReGoodID NVARCHAR(50),
--@ReGoodName NVARCHAR(255),
--@ReGoodNum int,
--@ReMoney NVARCHAR(10),
--@Operator NVARCHAR(4)
--AS
--BEGIN
--INSERT INTO ReGood
--VALUES (@ReID,@BillID,@SaleTime,@ReTime,@ReGoodID,@ReGoodName,@ReGoodNum,@ReMoney,@Operator)
--UPDATE Good SET GoodNum = GoodNum + @ReGoodNum
--WHERE GoodID = @ReGoodID
--END
--GO

--CREATE PROCEDURE [dbo].[SearchReGood]--查询退货
--@ReID NVARCHAR(50)
--AS
--BEGIN
--SELECT *
--FROM ReGood
--WHERE ReID=@ReID
--END
--GO

--CREATE PROCEDURE [dbo].[SearchExgGood]--查询换货
--@ExgID NVARCHAR(50)
--AS
--BEGIN
--SELECT *
--FROM ExgGood
--WHERE ExgID = @ExgID;
--END
--GO

--CREATE PROCEDURE [dbo].[ShowReGood]--查看退货
--AS
--BEGIN
--SELECT *
--FROM ReGood
--END
--GO

--CREATE PROCEDURE [dbo].[ShowExgGood]--查看换货
--AS
--BEGIN
--SELECT *
--FROM ExgGood
--END
--GO