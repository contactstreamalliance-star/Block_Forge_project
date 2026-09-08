# Architecture

BlockForge Alpha is intentionally simple for early contributors. Most gameplay data lives in editable JSON and PNG/WAV files, while Godot scripts are grouped by responsibility.

## Main Flow

`src/main.gd` coordinates the game. It starts Godot nodes, loads data, creates the world, handles player input, updates the HUD, and asks smaller modules to do focused jobs.

Avoid putting every new feature in `main.gd`. If a feature can live on its own, create or extend a file in one of the folders below.

## Folders

- `src/ui/`: menu screens, HUD panels, patch notes, future inventory/crafting screens.
- `src/systems/`: reusable systems such as audio, saving, local settings and future mod support.
- `src/utils/`: small helpers, caches, file loaders and generic utilities.
- `src/world/`: voxel rendering, block materials, world generation helpers, chunk helpers and selection visuals.

## Editable Data

- `assets/blocks.json`: add or edit blocks, names, solidity and texture paths.
- `assets/worldgen.json`: tune world size, seed, terrain mode and spawn settings.
- `assets/patch_notes.json`: add public update notes shown in game.
- `assets/textures/blocks/`: replace PNG textures.
- `assets/audio/`: replace WAV sounds and music.

## Current Scripts

- `src/main.gd`: game coordinator, player movement, world dictionary and chunk rebuild calls.
- `src/ui/patch_notes_panel.gd`: builds and displays the Patch Notes screen.
- `src/systems/audio_library.gd`: loads and plays WAV sounds/music.
- `src/utils/texture_cache.gd`: loads PNG textures once and reuses them.
- `src/world/block_material_factory.gd`: creates Godot materials for block definitions.
- `src/world/selection_outline.gd`: creates the wireframe outline for the targeted block.
- `src/world/voxel_math.gd`: contains voxel math, noise and face helper functions.

## Project Direction

BlockForge Alpha must stay a local Minecraft-like voxel sandbox with open files, moddable data and optional community extensions. Do not add forced online mode, official server lists, hidden connection targets, account systems or always-online requirements.
