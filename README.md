Lumos
---

First-time Workspace setup for Macbook.

### Assumptions
- Ruby is already installed on the system and available
- xcode or respective dev tools are already installed.

So, what happens when you run `ruby runner.rb`
- Creates workspace dir
- Install homebrew
- And then all the magic...

### Whats next?
- Clone popular repos
- vpn setup
- docker

### Manual Steps
- Install xcode command line tools using `xcode-select --install` & verify using `xcode-select -p`
- Hotkey setup for iterm2
- Theme selection for iterm2, transparency, and resume dir from last session
- Use left option as Esc+
- Adjust repeat rate and delay rate for keyboard in systems preferences
- Open Rectangle, and use spectalular settings
- Open Kap, and be ready to record your screen for videos, and gifs
- Install flycut, amphetamine from mac app store
- create ssh key pair using `ssh-keygen` and update the public key in github, gitlab, etc.
- add git brew rbenv ruby gem rails bundler to ~/.zshrc plugins section
- source ~/.zshrc
- brew install rbenv, rbenv-bundler, ruby-build
- set eval "$(rbenv init - zsh)" in ~/.zshrc and source again
- Install golang from https://golang.org/doc/install
- Install java using `brew install openjdk` and add openjdk to PATH
- Install clojure using `brew install clojure/tools/clojure`
- Add `set clipboard=unnamed` to ~/.vimrc

### Gotchas
- defaults delete com.googlecode.iterm2 got me out of iterm crashes because of invalid profile
