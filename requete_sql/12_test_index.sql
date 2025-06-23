
-- 🔍 TEST 1 : Vérification des index existants
SHOW INDEX FROM user;
SHOW INDEX FROM livre;
SHOW INDEX FROM comments;
SHOW INDEX FROM commande;
SHOW INDEX FROM ligne_de_commande;

-- 🔍 TEST 2 : Requête sur utilisateur par email (doit utiliser idx_user_email)
EXPLAIN SELECT * FROM user WHERE email = 'ok@demo.com';

-- 🔍 TEST 3 : Requête sur utilisateur par rôle (doit utiliser idx_user_role)
EXPLAIN SELECT * FROM user WHERE role = 'client';

-- 🔍 TEST 4 : Requête sur livre par titre (doit utiliser idx_livre_titre)
EXPLAIN SELECT * FROM livre WHERE titre LIKE 'Le%';

-- 🔍 TEST 5 : Récupération des commentaires pour un livre (doit utiliser idx_comments_livreId)
EXPLAIN SELECT * FROM comments WHERE livreId = 2;

-- 🔍 TEST 6 : Récupération des commandes d’un utilisateur (doit utiliser idx_commande_userId)
EXPLAIN SELECT * FROM commande WHERE userId = 3;

-- 🔍 TEST 7 : Récupération des lignes d’une commande (doit utiliser idx_ldc_commandeId)
EXPLAIN SELECT * FROM ligne_de_commande WHERE commandeId = 1;
