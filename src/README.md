# Source Code Guide

`main.gd` coordinates the playable pre-alpha. Keep it focused on connecting systems together.

- `ui/`: menus and interface panels.
- `systems/`: reusable game systems such as audio, settings and future save/network layers.
- `utils/`: generic helpers that can be reused anywhere.
- `world/`: voxel-specific helpers for block materials, selection, terrain math and future chunk/world code.

When adding a feature, prefer a small new file in the matching folder instead of growing `main.gd`.
