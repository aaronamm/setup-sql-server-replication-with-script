
/****** Installing a Distributor on publisher *****/
use master
exec sp_adddistributor @distributor = N'DESKTOP-TEOD82V\DISTRIBUTOR', @password = N'12345'
GO

