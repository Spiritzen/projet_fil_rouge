
-- 🔍 TEST 1 : Vérifier que des utilisateurs sont bien présents
SELECT * FROM user;
-- ✅ Résultat attendu : 3 utilisateurs

-- 🔍 TEST 2 : Vérifier que des livres sont bien présents
SELECT * FROM livre;
-- ✅ Résultat attendu : 2 livres

-- 🔍 TEST 3 : Vérifier que les livres sont correctement liés à un auteur
SELECT titre, auteurId FROM livre;
-- ✅ Résultat attendu : chaque livre possède un auteurId non NULL

-- 🔍 TEST 4 : Vérifier que les commandes sont présentes
SELECT * FROM commande;
-- ✅ Résultat attendu : au moins 2 commandes

-- 🔍 TEST 5 : Vérifier que les produits sont enregistrés
SELECT * FROM produit;
-- ✅ Résultat attendu : plusieurs produits référencés

-- 🔍 TEST 6 : Vérifier les commentaires associés aux livres
SELECT comments.contenu, livre.titre
FROM comments
JOIN livre ON comments.livreId = livre.idLivre;
-- ✅ Résultat attendu : commentaires reliés à des titres de livres

-- 🔍 TEST 7 : Vérifier les lignes de commande associées aux commandes
SELECT ligne_de_commande.*
FROM ligne_de_commande
JOIN commande ON ligne_de_commande.commandeId = commande.idCommande;
-- ✅ Résultat attendu : chaque ligne de commande est liée à une commande

-- 🔍 TEST 8 : Vérifier les lignes de commande et les produits
SELECT ligne_de_commande.*, produit.nomProduit
FROM ligne_de_commande
JOIN produit ON ligne_de_commande.produitId = produit.idProduit;
-- ✅ Résultat attendu : chaque ligne est liée à un produit

-- 🔍 TEST 9 : Vérifier les commandes d’un utilisateur
SELECT user.firstName, commande.idCommande
FROM commande
JOIN user ON commande.userId = user.idUser;
-- ✅ Résultat attendu : au moins une commande par utilisateur client

-- 🔍 TEST 10 : Vérifier les produits commandés avec quantité > 1
SELECT produit.nomProduit, ligne_de_commande.quantite
FROM ligne_de_commande
JOIN produit ON ligne_de_commande.produitId = produit.idProduit
WHERE ligne_de_commande.quantite > 1;
-- ✅ Résultat attendu : produits commandés en quantité supérieure à 1
