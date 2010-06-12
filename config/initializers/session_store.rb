# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_vcs-edu_session',
  :secret      => 'b09597a0094450e2913366d824e7122c3ab9fde6aa7abdc1c895b14995909bc3b2064b8eb698c89974c6305b4098b2435cbd78c9968368b71f9ae70cab4ca8b8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
