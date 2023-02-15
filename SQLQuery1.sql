--Create the ODS database

--CREATE DATABASE ODS ;

--Create the DHW database

--CREATE DATABASE DHW ;

/*CREATE TABLE ODS.dbo.COVOITURAGE1 (
	id_local VARCHAR(MAX),
	nom_lieu VARCHAR(MAX),
	id_lieu VARCHAR(MAX),
	ad_lieu VARCHAR(MAX),
	X_long VARCHAR(MAX),
	Y_plat VARCHAR(MAX),
	com_lieu VARCHAR(MAX),
	comm VARCHAR(MAX),
	Nbr_pmr VARCHAR(MAX),
	Lumiere VARCHAR(MAX),
	Horraire VARCHAR(MAX),
	Nbr_place VARCHAR(MAX),
	Ouvert VARCHAR(MAX),
	class_Source VARCHAR(MAX),
	Proprio VARCHAR(MAX),
	class_Type VARCHAR(MAX),
	class_Date_Maj VARCHAR(MAX),
	duree VARCHAR(MAX),
	insee VARCHAR(MAX)
);*/

truncate table ODS.dbo.COVOITURAGE1;

bulk insert ODS.dbo.COVOITURAGE1
from 'C:\Users\Etienne\Desktop\base\BNLC.csv'
with (
	format = 'csv',
	firstrow = 2
)