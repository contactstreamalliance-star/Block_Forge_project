# BlockForge Alpha

BlockForge Alpha est une pre-alpha Godot native d'un bac a sable voxel open source. Elle ne tourne pas dans un navigateur, ne depend pas d'un CDN, et garde ses fichiers en clair pour GitHub.

Ce projet est independant de Minecraft. Il ne reprend aucun fichier, code, texture, son, nom, logo ou asset Minecraft.

## Direction du projet

- Bac a sable voxel local.
- Monde modifiable par blocs.
- Textures, sons, recettes et donnees lisibles dans les fichiers du projet.
- Modding communautaire sans dependance aux modloaders Minecraft.
- Multijoueur seulement optionnel plus tard, jamais obligatoire.
- Aucun serveur officiel cache, aucune IP personnelle dans le code, aucun compte en ligne force.

## Lancer avec Godot

1. Installe ou ouvre Godot 4.7.2.
2. Choisis `Importer`.
3. Selectionne la racine du depot.
4. Ouvre `project.godot`.
5. Lance `scenes/main.tscn`.

## Controles

- `Jouer` : lance la partie et capture la souris.
- `ZQSD` ou `WASD` : marcher.
- Souris : regarder.
- Espace : sauter.
- Clic gauche : casser le bloc vise.
- Clic droit : poser le bloc selectionne.
- `1` a `9` : choisir un bloc.
- `F` : changer le brouillard retro.
- `R` : generer un nouveau monde.
- `Echap` : pause.

## Structure

- `project.godot` : configuration Godot.
- `scenes/` : scenes Godot.
- `src/` : code Godot separe par role.
- `assets/` : blocs, textures, sons, langue, recettes et generation.
- `mods/` : emplacement prevu pour les futurs mods.
- `tools/` : outils locaux pour generer ou verifier les assets.
- `docs/` : documentation du projet.
- `.github/` : fichiers de contribution GitHub.

## Statut

Pre-alpha jouable. Le moteur est volontairement simple et doit rester centre sur un bac a sable voxel local, open source et facilement moddable.

Les prochaines priorites sont l'inventaire, le crafting, les sauvegardes multiples, les blocs, les creatures simples et les outils de modding.