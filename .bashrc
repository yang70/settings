
alias vim='/usr/local/Cellar/vim'
alias ruby='/usr/local/Cellar/ruby'

# function serve {
#   port="${1:-4000}"
#   ruby -r webrick -e "s = WEBrick::HTTPServer.new(:Port => $port, :DocumentRoot => Dir.pwd); trap('INT') { s.shutdown }; s.start"
#   }

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# added by travis gem
[ -f /Users/matthewyang/.travis/travis.sh ] && source /Users/matthewyang/.travis/travis.sh
