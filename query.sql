/**
Operazione 1: Inserire una nuova prenotazione
*/

INSERT INTO Prenotazione (Codice_Prenotazione, Data_Prenotazione, ID_Passeggero, ID_Volo, ID_Posto)
VALUES (..., ..., [1,30], [1,30], [1,50]);

/**
Operazione 2: Visualizzare i voli prenotati da un passeggero
*/

SELECT V.ID_Volo, V.Numero_Volo, V.Data_Partenza, V.Ora_Partenza, V.Aeroporto_Partenza, V.Aeroporto_Arrivo
FROM Volo V
JOIN Prenotazione P ON V.ID_Volo = P.ID_Volo
WHERE P.ID_Passeggero = <?>;

<?> = Inserisci IDPasseggero [1,30]

/**
Operazione 3: Vedere il numero di aerei per ogni compagnia aerea
*/

SELECT CompagniaAerea.ID_Compagnia, CompagniaAerea.Nome_Compagnia, COUNT(Aereo.ID_Aereo) AS Numero_Aerei
FROM CompagniaAerea
JOIN Aereo ON CompagniaAerea.ID_Compagnia = Aereo.Compagnia
GROUP BY CompagniaAerea.ID_Compagnia, CompagniaAerea.Nome_Compagnia;

/**
Operazione 4: Trovare il volo che prevede più servizi a bordo
*/

SELECT ID_Volo, COUNT(ID_ServizioVolo) AS Numero_Servizi
FROM Servizio
GROUP BY ID_Volo
HAVING COUNT(ID_ServizioVolo) = (SELECT MAX(CountServizi)
                                 FROM (SELECT COUNT(ID_ServizioVolo) AS CountServizi
                                       FROM Servizio
                                       GROUP BY ID_Volo) AS CountTable);

/**
Operazione 5: Ricerca di tutti i voli sotto la guida di un pilota specifico
*/

SELECT V.ID_Volo, V.Numero_Volo, V.Data_Partenza, V.Ora_Partenza, V.Aeroporto_Partenza, V.Aeroporto_Arrivo
FROM Volo V
JOIN AssegnazioneEquipaggio AE ON V.ID_Volo = AE.ID_Volo
JOIN Equipaggio E ON AE.ID_Equipaggio = E.ID_Equipaggio
WHERE E.ID_Equipaggio = <?>;

<?> = Inserisci IDEquipaggio [1,12]

/**
Operazione 6: Contare il numero di aerei per ogni produttore
*/

SELECT Numero_Serie as Produttore, COUNT(ID_Aereo) AS Numero_Aerei
FROM Aereo
GROUP BY Produttore;

/**
Operazione 7: Visualizzare i passeggeri che hanno prenotato un posto “Business”
*/

SELECT P.ID_Passeggero, P.Nome, P.Cognome
FROM Prenotazione PR
JOIN Posto PO ON PR.ID_Posto = PO.ID_Posto
JOIN Passeggero P ON PR.ID_Passeggero = P.ID_Passeggero
WHERE PO.Classe = 'Business';

/**
Operazione 8: Trovare la città con il maggior numero di aeroporti
*/

SELECT Città, COUNT(ID_Aeroporto) AS Numero_Aeroporti
FROM Aeroporto
GROUP BY Città
ORDER BY Numero_Aeroporti DESC
LIMIT 1;

/**
Operazione 9: Visualizzare i voli in partenza da un determinato aeroporto
*/

SELECT V.ID_Volo, V.Numero_Volo, V.Data_Partenza, V.Ora_Partenza, V.Aeroporto_Partenza, V.Aeroporto_Arrivo
FROM Volo V
JOIN Aeroporto AP ON V.Aeroporto_Partenza = AP.ID_Aeroporto
WHERE AP.ID_Aeroporto = <?>;

<?> = Inserisci IDAeroporto [1,10]

/**
Operazione 10: Visualizzare i voli in arrivo da un determinato aeroporto
*/

SELECT V.ID_Volo, V.Numero_Volo, V.Data_Partenza, V.Ora_Partenza, V.Aeroporto_Partenza, V.Aeroporto_Arrivo
FROM Volo V
JOIN Aeroporto AP ON V.Aeroporto_Arrivo = AP.ID_Aeroporto
WHERE AP.ID_Aeroporto = <?>;

<?> = Inserisci IDAeroporto [1,10]