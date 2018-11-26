Mailjet.configure do |config|
  Dotenv.load
  config.api_key = ENV['MAILJET_API_KEY']
  config.secret_key = ENV['MAILJET_SECRET_KEY']
  config.default_from = 'thpstudent@gmail.com'
end