# 📁 Requêtes SQL – Ink Red Plumes

Ce dossier contient l'ensemble des requêtes SQL utilisées pour la mise en place, la gestion et le test de la base de données du projet **Ink Red Plumes**. Les fichiers sont ordonnés de manière logique pour permettre une exécution séquentielle.

---

## 🧱 01_create_bdd_table.sql

- **Objectif** : Création de la base de données `ink_red_plumes` et des 6 tables principales :
  - `user`
  - `livre`
  - `comments`
  - `commande`
  - `produit`
  - `ligne_de_commande`
- **Statut** : ✅ Fonctionnel

---

## 🔗 02_alter_cle_etrangere.sql

- **Objectif** : Ajout des contraintes de **clés étrangères** entre les tables pour garantir l'intégrité référentielle.
- **Relations couvertes** :
  - `comments → user`
  - `comments → livre`
  - `livre → user` (auteur)
  - `commande → user`
  - `ligne_de_commande → commande`
  - `ligne_de_commande → produit`
- **Statut** : ✅ Fonctionnel

---

## 🧪 03_insert_data_demo.sql

- **Objectif** : Insertion de **données de démonstration** dans toutes les tables :
  - 3 utilisateurs (admin, auteur, client)
  - 2 livres
  - 2 produits
  - 2 commandes et leurs lignes associées
  - 2 commentaires liés à des livres
- **Utilité** : Tester rapidement la structure et les liens entre les tables
- **Statut** : ✅ Données insérées avec succès

---

## 🔍 04_test_requete_auto.sql

- **Objectif** : Effectuer une **série de 10 tests automatisés** via des requêtes `SELECT` pour valider :
  - Présence et cohérence des données
  - Liens corrects entre les entités
  - Fonctionnement des clés étrangères
- **Recommandation** : à exécuter **après** les scripts 01 à 03
- **Statut** : ✅ Requêtes valides et résultats conformes attendus

---

## 👁️ 05_vue.sql

- **Objectif** : Création de **10 vues SQL** pour faciliter les lectures courantes :
  - Utilisateurs clients
  - Livres avec moyenne des notes
  - Produits en stock
  - Commentaires par livre
  - Commandes par utilisateur
  - Total des commandes
  - Détail des lignes de commande
  - Commentaires enrichis avec nom utilisateur
  - Livres populaires (note ≥ 4)
  - Vue globale de la bibliothèque
- **Statut** : ✅ Créées et testées avec succès

---

## ✅ 06_test_vues.sql

- **Objectif** : Vérification du bon fonctionnement des 10 vues créées
- **Méthode** : `SELECT` sur chaque vue avec conditions adaptées
- **Statut** : ✅ Vues validées

---

## ⚙️ 07_procedures.sql

- **Objectif** : Création de **10 procédures stockées** utiles :
  - Lister livres
  - Voir commentaires par livre
  - Ajouter produit
  - Mettre à jour stock
  - Supprimer commentaire
  - Créer commande
  - Lister commandes par utilisateur
  - Ajouter ligne de commande
  - Calculer total d’une commande
  - Livres avec bonne note
- **Statut** : ✅ Fonctionnelles

---

## 🧪 08_test_procedures.sql

- **Objectif** : Tester chaque procédure stockée par un appel `CALL`
- **Recommandation** : exécuter après insertion de données
- **Statut** : ✅ Résultats cohérents (certaines dépendant des données présentes)

---

## 💾 Sauvegarde & restauration

### 📍 Fichier de backup SQL
- **Chemin** : `C:\Backup\backup_ink_red_plumes_20250617.sql`
- **Contenu** : Structure et données de la base `ink_red_plumes` (export complet)
- **Utilité** : Permet de restaurer rapidement la base dans son état actuel

### 🧰 Script de restauration automatique
- **Nom** : `restaurer_ink_red_plumes.bat`
- **Chemin** : `C:\Users\AFCI\Documents\RedInkPlums\Restaure_backup\`
- **Fonction** : Exécute automatiquement la restauration du backup `.sql` via MariaDB
- **Statut** : ✅ Script fonctionnel et testé

---

## 📌 Bonnes pratiques

- Respecter l’ordre d’exécution des fichiers.
- Ajouter les futurs scripts dans ce dossier en suivant la numérotation :
  - `09_triggers.sql`
  - `10_index.sql`
  - `11_test_final.sql`
  - etc.

---

## 🔄 Mise à jour

Ce fichier sera enrichi au fur et à mesure des évolutions du projet.  
N’hésite pas à commenter ou versionner les modifications apportées à chaque fichier `.sql`.

---

## 🎯 Auteur

Projet CDA – Ink Red Plumes  
Développé par **Seb Cantrelle** (AFCI)  
_Assistance technique & structuration par ChatGPT_
