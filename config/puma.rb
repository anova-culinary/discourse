if ENV['RAILS_ENV']=='production'

  # First, you need to change these below to your situation.
  APP_ROOT = '/home/anova'
  num_workers = ENV["NUM_WEBS"].to_i > 0 ? ENV["NUM_WEBS"].to_i : 4

  # Second, you can choose how many threads that you are going to run at same time.
  workers "#{num_workers}"
  threads 8,8

  # Unless you know what you are changing, do not change them.
  bind  "tcp://0.0.0.0:9292"
  pidfile "/tmp/puma.pid"
  state_path "/tmp/puma.state"
  daemonize false
  preload_app!

end
