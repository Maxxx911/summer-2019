require_relative '../lib/rating_service'
require_relative '../lib/password_service'

class ApplicationController < Sinatra::Base
  set :views, File.expand_path(File.join(__FILE__, '../../views'))
  helpers Sinatra::Cookies
  register Sinatra::StrongParams
  include Pagy::Backend
  include Pagy::Frontend
end
