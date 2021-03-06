-- Auchan - prog6 Sinistres annuels par periode_facture
-- À la demande de Julien Vignal en date du 2019-05-21
-- Développé par Elie Busson le 2019-05-21

SET @deb = '2014-06-02', @fin = '2019-04-30';

SELECT 
SUM(CASE WHEN T1.ANNEE = 2019 THEN T1.SINIS_FACT ELSE NULL END) AS '2019',
SUM(CASE WHEN T1.ANNEE = 2018 THEN T1.SINIS_FACT ELSE NULL END) AS '2018',
SUM(CASE WHEN T1.ANNEE = 2017 THEN T1.SINIS_FACT ELSE NULL END) AS '2017',
SUM(CASE WHEN T1.ANNEE = 2016 THEN T1.SINIS_FACT ELSE NULL END) AS '2016',
SUM(CASE WHEN T1.ANNEE = 2015 THEN T1.SINIS_FACT ELSE NULL END) AS '2015',
SUM(CASE WHEN T1.ANNEE = 2014 THEN T1.SINIS_FACT ELSE NULL END) AS '2014'
FROM
(
-- calendrier
SELECT DISTINCT EXTRACT(YEAR FROM cal_date) AS ANNEE
FROM calendrier
WHERE cal_date BETWEEN @deb AND @fin
ORDER BY ANNEE DESC
) T0
LEFT JOIN
(
-- periode facture
SELECT EXTRACT(YEAR FROM periode_facture) AS ANNEE,
COUNT(DISTINCT CASE WHEN type_prestation <> 'EXPERTISE' THEN prestations_v1.ticket_id ELSE NULL END) AS SINIS_FACT, SUM(prix_ttc) AS FACTU_TTC_PERIODE_FACTURE
FROM prestations_v1
WHERE prestations_v1.id_programme = 6 AND prix_ttc<>0 AND periode_facture BETWEEN @deb AND @fin
GROUP BY ANNEE
) T1 ON T0.ANNEE = T1.ANNEE
-- GROUP BY T0.MOIS
