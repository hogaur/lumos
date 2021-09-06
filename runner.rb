def on_success(message)
  p message if $?.success?
end

def create_workspace
  system('mkdir -p ~/workspace')
end

def install_homebrew
  system('which brew')
  if $?.success?
    p "homebrew exists"
    return
  end
  system('/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"')
end

def install_prezto
  system('git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"')
end

def install_iterm
  system('brew install iterm2 rectangle kap ')
end

def setup_vim
  system('curl -L https://bit.ly/janus-bootstrap | bash')
end

def setup_emacs
  system('brew install emacs')
end

def setup_gcloud
  system('brew install --cask google-cloud-sdk')
end

create_workspace
on_success "created_workspace"

install_homebrew
on_success "installed homebrew"

install_prezto
on_success "prezto installed"

install_iterm
on_success 'installed iterm'

setup_vim
on_success 'installed janus for vim'

setup_emacs
on_success 'installed emacs'

setup_gcloud
on_success 'installed gcloud'
