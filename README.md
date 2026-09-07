
# Voxel Frontier Alpha

Voxel Frontier Alpha est une pré-alpha jouable d'un bac à sable voxel rétro, libre et original. Le projet vise une sensation de vieux jeu de blocs : terrain généré, textures 16x16, casse et pose de blocs, sauvegarde locale, brouillard rétro et base de modding simple.

Le projet ne reprend aucun asset, code, son, texture, nom, fichier ou élément protégé de Minecraft. Tout ce qui se trouve ici est créé pour ce prototype et peut être modifié dans les fichiers du dépôt.

## Lancer

Depuis ce dossier :

```powershell
npm start
```

ou :

```powershell
node server.cjs
```

Puis ouvre l'adresse affichée dans le terminal.

## Dossiers importants

- `src/` : moteur du jeu, rendu, contrôles, génération du monde.
- `assets/` : blocs, textures, langue, recettes, paramètres du monde.
- `assets/audio.json` : sons et musique chiptune modifiables.
- `assets/ui/title-panorama.png` : image originale de l'écran titre.
- `mods/` : extensions chargées au démarrage.
- `docs/` : documentation du projet et du modding.
- `.github/` : modèles recommandés pour issues et pull requests.

## Contrôles

- Cliquer sur `Jouer` pour capturer la souris.
- Si ton navigateur refuse la capture souris, le jeu passe en mode secours : maintiens le clic et glisse pour regarder autour de toi.
- `ZQSD` ou `WASD` : marcher.
- Souris : regarder.
- Espace : sauter.
- Clic gauche : casser le bloc visé.
- Clic droit : poser le bloc sélectionné.
- `1` à `9` ou molette : changer de bloc.
- `F` : alterner brouillard rétro.
- `C` : alterner collision/créatif léger.
- `R` : régénérer un nouveau monde.
- `Échap` : pause, ou retour au menu en mode souris secours.

## Statut

Cette version est volontairement marquée comme pré-alpha. Elle est faite pour être jouée, lue, modifiée et publiée sur GitHub, pas encore pour remplacer un vrai moteur complet.

## Notes légales

Voxel Frontier Alpha n'est pas Minecraft et n'utilise pas les assets de Minecraft. Les contributeurs doivent garder cette séparation claire pour que le projet reste redistribuable.
