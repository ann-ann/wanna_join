Rails.application.config.middleware.use OmniAuth::Builder do
  # just for testing purposes secret keys are placed directly in initializer. it have to be moved to .env
  provider :facebook, '150245305382881', 'cfdd39134be4fdef6781fbd664c1480a'
end
