CREATE DATABASE bd_esif_technologie;

CREATE TABLE  clients (
    clientID int(11) PRIMARY KEY NOT NULL,
    Nom varchar(255) NOT Null,
    Telephone varchar(255),
    identifiant varchar(255)
);

CREATE TABLE fourmisseur ( 
   fourmisseurID  int primary key NOT Null,
    Nom varchar(255),NULL,
    Prenom varchar(255),
    seteur varchar(255),
    Ville varchar(255),
);

CREATE TABLE categories (
    categoriesID  int(11) primary key NOT Null,
    Nom_ categories varchar(255),NULL
);

CREATE TABLE Articles (
    articleID int NOT NULL AUTO_INCREMENT,
    nom_de_l_article varchar(255),
    prix_de_article varchar(255),
    PRIMARY KEY (articleID),
    FOREIGN KEY (categorieID) REFERENCES Categories(categorieID)
);

CREATE TABLE Achats (
    achatID int NOT NULL AUTO_INCREMENT,
    nom_de_l_article_acheter varchar(255),
    prix_de_l_article_acheter integer(20),
    PRIMARY KEY (achatID),
    fournisseurID int,
    FOREIGN KEY (fournisseurID) REFERENCES Fournisseurs(fournisseurID),
    articleID int,
    FOREIGN KEY (articleID) REFERENCES Articles(articleID)
);

CREATE TABLE Ventes (
    venteID int NOT NULL AUTO_INCREMENT,
    nom_de_l_article_vendu varchar(255),
    prix_de_l_article_vendu int(255),
    PRIMARY KEY (venteID),
    clientID int,
    FOREIGN KEY (clientID) REFERENCES Clients(clientID),
    articleID int,
    FOREIGN KEY (articleID) REFERENCES Articles(articleID)
);

-- Ceci cocerne le INSERT TO de la table Categorie  --
INSERT INTO Categories (nom_de_la_categorie)
VALUES ('Ordinateur'),
VALUES ('Ordinateur'),
VALUES ('Ordinateur'),
VALUES ('Ordinateur'),
VALUES ('Souri');

-- Ceci cocerne le INSERT TO de la table Client  --
INSERT INTO Clients (nom_du_client, prenom_du_client, telephone_du_client, email_du_client,)
VALUES ('DAOUDA', 'ULRICH, '55245658', 'ulrichda@gmail.com),
VALUES ('DAOUDA', 'ULRICH, '55245658', 'ulrichda@gmail.com),
VALUES ('DAOUDA', 'ULRICH, '55245658', 'ulrichda@gmail.com),
VALUES ('DAOUDA', 'ULRICH, '55245658', 'ulrichda@gmail.com),
VALUES ('DAOUDA', 'ULRICH, '55245658', 'ulrichda@gmail.com),

-- Ceci cocerne le INSERT TO de la table Article  --
INSERT INTO Articles (nom_de_l_article, prix_de_article,)
VALUES ('HP Probook core i5', '700000'),
VALUES ('HP Probook core i5', '700000'),
VALUES ('HP Probook core i5', '700000'),
VALUES ('HP Probook core i5', '700000'),
VALUES ('HP Probook core i5', '700000');

-- Ceci cocerne le INSERT TO de la table Vente  --
INSERT INTO Ventes (nom_de_l_article_vendu, prix_de_l_article_vendu,)
VALUES ('Routeur', '70000'),
VALUES ('Routeur', '70000'),
VALUES ('Routeur', '70000'),
VALUES ('Routeur', '70000'),
VALUES ('Routeur', '70000'),;

-- Ceci cocerne le INSERT TO de la table Fournisseur  --
INSERT INTO Fournisseurs (nom_du_fournisseur, telephone_du_fournisseur_du_fournisseur, email_du_fournisseur, 
nom_de_l_article_fournis, prix_de_l_article_fournis,)

VALUES ('ESIFBURKINA', '01219112', 'eSiffaso@gmail.com', 'HP Probook core i5', '700000'),
VALUES ('ESIFBURKINA', '01219112', 'eSiffaso@gmail.com', 'HP Probook core i5', '700000'),
VALUES ('ESIFBURKINA', '01219112', 'eSiffaso@gmail.com', 'HP Probook core i5', '700000'),
VALUES ('ESIFBURKINA', '01219112', 'eSiffaso@gmail.com', 'HP Probook core i5', '700000'),
VALUES ('ESIFBURKINA', '01219112', 'eSiffaso@gmail.com', 'HP Probook core i5', '700000'),
VALUES ('ESIFBURKINA', '01219112', 'eSiffaso@gmail.com', 'HP Probook core i5', '700000'),





-- Ceci cocerne le INSERT TO de la table Achat  --
INSERT INTO Achats (nom_de_l_article_acheter, prix_de_l_article_acheter,)
VALUES ('HP Probook core i5', '700000'),
VALUES ('HP Probook core i5', '700000'),
VALUES ('HP Probook core i5', '700000'),
VALUES ('HP Probook core i5', '700000'),
VALUES ('HP Probook core i5', '700000');