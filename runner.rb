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


create_workspace
on_success "created_workspace"

install_homebrew
on_success "installed homebrew" 
