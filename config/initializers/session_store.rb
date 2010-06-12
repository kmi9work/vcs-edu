# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_clean_vcs-edu_session',
  :secret      => '810be85464d484a1fa348e4a81971b728e484a5a3dc2257b67cce8439b8d30925a96c14c47ea01fe769866916f9421997de544ff86bc1af55a06ba7721b89473'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
