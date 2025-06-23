
# 📁 Requêtes SQL – Ink Red Plumes (v1.0)

Ce dossier contient l'ensemble des requêtes SQL utilisées pour la conception, la structuration, le test et l’optimisation de la base de données du projet **Ink Red Plumes**. Il couvre l'intégralité du **Sprint 2** (Base de données & Backend).

---

## 🧱 01_create_bdd_table.sql

- **Objectif** : Création des tables principales :
  - `user`, `livre`, `comments`, `commande`, `produit`, `ligne_de_commande`
- **Statut** : ✅ Fonctionnel

---

## 🔗 02_alter_cle_etrangere.sql

- **Objectif** : Ajout des contraintes `FOREIGN KEY` entre les tables
- **Statut** : ✅ Fonctionnel

---

## 🧪 03_insert_data_demo.sql

- **Objectif** : Insertion de données de test (utilisateurs, livres, produits, commandes, commentaires)
- **Statut** : ✅ Données insérées avec succès

---

## 🔍 04_test_requete_auto.sql

- **Objectif** : Tester la cohérence de la base (via 10 requêtes `SELECT`)
- **Statut** : ✅ Validé

---

## 👁️ 05_vue.sql

- **Objectif** : Création de 10 vues SQL facilitant la lecture des données
- **Statut** : ✅ Vues fonctionnelles

---

## ✅ 06_test_vues.sql

- **Objectif** : Tester chaque vue créée
- **Statut** : ✅ Tests validés

---

## ⚙️ 07_procedures.sql

- **Objectif** : Création de 10 procédures stockées utiles (ajout, suppression, consultation…)
- **Statut** : ✅ Fonctionnelles

---

## 🧪 08_test_procedures.sql

- **Objectif** : Tester l’exécution correcte des procédures
- **Statut** : ✅ Résultats cohérents

---

## 🔄 09_triggers.sql

- **Objectif** : Ajout de 3 déclencheurs automatiques :
  - Vérification du rôle utilisateur
  - Stock produit ≥ 0
  - Longueur maximale du titre de livre
- **Statut** : ✅ Fonctionnels

---

## ✅ 10_test_triggers.sql

- **Objectif** : Tester les triggers via des INSERT / UPDATE simulant des erreurs ou succès
- **Statut** : ✅ Résultats conformes aux attentes

---

## ⚡ 11_index.sql

- **Objectif** : Création de 6 index pour améliorer les performances de recherche et jointure
- **Statut** : ✅ Index créés

---

## 🔬 12_test_index.sql

- **Objectif** : Vérifier la présence et l’utilisation des index via `SHOW INDEX` et `EXPLAIN`
- **Statut** : ✅ Vérification faite

---

## 📌 Bonnes pratiques

- Respecter l’ordre des scripts pour éviter les erreurs.
- Organiser les tests en lots (vues, procédures, triggers, index).
- Versionner les modifications par sprint et date.

---

## 🔄 Prochaine étape

🎯 Passage au **Sprint 3 : Développement du backend en Java/JEE ou Spring Boot** avec connexion à cette base.

---

## 🎯 Auteur

Projet CDA – Ink Red Plumes  
Développé par **Seb Cantrelle** (AFCI)  
_Assistance technique & structuration par ChatGPT_
