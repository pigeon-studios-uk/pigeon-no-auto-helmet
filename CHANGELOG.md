# Changelog

All notable changes to Pigeon No Auto Helmet are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html):

- **Major** versions can need changes to your configuration or other resources. Read the **Upgrade notes**.
- **Minor** versions add features without breaking existing setups.
- **Patch** versions fix bugs only.

## [Unreleased]

## [1.0.0] - 2026-11-03

First release.

### Highlights

- No automatic helmets on bikes
- No automatic flight helmets in aircraft
- Players' own helmets are left alone

### Added

- GTA's automatic helmets turned off for players on motorbikes, bicycles and quads (`Config.Bikes`) and in helicopters and planes (`Config.Aircraft`), using GTA's own ped config flags, so the helmet is never put on.
- Applied again on every respawn and every `Config.ReapplySeconds`, and turned back off when the resource stops.
- Update checker from the Pigeon Studios version registry.

[Unreleased]: https://github.com/pigeon-studios-uk/pigeon-no-auto-helmet/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/pigeon-studios-uk/pigeon-no-auto-helmet/releases/tag/v1.0.0
