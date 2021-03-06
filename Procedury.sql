--Procedura z parametrami, obliczająca długość danego kursu w dniach, cenę za dzień oraz
--wyświetlająca komunikat o tym, czy oferta jest droga czy tania.
--CREATE PROCEDURE DluOfe
--WITH RECOMPILE
--AS
--SET NOCOUNT ON
--BEGIN
--DECLARE @sumacen money
--SELECT @sumacen = sum(cena) 
--FROM oferta;
--DECLARE @sumadl int
--SELECT @sumadl = sum(datediff(dd, data_rozp, data_zak))
--from oferta;
--SELECT nazwa, cena, DATEDIFF(dd, data_rozp, data_zak) as iloscdni,
--cena/DATEDIFF(dd, data_rozp, data_zak) as srednia,
--CASE
--WHEN cena/DATEDIFF(dd, data_rozp, data_zak) < @sumacen/@sumadl THEN 'Tania oferta'
--WHEN cena/DATEDIFF(dd, data_rozp, data_zak) = @sumacen/@sumadl THEN 'Oferta w œredniej cenie'
--ELSE 'Droga oferta'
--END AS Ocenaceny
--from oferta
--end
--exec DluOfe;

--Procedura z parametrem, wyświetlająca listę dziedzin, które spełniają określone 
--kryterium znakowe w nazwie i mają numer identyfikacyjny niepodzielny przez dwa.
--CREATE PROCEDURE Listadziedzin
--@wzoropisu varchar(25) = '%'
--AS
--BEGIN
--SELECT id_dziedziny, opis
--from dziedzina
--where opis like @wzoropisu and id_dziedziny%2=1
--end
EXEC Listadziedzin 'Z%'