# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_threads_session',
  :secret      => '51d6075686de0db27fa68255952afa1fc9352accb85c2def1686532ff3d5cab28b1298cec87e78704ff1b4353ef50a5b39f0835202f82cd65dd16c11d940fb3a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
