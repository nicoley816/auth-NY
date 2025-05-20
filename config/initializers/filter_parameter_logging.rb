# Be sure to restart your server when you modify this file.

# Configure sensitive parameters which will be filtered from the log file.
Rails.application.config.filter_parameters += [

  :passw, # TODO: comment back in to hide params beginning with "passw" anything that comes in with passw, will get hidden in server log
  :secret,
  :token,
  :_key,
  :crypt,
  :salt,
  :certificate,
  :otp,
  :ssn
]
