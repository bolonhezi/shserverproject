if exists(select * 
from master..sysservers 
where isremote=1 and srvname='game') 
begin
exec sp_dropserver 'game','droplogins'
end
exec sp_addlinkedserver 'game','','SQLOLEDB','127.0.0.1'
exec sp_addlinkedsrvlogin 'game','false',null,'RTX2060','V704iQwHb37M'

if exists(select * 
from master..sysservers 
where isremote=1 and srvname='PS_NCASH') 
begin
exec sp_dropserver 'PS_NCASH','droplogins'
end
exec sp_addlinkedserver 'PS_NCASH','','SQLOLEDB','127.0.0.1'
exec sp_addlinkedsrvlogin 'PS_NCASH','false',null,'RTX2060','V704iQwHb37M'

if exists(select * 
from master..sysservers 
where isremote=1 and srvname='PS_USERDB') 
begin
exec sp_dropserver 'PS_USERDB','droplogins'
end
exec sp_addlinkedserver 'PS_USERDB','','SQLOLEDB','127.0.0.1'
exec sp_addlinkedsrvlogin 'PS_USERDB','false',null,'RTX2060','V704iQwHb37M'

if exists(select * 
from master..sysservers 
where isremote=1 and srvname='PS_USERDB01') 
begin
exec sp_dropserver 'PS_USERDB01','droplogins'
end
exec sp_addlinkedserver 'PS_USERDB01','','SQLOLEDB','127.0.0.1'
exec sp_addlinkedsrvlogin 'PS_USERDB01','false',null,'RTX2060','V704iQwHb37M'

if exists(select * 
from master..sysservers 
where isremote=1 and srvname='PS_DEFINEDB') 
begin
exec sp_dropserver 'PS_DEFINEDB','droplogins'
end
exec sp_addlinkedserver 'PS_DEFINEDB','','SQLOLEDB','127.0.0.1'
exec sp_addlinkedsrvlogin 'PS_DEFINEDB','false',null,'RTX2060','V704iQwHb37M'

if exists(select * 
from master..sysservers 
where isremote=1 and srvname='PS_GAMEDB01') 
begin
exec sp_dropserver 'PS_GAMEDB01','droplogins'
end
exec sp_addlinkedserver 'PS_GAMEDB01','','SQLOLEDB','127.0.0.1'
exec sp_addlinkedsrvlogin 'PS_GAMEDB01','false',null,'RTX2060','V704iQwHb37M'