# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_compass-jquery-plugin-sample_session',
  :secret      => '48b2f798352f82eaaa6738fdc2fea36fa81920736fc13ffbcc7c84cb6bcd3206f3f34425347b077a203be6ece4aba27c5f55913834c620e51c9e500772cb9097'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
