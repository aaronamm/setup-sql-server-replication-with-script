-- Configure a server to use a remote distributor.
-- Execute this script on a publisher.
USE master
GO

EXEC sp_adddistributor 
    @distributor = '$(distributor)', 
    -- A password of the distributor_admin login that a publisher need to know to use a distributor
    -- The same value for password must be specified when executing sp_adddistributor at both the publisher and distributor.
    -- Use sp_changedistributor_password to change the distributor password.
    @password = '$(distributorAdminPassword)'
GO
