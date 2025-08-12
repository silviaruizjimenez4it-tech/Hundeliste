--\! cls 
\! cls
-- DB anlegen, falls noch nicht existent
CREATE DATABASE IF NOT EXISTS Silvia;

-- DB wechseln
USE Silvia;

-- Tabelle löschen, falls existent
-- Nur bei Test / Entwicklung
DROP TABLE IF EXISTS Tiere;

-- Tabelle anlegen
CREATE TABLE IF NOT EXISTS Tiere
(
    k_id INT AUTO_INCREMENT PRIMARY KEY,
    k_name VARCHAR(45) NOT NULL DEFAULT "TBA",
    k_alter TINYINT(4),
    k_rasse VARCHAR(100),
    k_ernaehrung VARCHAR(100),
    k_besonderheiten VARCHAR(100)
);

-- Struktur anzeigen
DESCRIBE Tiere;

-- Datensätze/Zeilen
INSERT INTO Tiere(k_id,k_name,k_alter,k_rasse,k_ernaehrung,k_besonderheiten) VALUES
(DEFAULT,"Negra", 15, "Schäferhund Border Collie Mix","Seniorfutter","Tablette abends"),
(DEFAULT,"Bonita",5, "Strassenhund","Nass- und Trockenfutter","Getreidefrei"),
(DEFAULT,"Ursula",1,"Labrador Gorden Setter Mix","Nass- und Trockenfutter","keine"),
(DEFAULT,"Merlin",6,"Perserkatze","Trockenfutter","Leckerli aller Art"),
(DEFAULT,"Harlekin",6,"Hauskatze","Nassfutter","Leckerli Stangen");


-- Tabellendaten (Inhalte) anzeigen
SELECT * FROM Tiere;
