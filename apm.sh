#!/usr/bin/env bash

# Update any already-installed packages.
apm update

# Install preferred packages.
apm install atom-beautify
apm install linter
apm install minimap
apm install pigments

# Install language-specefic syntax highlighting.
apm install language-docker # Docker

# Install language-specefic linters.
apm install linter-flake8 # Python
apm install linter-shellcheck # Bash

# Deletes all packages not referenced as a dependencies.
apm clean
