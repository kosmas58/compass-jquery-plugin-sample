# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jqgrid-demo_session',
  :secret      => '7d214c7595c4886f75463d8d5a19d9218affe5723e8cf7375b6f9eeceb6f359e935e3403b434fa8517dc5921eb3abc788cac6aca62f7e6100ff5e4ee827df63d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
