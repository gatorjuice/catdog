require 'daemons'

Daemons.run('catdog.rb', log_output: true)
