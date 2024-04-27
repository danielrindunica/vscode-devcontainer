# vscode-devcontainer

![GitHub last commit](https://img.shields.io/github/last-commit/danielrindunica/vscode-devcontainer)
[![GitHub Actions](https://github.com/danielrindunica/vscode-devcontainer/workflows/CI/badge.svg)](https://github.com/danielrindunica/vscode-devcontainer/actions)
![GitHub issues](https://img.shields.io/github/issues-raw/danielrindunica/vscode-devcontainer)
![GitHub pull requests](https://img.shields.io/github/issues-pr/danielrindunica/vscode-devcontainer)
![GitHub](https://img.shields.io/github/license/danielrindunica/vscode-devcontainer)

This repository contains a Visual Studio Code (VSCode) devcontainer setup to streamline the development environment setup process. It's particularly useful for standardizing development environments across different machines and for ensuring consistency among team members.

## Features

- **Docker-based Development**: Utilizes Docker containers to encapsulate development environments, ensuring consistency across different machines and platforms.
- **Configuration as Code**: Devcontainer configuration is defined in a `.devcontainer` directory, allowing easy versioning and sharing of development environment setups.
- **Extension Support**: Supports VSCode extensions, enabling developers to customize their development environment to suit their needs.
- **Language Agnostic**: Can be used for various programming languages and frameworks, thanks to its flexible configuration.

## Getting Started

To get started with using this devcontainer setup, follow these steps:

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/danielrindunica/vscode-devcontainer.git

   ```

1. Open the cloned repository in Visual Studio Code.
1. Install the [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension if you haven't already.
1. Reopen the cloned repository in a container by clicking on the green icon in the bottom-left corner of VSCode (or by pressing `Ctrl+Shift+P` and selecting "Remote-Containers: Reopen in Container").
1. Your development environment will be set up automatically based on the configuration defined in `.devcontainer`.

## Contributing

Contributions are welcome! If you have any ideas, suggestions, or bug fixes, feel free to open an issue or submit a pull request. Please make sure to follow the [contribution guidelines](CONTRIBUTING.md).

## License

This project is licensed under the [Apache License](LICENSE).
