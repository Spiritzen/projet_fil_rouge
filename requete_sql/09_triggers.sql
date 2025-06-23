USE ink_red_plumes;
DELIMITER //

-- 1. Vérifie que le rôle est valide avant insertion
DROP TRIGGER IF EXISTS before_insert_user_role;
CREATE TRIGGER before_insert_user_role
BEFORE INSERT ON user
FOR EACH ROW
BEGIN
    IF NEW.role NOT IN ('admin', 'author', 'client') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Rôle invalide. Valeurs autorisées : admin, author, client.';
    END IF;
END;
//



-- 2. Empêche d’avoir un stock négatif
DROP TRIGGER IF EXISTS before_update_stock;
CREATE TRIGGER before_update_stock
BEFORE UPDATE ON produit
FOR EACH ROW
BEGIN
    IF NEW.stockProduit < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = '❌ Stock produit ne peut pas être négatif.';
    END IF;
END;
//



-- 3. Vérifie la longueur du titre de livre
DROP TRIGGER IF EXISTS before_insert_livre;
CREATE TRIGGER before_insert_livre
BEFORE INSERT ON livre
FOR EACH ROW
BEGIN
    IF CHAR_LENGTH(NEW.titre) > 200 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = '❌ Titre du livre trop long (max 200 caractères).';
    END IF;
END;
//

DELIMITER ;
