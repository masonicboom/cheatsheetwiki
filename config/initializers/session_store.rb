# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_csw_session',
  :secret      => '9ef6fb5c7066f08c4286a3b9da093fd4dd05027be2dd1089d51f665391ded109d7a2223b06353cf2d54da2627757624e39383a87ac4dd5e258a9e27416d466af'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
