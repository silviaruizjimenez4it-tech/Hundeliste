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
    k_krankheiten VARCHAR(100) NOT NULL DEFAULT "keine",
    k_impftermin VARCHAR(100) NOT NULL DEFAULT "keine",
    k_besonderheiten VARCHAR(100)
);

-- Struktur anzeigen
DESCRIBE Tiere;

-- Datensätze/Zeilen
INSERT INTO Tiere(k_id,k_name,k_alter,k_rasse,k_ernaehrung,k_krankheiten,k_impftermin,k_besonderheiten) VALUES
(DEFAULT,"Negra", 15, "Border Collie-Mix","Seniorfutter","mehrere Tumore",DEFAULT,"Tabletten"),
(DEFAULT,"Bonita",5, "Strassenhund","Nass und Trocken",DEFAULT,"05.10.2025","Getreidefrei"),
(DEFAULT,"Ursula",1,"Gorden Setter-Mix","Nass und Trocken",DEFAULT,"02.12.2025","Kaustangen"),
(DEFAULT,"Merlin",6,"Perserkatze","Trockenfutter",DEFAULT,"10.03.2026","Leckerli Kissen"),
(DEFAULT,"Harlekin",6,"Hauskatze","Nassfutter",DEFAULT,"10.03.2026","Leckerli Stangen");


-- Tabellendaten (Inhalte) anzeigen
SELECT * FROM Tiere;
