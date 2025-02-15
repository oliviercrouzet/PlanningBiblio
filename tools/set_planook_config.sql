-- -- WARNING --
-- -- This file enable the Planook configuration.
-- -- Planook is a lite version of Planno. Enabling Planook will remove some features.
-- -- Uncomment all the lines and run the following queries only if you want to use the lite version.
-- 
-- -- You may use the following command to uncomment the lines :
-- -- sed -i -E "s/^--(.*)$/\1/g" tools/set_planook_config.sql
-- 
-- -- Activation du mode Planook
-- UPDATE `config` SET `valeur` = '1' WHERE `nom` = 'Planook';
-- UPDATE `config` SET `valeur` = 'planook' WHERE `nom` = 'Affichage-theme';
-- -- Désactivation du dimanche
-- UPDATE config SET valeur='0', type='info' WHERE nom='Dimanche';
-- -- Granularité forcée sur 30 minutes :
-- UPDATE config SET valeur='30', type='info' WHERE nom='Granularite';
-- -- Absences
-- UPDATE config SET valeur='1', type='info' WHERE nom='Absences-planningVide';
-- UPDATE config SET valeur='1', type='info' WHERE nom='Absences-apresValidation';
-- UPDATE config SET valeur='0', type='info' WHERE nom='Absences-adminSeulement';
-- UPDATE config SET valeur='0', type='info' WHERE nom='Absences-planning';
-- UPDATE config SET valeur='0', type='info' WHERE nom='Absences-validation';
-- UPDATE config SET valeur='0', type='info' WHERE nom='Absences-non-validees';
-- UPDATE config SET valeur='1', type='info' WHERE nom='Absences-agent-preselection';
-- UPDATE config SET valeur='0', type='info' WHERE nom='Absences-tous';
-- UPDATE config SET valeur='1', type='info' WHERE nom='Absences-journeeEntiere';
-- UPDATE config SET valeur='0', type='info' WHERE nom='Absences-notifications-agent-par-agent';
-- UPDATE config SET valeur='', type='info' WHERE nom='Absences-notifications-titre';
-- UPDATE config SET valeur='', type='info' WHERE nom='Absences-notifications-message';
-- UPDATE config SET valeur='365', type='info' WHERE nom='Absences-DelaiSuppressionDocuments';
-- -- Affichage
-- UPDATE config SET valeur='', type='info' WHERE nom='Affichage-titre';
-- UPDATE config SET valeur='0', type='info' WHERE nom='Affichage-etages';
-- -- Agenda
-- UPDATE config SET valeur='0', type='info' WHERE nom='Agenda-Plannings-Non-Valides';
-- -- Authentification
-- UPDATE config SET valeur='SQL', type='info' WHERE nom='Auth-Mode';
-- UPDATE config SET valeur='0', type='info' WHERE nom='Auth-Anonyme';
-- -- Interdiction d’activer le module de gestion des congés
-- UPDATE config SET valeur='0', type='info' WHERE nom='Conges-Enable';
-- -- Interdiction d’importer des heures de présence
-- UPDATE config SET valeur='', type='info' WHERE nom='Hamac-csv';
-- -- Désactivation du module Planning Hebdo
-- UPDATE config SET valeur='0' , type='info' WHERE nom='PlanningHebdo';
-- -- Forcer un même emploi du temps chaque semaine
-- UPDATE config SET valeur='1' , type='info' WHERE nom='nb_semaine';
-- UPDATE config SET valeur='0' , type='info' WHERE nom='EDTSamedi';
-- -- Interdire la 2ème pause
-- UPDATE config SET valeur='0', type='info' WHERE nom='PlanningHebdo-Pause2';
-- -- Désactivation des imports ICS
-- UPDATE config SET valeur='', type='info' WHERE nom='ICS-Server1';
-- UPDATE config SET valeur='', type='info' WHERE nom='ICS-Server2';
-- UPDATE config SET valeur='', type='info' WHERE nom='ICS-Pattern1';
-- UPDATE config SET valeur='', type='info' WHERE nom='ICS-Pattern2';
-- UPDATE config SET valeur='0', type='info' WHERE nom='ICS-Server3';
-- -- Désactivation de l’export ICS
-- UPDATE config SET valeur='0', type='info' WHERE nom='ICS-Export';
-- -- Interdire l’ajout de serveur LDAP
-- UPDATE config SET valeur='', type='info' WHERE nom='LDAP-Host';
-- -- Interdire l’activation de la messagerie
-- UPDATE config SET valeur='0', type='info' WHERE nom='Mail-IsEnabled';
-- -- Désactivation des rappels
-- UPDATE config SET valeur='0', type='info' WHERE nom='Rappels-Actifs';
-- -- Statistiques
-- UPDATE config SET valeur='', type='info' WHERE nom='Statistiques-Heures';
-- -- Préférence du planning
-- UPDATE config SET valeur='1', type='info' WHERE nom='ctrlHresAgents';
-- UPDATE config SET valeur='0', type='info' WHERE nom='CatAFinDeService';
-- UPDATE config SET valeur='4', type='info' WHERE nom='Planning-NbAgentsCellule';
-- UPDATE config SET valeur='1', type='info' WHERE nom='Planning-lignesVides';
-- UPDATE config SET valeur='0', type='info' WHERE nom='toutlemonde';
-- UPDATE config SET valeur='1', type='info' WHERE nom='agentsIndispo';
-- UPDATE config SET valeur='0', type='info' WHERE nom='hres4semaines';
-- UPDATE config SET valeur='0', type='info' WHERE nom='ClasseParService';
-- UPDATE config SET valeur='0', type='info' WHERE nom='Planning-Absences-Heures-Hebdo';
-- UPDATE config SET valeur='0', type='info' WHERE nom='Planning-Notifications';
-- UPDATE config SET valeur='0', type='info' WHERE nom='Planning-TableauxMasques';
-- UPDATE config SET valeur='0', type='info' WHERE nom='Planning-AppelDispo';
-- UPDATE config SET valeur='0', type='info' WHERE nom='Planning-agents-volants';
-- UPDATE config SET valeur='0', type='info' WHERE nom='Journey-time-between-sites';
-- UPDATE config SET valeur='0', type='info' WHERE nom='Journey-time-between-areas';
-- UPDATE config SET valeur='0', type='info' WHERE nom='Journey-time-for-absences';
-- UPDATE config SET valeur='1', type='info' WHERE nom='Planning-CommentairesToujoursActifs';
-- -- Une activité seulement
-- TRUNCATE activites;
-- UPDATE `personnel` SET `postes`='[]';
-- UPDATE `postes` SET activites='[]', categories='[]';
-- -- Insertion des motif d'absences
-- TRUNCATE `select_abs`;
-- INSERT INTO `select_abs` (`valeur`,`rang`, `notification_workflow`) VALUES ('Congé payé', '1', 'A');
-- INSERT INTO `select_abs` (`valeur`,`rang`, `notification_workflow`) VALUES ('Congé maternité', '2', 'A');
-- INSERT INTO `select_abs` (`valeur`,`rang`, `notification_workflow`) VALUES ('Congé paternité', '3', 'A');
-- INSERT INTO `select_abs` (`valeur`,`rang`, `notification_workflow`) VALUES ('Congé parental', '4', 'A');
-- INSERT INTO `select_abs` (`valeur`,`rang`, `notification_workflow`) VALUES ('Maladie', '5', 'A');
-- INSERT INTO `select_abs` (`valeur`,`rang`, `notification_workflow`) VALUES ('Concours', '6', 'A');
-- INSERT INTO `select_abs` (`valeur`,`rang`, `notification_workflow`) VALUES ('Formation', '7', 'A');
-- INSERT INTO `select_abs` (`valeur`,`rang`, `notification_workflow`) VALUES ('Entretien', '8', 'A');
-- INSERT INTO `select_abs` (`valeur`,`rang`, `notification_workflow`) VALUES ('Grève', '9', 'A');
-- INSERT INTO `select_abs` (`valeur`,`rang`, `notification_workflow`) VALUES ('Réunion', '10', 'A');
-- INSERT INTO `select_abs` (`valeur`,`rang`, `notification_workflow`) VALUES ('Réunion syndicale', '11', 'A');
-- INSERT INTO `select_abs` (`valeur`,`rang`, `notification_workflow`) VALUES ('Stage', '12', 'A');
-- INSERT INTO `select_abs` (`valeur`,`rang`, `notification_workflow`) VALUES ('Non justifiée', '13', 'A');
-- INSERT INTO `select_abs` (`valeur`,`rang`, `notification_workflow`) VALUES ('Autre', '14', 'A');
-- 
