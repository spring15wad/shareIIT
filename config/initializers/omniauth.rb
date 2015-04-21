Rails.application.config.middleware.use OmniAuth::Builder do
  # Keep keys out of your Git repository! This uses environment variables from your
  # shell's configuration file (e.g., .zshrc if you're using zsh). You'll need lines

  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']
end
