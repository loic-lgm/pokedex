# Dictionnaire des données

> Toutes les statistiques (`attack`, `defense`, `attack_spe`, `defense_spe`, `speed`) sont calculées sur un total de 255.

## Pokemon (pokemon)
|Champ|Type|Spécificités|Description|
|-|-|-|-|
|**id**|INT|Primary Key, NOT NULL, UNSIGNED, AI|ID pokemon|
|**name**|VARCHAR(255)|NOT NULL|Nom du pokemon|
|**pv**|INT|NOT NULL|Point de vie du pokemon|
|**attack**|INT|NOT NULL|Point d'attaque|
|**defense**|INT|NOT NULL|Point de défense|
|**attack_spe**|INT|NOT NULL|Point attaque spéciale|
|**defense_spe**|INT|NOT NULL|Point défense spéciale|
|**speed**|INT|NOT NULL|Vitesse|
|**number**|INT|NOT NULL|Numero du pokemon qui correspond au numero de son image|
|**created_at**|TIMESTAMP|NOT NULL, CURRENT TIMESTAMP|Date de création|
|**updated_at**|TIMESTAMP|NULL|Date de modification|
|||||


## Type (type)
|Champ|Type|Spécificités|Description|
|-|-|-|-|
|**id**|INT|Primary Key, NOT NULL, UNSIGNED, AI|ID type|
|**name**|VARCHAR(255)|NOT NULL|Nom du type|
|**color**|VARCHAR(6)|NOT NULL|Couleur hexadécimale|
|**created_at**|TIMESTAMP|NOT NULL, CURRENT TIMESTAMP|Date de création|
|**updated_at**|TIMESTAMP|NULL|Date de modification|
|||||


## Utilisateur (user)
|Champ|Type|Spécificités|Description|
|-|-|-|-|
|**id**|INT|Primary Key, NOT NULL, UNSIGNED, AI|ID type|
|**username**|VARCHAR(255)|NOT NULL|Nom de l'utilisateur|
|**email**|VARCHAR(255)|NOT NULL, UNIQUE|Email de l'utilisateur|
|**password**|VARCHAR(64)|NOT NULL|Mot de passe de l'utilisateur|
|**role**|VARCHAR(64)|NOT NULL|Role de l'utilisateur|
|**created_at**|TIMESTAMP|NOT NULL, CURRENT TIMESTAMP|Date de création|
|**updated_at**|TIMESTAMP|NULL|Date de modification|
|||||