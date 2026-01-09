# STL Layouts - Dynamic Document Generation System

## Overview

STL Layouts is a modern .NET 8 WPF MVVM application that replaces legacy CERM layout systems with a flexible, rule-based document generation platform.

## Development Workflow

Governance entry points:
- `.github/copilot-instructions.md`
- `CONTRIBUTING.md`
- `SECURITY.md`
- `SUPPORT.md`
- `CODE_OF_CONDUCT.md`
- `TODO.md`
- `CHANGELOG.md`

Important: builds/runs must use repo scripts (see `.github/copilot-instructions.md`).

## Quick Start

```powershell
# Build the solution
.\scripts\build.ps1

# Run the application (will create database and seed data)
.\scripts\run-debug.ps1
```

Logs are written under `logs/`.

## Documentation

- [Architecture Overview](ARCHITECTURE.md)
- [Requirements Specification](REQUIREMENTS.md)
- [Design Document](DESIGN.md)
- [Docs Index](docs/README.md)
