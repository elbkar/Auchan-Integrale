-- Auchan - prog6 PARC detail produit
-- À la demande de Julien Vignal en date du 2019-05-23
-- Développé par Elie Busson le 2019-05-23




SET @date_deb='2014-06-01', @date_fin='2022-06-30'; /*Génération Ventes Obeservée*/

SELECT
T0.ANNEE_MOIS, T0.ANNEE, T0.MOIS,
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE 1+2 ANS T1'
) AS 'INTEGRALE 1+2 ANS T1',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE 1+2 ANS T2'
) AS 'INTEGRALE 1+2 ANS T2',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE 1+2 ANS T3'
) AS 'INTEGRALE 1+2 ANS T3',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE 1+2 ANS T4'
) AS 'INTEGRALE 1+2 ANS T4',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE 1+2 ANS T5'
) AS 'INTEGRALE 1+2 ANS T5',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE 1+2 ANS T6'
) AS 'INTEGRALE 1+2 ANS T6',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE 2+3 ANS T1'
) AS 'INTEGRALE 2+3 ANS T1',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE 2+3 ANS T2'
) AS 'INTEGRALE 2+3 ANS T2',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE 2+3 ANS T3'
) AS 'INTEGRALE 2+3 ANS T3',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE 2+3 ANS T4'
) AS 'INTEGRALE 2+3 ANS T4',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE 2+3 ANS T5'
) AS 'INTEGRALE 2+3 ANS T5',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE 2+3 ANS T6'
) AS 'INTEGRALE 2+3 ANS T6',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE 2+3 ANS T7'
) AS 'INTEGRALE 2+3 ANS T7',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE GEM 2+3 ANS ASPIRATEUR'
) AS 'INTEGRALE GEM 2+3 ANS ASPIRATEUR',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE GEM 2+3 ANS CAVE A VIN'
) AS 'INTEGRALE GEM 2+3 ANS CAVE A VIN',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE GEM 2+3 ANS CONGELATEUR'
) AS 'INTEGRALE GEM 2+3 ANS CONGELATEUR',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE GEM 2+3 ANS CUISIGNÈRE VIG'
) AS 'INTEGRALE GEM 2+3 ANS CUISIGNÈRE VIG',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE GEM 2+3 ANS CUISINÈRE MIXTE'
) AS 'INTEGRALE GEM 2+3 ANS CUISINÈRE MIXTE',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE GEM 2+3 ANS FOUR'
) AS 'INTEGRALE GEM 2+3 ANS FOUR',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE GEM 2+3 ANS FRIGO COMBI'
) AS 'INTEGRALE GEM 2+3 ANS FRIGO COMBI',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE GEM 2+3 ANS FRIGO US'
) AS 'INTEGRALE GEM 2+3 ANS FRIGO US',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE GEM 2+3 ANS HOTTE'
) AS 'INTEGRALE GEM 2+3 ANS HOTTE',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE GEM 2+3 ANS LAVE LINGE'
) AS 'INTEGRALE GEM 2+3 ANS LAVE LINGE',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE GEM 2+3 ANS LAVE LINGE SECHANT'
) AS 'INTEGRALE GEM 2+3 ANS LAVE LINGE SECHANT',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE GEM 2+3 ANS LAVE VAISSELLE'
) AS 'INTEGRALE GEM 2+3 ANS LAVE VAISSELLE',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE GEM 2+3 ANS MICRO ONDE'
) AS 'INTEGRALE GEM 2+3 ANS MICRO ONDE',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE GEM 2+3 ANS PIANO'
) AS 'INTEGRALE GEM 2+3 ANS PIANO',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE GEM 2+3 ANS SECHE LINGE'
) AS 'INTEGRALE GEM 2+3 ANS SECHE LINGE',
(SELECT COUNT(DISTINCT contract_no)
	FROM declaratif_v2
	INNER JOIN code_contrat ON declaratif_v2.code_contrat=code_contrat.CODE_CONTRAT AND declaratif_v2.id_programme = code_contrat.id_programme
	INNER JOIN grille_tarifaire ON code_contrat.id_grille_tarifaire = grille_tarifaire.id_grille_tarifaire
	WHERE declaratif_v2.id_programme = 6
	AND declaratif_v2.non_facturable <> 1
	AND T0.ANNEE_MOIS >= EXTRACT(YEAR_MONTH FROM DEBUT_GARANTIE) AND T0.ANNEE_MOIS <= EXTRACT(YEAR_MONTH FROM FIN_GARANTIE) 
	AND grille_tarifaire.sales_name = 'INTEGRALE GEM 2+3 ANS TABLE DE CUISSON'
) AS 'INTEGRALE GEM 2+3 ANS TABLE DE CUISSON'


FROM
(
-- calendrier
SELECT DISTINCT EXTRACT(YEAR_MONTH FROM cal_date) AS ANNEE_MOIS, calendrier.annee, calendrier.mois
FROM calendrier
WHERE cal_date BETWEEN @date_deb AND @date_fin
) T0