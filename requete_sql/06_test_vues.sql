-- 🔍 TEST 1 : Vérifier les utilisateurs présents dans la vue
SELECT * FROM vue_utilisateurs;
-- ✅ Résultat attendu : 3 utilisateurs (admin, author, client)

-- 🔍 TEST 2 : Vérifier les auteurs et leur nombre de livres
SELECT * FROM vue_auteurs;
-- ✅ Résultat attendu : l'auteur Bob doit apparaître avec 2 livres

-- 🔍 TEST 3 : Vérifier les livres ayant des commentaires
SELECT * FROM vue_livres_commentes;
-- ✅ Résultat attendu : chaque ligne = 1 livre commenté avec moyenne calculée

-- 🔍 TEST 4 : Vérifier les livres les mieux notés
SELECT * FROM vue_livres_populaires;
-- ✅ Résultat attendu : livres triés du plus au moins bien noté

-- 🔍 TEST 5 : Vérifier les commandes passées par les clients
SELECT * FROM vue_commandes_clients;
-- ✅ Résultat attendu : 2 commandes passées par Charlie

-- 🔍 TEST 6 : Vérifier les contenus des lignes de commande
SELECT * FROM vue_contenu_commandes;
-- ✅ Résultat attendu : détail des produits commandés avec prix et quantités

-- 🔍 TEST 7 : Vérifier les produits en stock faible (<10)
SELECT * FROM vue_produits_stock_faible;
-- ✅ Résultat attendu : aucun résultat si tous les produits ont un stock suffisant

-- 🔍 TEST 8 : Vérifier l’historique des commandes utilisateur
SELECT * FROM vue_historique_commandes_utilisateur;
-- ✅ Résultat attendu : lister les commandes passées avec nom de l’utilisateur

-- 🔍 TEST 9 : Vérifier le nombre de commentaires par livre
SELECT * FROM vue_commentaires_par_livre;
-- ✅ Résultat attendu : chaque livre commenté doit apparaître avec un nombre > 0

-- 🔍 TEST 10 : Vérifier le chiffre d'affaires par produit
SELECT * FROM vue_stats_ventes;
-- ✅ Résultat attendu : somme des ventes par produit, valeurs calculées (quantité × prix)
