# Fish Shell Configuration

## Overview

This repository contains my personal configuration for the Fish shell. It includes various utility functions, custom prompts, and settings to make my terminal more productive and visually appealing.

## Features

- **SSH Agent Management**: Automatic initialization and management of ssh-agent.
- **Custom Prompts**: Personalized prompt using [Starship.rs](https://starship.rs).
- **Utility Functions**: Collection of custom utility functions for git, system operations, and more.
- **Cross-Platform**: Support for Manjaro Linux, macOS, and Ubuntu.

## Prerequisites

- Fish shell (>=3.x)
- [Starship.rs](https://starship.rs)
- [Fisher](https://github.com/jorgebucaran/fisher) (optional, for plugin management)

## Installation

1. Clone this repository:
   \`\`\`
   git clone https://github.com/heimann/fish.git ~/.config/fish
   \`\`\`
2. Open a new Fish shell session, or run `source ~/.config/fish/config.fish`

## Usage

Just navigate using your terminal as usual, the custom settings and functions will be automatically available.

### SSH Agent

Your SSH keys are automatically managed. Run `ssh-add -l` to list the currently loaded keys.

### Custom Functions

- `gac`: A shortcut for git add and commit.
- `gpr`: Create a GitHub pull request, etc.
- `vf`: Browse files in a directory and open them with neovim

## Contributing

This is a personal project and I'm not currently looking for contributors. However, if you find any issues or have suggestions, feel free to open an issue.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE)
