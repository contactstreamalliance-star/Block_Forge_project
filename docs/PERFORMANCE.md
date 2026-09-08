# Performance

The pre-alpha renders grouped visible faces instead of complete cubes for every visible block.

This reduces the number of triangles drawn and avoids many hidden faces. It also keeps texture UVs simple and easier to debug.

Transparent blocks no longer render internal faces against identical neighboring blocks, which reduces visual artifacts and avoids large stacks of blended surfaces.

## Optimization Pass

The world mesh is split into 16 x 16 block chunks. Breaking or placing one block rebuilds only the changed chunk and its four direct neighboring chunks.

Texture loading is cached, so repeated faces using the same PNG reuse the same texture resource instead of decoding the file again.

The HUD refreshes at a lightweight interval instead of rebuilding its text every physics frame.

Block shadows are disabled for now. This is intentional for the pre-alpha because the blocky scene already has clear face lighting, and full shadow casting was too expensive for the current renderer.

Editable performance knobs:

- `assets/worldgen.json` -> `size`
- `assets/worldgen.json` -> `maxHeight`
- `F` in game toggles denser or lighter fog

If a machine struggles, lower `size` first.
