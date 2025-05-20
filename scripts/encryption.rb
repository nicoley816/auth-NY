# to encrypt a secret, use BCrypt::Password.create(secret)
# to test a secret, use BCrypt::Password.new(encrypted) == secret
# run this file using rails runner scripts/encryption.rb

# TODO:
# 1. encrypt a secret and puts encrypted string
secret = "puppies"
encrypted_secret = BCrypt::Password.create(secret)
puts encrypted_secret

# 2. prepare encrypted string for testing
user_submitted_password = "dogs"
result = BCrypt::Password.new(encrypted_secret) == user_submitted_password #the value you give it is the actual encrypted value
puts result
#checks if the encrypted password is the same password, should be false

# 3. test secret against prepared encrypted string

