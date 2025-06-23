
DELIMITER //

-- 1. Lister tous les livres disponibles
CREATE PROCEDURE listerLivres()
BEGIN
    SELECT * FROM livre;
END;
//

-- 2. Lister les commentaires d’un livre donné
CREATE PROCEDURE commentairesLivre(IN id INT)
BEGIN
    SELECT c.*, u.firstName, u.lastName
    FROM comments c
    JOIN user u ON c.userId = u.idUser
    WHERE c.livreId = id;
END;
//

-- 3. Insérer un nouveau produit
CREATE PROCEDURE ajouterProduit(IN nom VARCHAR(100), IN description VARCHAR(600), IN prix DECIMAL(10,2), IN stock INT)
BEGIN
    INSERT INTO produit (nomProduit, descriptionProduit, prixProduit, stockProduit)
    VALUES (nom, description, prix, stock);
END;
//

-- 4. Mettre à jour le stock d’un produit
CREATE PROCEDURE majStockProduit(IN id INT, IN nouveauStock INT)
BEGIN
    UPDATE produit SET stockProduit = nouveauStock WHERE idProduit = id;
END;
//

-- 5. Supprimer un commentaire par son ID
CREATE PROCEDURE supprimerCommentaire(IN id INT)
BEGIN
    DELETE FROM comments WHERE idComment = id;
END;
//

-- 6. Créer une commande pour un utilisateur
CREATE PROCEDURE creerCommande(IN user INT)
BEGIN
    INSERT INTO commande (userId, dateCommande) VALUES (user, NOW());
END;
//

-- 7. Lister les commandes d’un utilisateur
CREATE PROCEDURE commandesUtilisateur(IN user INT)
BEGIN
    SELECT * FROM commande WHERE userId = user;
END;
//

-- 8. Ajouter une ligne de commande
CREATE PROCEDURE ajouterLigneCommande(IN commande INT, IN produit INT, IN quantite INT, IN prix DECIMAL(10,2))
BEGIN
    INSERT INTO ligne_de_commande (commandeId, produitId, quantite, prixUnitaire)
    VALUES (commande, produit, quantite, prix);
END;
//

-- 9. Calculer le total d’une commande
CREATE PROCEDURE totalCommande(IN idCommande INT)
BEGIN
    SELECT SUM(quantite * prixUnitaire) AS total
    FROM ligne_de_commande
    WHERE commandeId = idCommande;
END;
//

-- 10. Vérifier les livres les mieux notés (note >= 4)
CREATE PROCEDURE livresMieuxNotes()
BEGIN
    SELECT l.*, AVG(c.note) as moyenne
    FROM livre l
    JOIN comments c ON l.idLivre = c.livreId
    GROUP BY l.idLivre
    HAVING moyenne >= 4;
END;
//

DELIMITER ;
