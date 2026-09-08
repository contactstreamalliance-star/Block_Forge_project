# Changelog

## 0.2.6-godot - 2026-09-08

- Recentered the project direction on a local open source voxel sandbox.
- Removed browser prototype files from the active GitHub project structure.
- Removed duplicate documentation files created with `(2)` suffixes.
- Clarified that the base game must not require a server, account, hidden connection target or official online service.
- Updated project metadata to BlockForge Alpha.
- Added the missing `src/main.gd` Godot script expected by `scenes/main.tscn`.
- Added GitHub issue templates and a pull request template under `.github/`.
- Renamed remaining notice/governance text from the old project name to BlockForge Alpha.

## 0.2.5-godot - 2026-09-08

- Verified the renamed `BlockForge_prject` Godot folder.
- Updated main project metadata to BlockForge Alpha.
- Added a Godot-focused `.gitignore`.
- Ignored old browser prototype leftovers so they are not accidentally published with the Godot project.
- Updated the local save path to `blockforge_alpha_world.json`.

## 0.2.4-godot - 2026-09-07

- Split reusable code out of `src/main.gd` into focused files under `src/ui`, `src/systems`, `src/utils` and `src/world`.
- Added `PatchNotesPanel`, `AudioLibrary`, `TextureCache`, `BlockMaterialFactory` and `SelectionOutline` scripts.
- Removed old unused helper code from `main.gd`.
- Added architecture documentation for future contributors.

## 0.2.3-godot - 2026-09-07

- Added an in-game Patch Notes menu available from the title screen and the Escape pause menu.
- Added editable `assets/patch_notes.json` so update notes can be changed without rebuilding archives.
- Added structured update entries with title, description, additions, modifications and removals.

## 0.2.2-godot - 2026-09-07

- Added 16 x 16 chunked mesh rebuilding so block edits no longer rebuild the entire world.
- Added PNG texture caching during material setup.
- Reduced HUD update work by refreshing debug text on a short timer instead of every physics frame.
- Kept shadows disabled and documented the choice as a pre-alpha performance setting.

## 0.2.1-godot - 2026-09-07

- Disabled back-face culling on block materials so grass/ground faces no longer disappear from the player view.
- Disabled temporary strip clouds because they made the sky look broken.
- Made the default seed deterministic for easier debugging and a consistent clean spawn.
- Flattened the playable start area further and softened terrain changes around it.
- Added `JOUER.bat` so the desktop build can be launched directly from the project folder.

## 0.2.0-godot - 2026-09-07

- Added native Godot desktop pre-alpha.
- Added procedural voxel world, block breaking and placement.
- Added editable PNG textures and WAV chiptune assets.
- Added GitHub-ready community files.
- Replaced full-cube rendering with visible-face voxel meshes for smoother performance.
- Fixed selection outline rendering as a filled dark cube.
- Reduced transparent/internal faces and improved spawn placement.
