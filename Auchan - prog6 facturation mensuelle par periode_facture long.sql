-- Auchan - prog6 facturation mensuelle par periode_facture et periode_facture_prest
-- À la demande de Julien Vignal en date du 2019-05-21
-- Développé par Elie Busson le 2019-05-21

SET @deb = '2014-06-02', @fin = '2019-04-30';

SELECT T0.ANNEE, T0.MOIS, T1.SINIS_FACT, T1.FACTU_TTC_PERIODE_FACTURE, (T1.FACTU_TTC_PERIODE_FACTURE / T1.SINIS_FACT) AS CMS ,T2.FACTU_TTC_DATE_PRESTA
FROM
(
-- calendrier
SELECT DISTINCT EXTRACT(YEAR_MONTH FROM cal_date) AS ANNEE_MOIS,
EXTRACT(YEAR FROM cal_date) AS ANNEE,
EXTRACT(MONTH FROM cal_date) AS MOIS
FROM calendrier
WHERE cal_date BETWEEN @deb AND @fin
ORDER BY ANNEE_MOIS DESC
) T0
LEFT JOIN
(
-- periode facture
SELECT EXTRACT(YEAR_MONTH FROM periode_facture) AS ANNEE_MOIS, COUNT(DISTINCT CASE WHEN type_prestation <> 'EXPERTISE' THEN prestations_v1.ticket_id ELSE NULL END) AS SINIS_FACT, SUM(prix_ttc) AS FACTU_TTC_PERIODE_FACTURE
FROM prestations_v1
WHERE prestations_v1.id_programme = 6
GROUP BY ANNEE_MOIS
ORDER BY ANNEE_MOIS DESC
) T1 ON T0.ANNEE_MOIS = T1.ANNEE_MOIS
LEFT JOIN
(
-- factu presta
SELECT EXTRACT(YEAR_MONTH FROM (prestations_v1.periode_facture_prest)) AS ANNEE_MOIS, SUM(prix_ttc) AS FACTU_TTC_DATE_PRESTA
FROM prestations_v1
WHERE prestations_v1.id_programme = 6
GROUP BY ANNEE_MOIS
ORDER BY ANNEE_MOIS DESC
) T2 ON T0.ANNEE_MOIS = T2.ANNEE_MOIS