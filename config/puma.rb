bind "unix://#{Dir.pwd}/tmp/sockets/puma.sock"
pidfile "#{Dir.pwd}/tmp/pids/puma.pid"
state_path "#{Dir.pwd}/tmp/pids/puma.state"
activate_control_app