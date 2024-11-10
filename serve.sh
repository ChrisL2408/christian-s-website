#!/bin/bash

# Source shell config first to ensure PATH is set
source ~/.zshrc 2>/dev/null

# Only install if brew command isn't found
if ! command -v brew >/dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    if [[ $(uname -m) == 'arm64' ]]; then
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
    source ~/.zshrc
fi

# Only install Ruby if version < 3.0
if ! command -v ruby >/dev/null || [ "$(ruby -e 'puts RUBY_VERSION >= "3.0"')" = "false" ]; then
    echo "Installing/updating Ruby via rbenv..."
    brew install rbenv
    eval "$(rbenv init -)"
    rbenv install 3.2.2
    rbenv global 3.2.2
    # Add rbenv to shell
    echo 'eval "$(rbenv init -)"' >> ~/.zshrc
    eval "$(rbenv init -)"
fi

# Check if bundler is installed
if ! command -v bundle >/dev/null; then
    echo "Installing bundler..."
    gem install bundler
fi

# Check if jekyll is installed
if ! command -v jekyll >/dev/null; then
    echo "Installing jekyll..."
    gem install jekyll
fi

# Install dependencies if needed
bundle install

# Start the server
bundle exec jekyll serve --port 4003