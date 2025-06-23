-- 🔍 TEST 1 : Insertion avec rôle invalide (doit échouer)
-- Objectif : vérifier que le trigger bloque les rôles non autorisés
INSERT INTO user (email, password, firstName, lastName, role, createdAt)
VALUES ('fake@demo.com', 'test', 'Test', 'Erreur', 'ghost', NOW());
-- ✅ Résultat attendu : ERREUR déclenchée (1644 - Rôle invalide. Valeurs autorisées : admin, author, client.)

-- 🔍 TEST 2 : Insertion avec rôle valide (doit réussir)
INSERT INTO user (email, password, firstName, lastName, role, createdAt)
VALUES ('ok@demo.com', 'test', 'Test', 'Valide', 'client', NOW());
-- ✅ Résultat attendu : ligne insérée avec succès

-- 🔍 TEST 3 : Mise à jour avec stock négatif (doit échouer)
-- Objectif : vérifier que le stock ne peut pas passer en négatif
UPDATE produit SET stockProduit = -5 WHERE idProduit = 1;
-- ✅ Résultat attendu : ERREUR déclenchée (stock négatif)

-- 🔍 TEST 4 : Mise à jour avec stock correct (doit réussir)
UPDATE produit SET stockProduit = 15 WHERE idProduit = 1;
-- ✅ Résultat attendu : mise à jour acceptée

-- 🔍 TEST 5 : Insertion d’un livre avec titre trop long (doit échouer)
-- Objectif : tester la limite de 200 caractères pour les titres
INSERT INTO livre (titre, resume, prix, dateParution, auteurId)
VALUES (
  REPEAT('A', 201), 'Résumé test', 15.99, '2024-06-17', 2
);
-- ✅ Résultat attendu : ERREUR déclenchée (titre trop long)

-- 🔍 TEST 6 : Insertion d’un livre avec titre valide (doit réussir)
INSERT INTO livre (titre, resume, prix, dateParution, auteurId)
VALUES (
  'Le jour où tout a changé', 'Roman dramatique', 14.99, '2024-01-01', 2
);
-- ✅ Résultat attendu : livre inséré avec succès
