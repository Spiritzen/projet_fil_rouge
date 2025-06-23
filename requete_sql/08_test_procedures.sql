-- 🔍 TEST 1 : Voir tous les livres disponibles
CALL listerLivres();

-- 🔍 TEST 2 : Voir les commentaires du livre ID = 2
CALL commentairesLivre(2);

-- 🔍 TEST 3 : Ajouter un nouveau produit test
CALL ajouterProduit('Stylo rouge', 'Stylo collector signé', 2.99, 50);

-- 🔍 TEST 4 : Mettre à jour le stock du produit ID = 1
CALL majStockProduit(1, 120);

-- 🔍 TEST 5 : Supprimer le commentaire ID = 1
CALL supprimerCommentaire(1);

-- 🔍 TEST 6 : Créer une nouvelle commande pour l’utilisateur ID = 3
CALL creerCommande(3);

-- 🔍 TEST 7 : Lister les commandes de l’utilisateur ID = 3
CALL commandesUtilisateur(3);

-- 🔍 TEST 8 : Ajouter une ligne de commande à la commande ID = 1
CALL ajouterLigneCommande(1, 2, 2, 4.50);

-- 🔍 TEST 9 : Calculer le total de la commande ID = 1
CALL totalCommande(1);

-- 🔍 TEST 10 : Afficher les livres les mieux notés (note ≥ 4)
CALL livresMieuxNotes();
