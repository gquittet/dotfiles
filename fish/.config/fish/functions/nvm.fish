function nvm
  if test -e $NVM_DIR/nvm.sh
    bass source $NVM_DIR/nvm.sh --no-use ';' nvm $argv
  else
    echo 'Please install nvm first with "brew install nvm"'
  end
end
