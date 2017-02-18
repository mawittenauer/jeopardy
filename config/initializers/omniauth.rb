OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1111103459019265', '825b984a028215f330b30adfd5107526'
end
