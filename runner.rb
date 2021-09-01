def create_workspace
  system('mkdir -p ~/workspace')
end

def install_homebrew
  system('/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"')
end

def on_success(message)
  p message if $?.success?
end

create_workspace
on_success "created_workspace"

install_homebrew
on_success "installed homebrew"
