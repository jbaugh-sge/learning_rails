# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_learning_rails_session',
  :secret      => '286a2a76068ec17c63462ecf9304844b1be1c040afbe8cc2ad4e7d6766cfd09d5aa4b6666d41dd9faa3fc9e7f3c439f912b8e2112b91da02686928a3907faf69'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
