-- Auchan - prog6 PARC
-- À la demande de Julien Vignal en date du 2019-05-23
-- Développé par Elie Busson le 2019-05-23




SET @date_deb='2014-06-01', @date_fin='2022-06-30'; /*Génération Ventes Obeservée*/

SELECT
T0.ANNEE_MOIS, T0.ANNEE, T0.MOIS,
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme 
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND TYPE_PDT = 'GARINT2'
) AS PARC_GARINT2,
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme 
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND TYPE_PDT = 'GARINT3'
) AS PARC_GARINT3,
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme 
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND TYPE_PDT = 'GARINTGEM'
) AS PARC_GARINTGEM,
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	WHERE id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
) AS PARC_TOTAL
FROM
(
-- calendrier
SELECT DISTINCT EXTRACT(YEAR_MONTH FROM cal_date) AS ANNEE_MOIS, calendrier.annee, calendrier.mois
FROM calendrier
WHERE cal_date BETWEEN @date_deb AND @date_fin
) T0