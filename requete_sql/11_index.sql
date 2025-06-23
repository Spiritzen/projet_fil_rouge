
-- 🔍 Ajout d’index pour optimiser les recherches dans Ink Red Plumes

-- 1. Index sur email (utilisé pour l'authentification et recherche utilisateur)
CREATE INDEX idx_user_email ON user(email);

-- 2. Index sur role (souvent utilisé pour filtrer admin / client / author)
CREATE INDEX idx_user_role ON user(role);

-- 3. Index sur livre.titre (recherche de livres par titre)
CREATE INDEX idx_livre_titre ON livre(titre);

-- 4. Index sur comments.livreId (optimise les requêtes sur les commentaires par livre)
CREATE INDEX idx_comments_livreId ON comments(livreId);

-- 5. Index sur commande.userId (utile pour lister les commandes d’un utilisateur)
CREATE INDEX idx_commande_userId ON commande(userId);

-- 6. Index sur ligne_de_commande.commandeId (optimise la récupération du contenu des commandes)
CREATE INDEX idx_ldc_commandeId ON ligne_de_commande(commandeId);